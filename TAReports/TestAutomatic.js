'use strict';

var projectNameChart = dc.pieChart('#ProjectName-chart');
var applicationNameChart = dc.rowChart('#ApplicationName-chart');

var relaseNameChart = dc.pieChart('#RelasetName-chart');
var releaseStatusChart = dc.rowChart('#ReleaseStatus-chart');
var sprintNoChart = dc.pieChart('#SprintNo-chart');
var sprintStoryIDChart = dc.pieChart('#SprintStoryID-chart');
var sprintStoryNameChart = dc.rowChart('#SprintStoryName-chart');

var sprintTestCaseIDChart = dc.pieChart('#SprintTestCaseIDChart-chart');
var testSetIDChart = dc.pieChart('#TestSetID-chart');
var testSetNameChart = dc.rowChart('#TestSetName-chart');
var testSetTypeChart = dc.pieChart('#TestSetType-chart');
var testSetStatusChart = dc.rowChart('#TestSetStatus-chart');

var testSetStepIDChart = dc.pieChart('#TestSetStepID-chart');
var testStepNameChart = dc.rowChart('#TestStepName-chart');
var testStepStatusChart = dc.rowChart('#TestStepStatus-chart');
					
var defectStepTestIDChart = dc.pieChart('#DefectStepTestID-chart');
var defectIDChart = dc.pieChart('#DefectID-chart');
var defectSummaryChart = dc.rowChart('#DefectSummary-chart');
var defectSeverityChart = dc.rowChart('#DefectSeverity-chart');
var defectStatusChart = dc.rowChart('#DefectStatus-chart');
var defectPhaseChart = dc.pieChart('#DefectPhase-chart');
var defectRootCauseChart = dc.rowChart('#DefectRootCause-chart');

//Dc Charts
var gainOrLossChart = dc.pieChart('#gain-loss-chart');
var fluctuationChart = dc.barChart('#fluctuation-chart');
var quarterChart = dc.pieChart('#quarter-chart');
var dayOfWeekChart = dc.rowChart('#day-of-week-chart');
var moveChart = dc.lineChart('#monthly-move-chart');
var volumeChart = dc.barChart('#monthly-volume-chart');
var yearlyBubbleChart = dc.bubbleChart('#yearly-bubble-chart');
var taCount = dc.dataCount('.dc-data-count');
var taTable = dc.dataTable('.dc-data-table');


d3.csv('TAReports/TestAutomatic.csv', function (data) {
    // Since its a csv file we need to format the data a bit.
    var dateFormat = d3.time.format('%d-%b-%y');
    var numberFormat = d3.format('.2f');

    data.forEach(function (d) {
        d.dd = dateFormat.parse(d.Release_Date);
        d.month = d3.time.month(d.dd); // pre-calculate month for better performance
        d.close = +d.close; // coerce to number
        d.open = +d.open;
    });

    var ndx = crossfilter(data);
    var all = ndx.groupAll();

    var yearlyDimension = ndx.dimension(function (d) {
        return d3.time.year(d.dd).getFullYear();
    });

    var yearlyPerformanceGroup = yearlyDimension.group().reduce(
        /* callback for when data is added to the current filter results */
        function (p, v) {
            ++p.count;
            p.absGain += v.close - v.open;
            p.fluctuation += Math.abs(v.close - v.open);
            p.sumIndex += (v.open + v.close) / 2;
            p.avgIndex = p.sumIndex / p.count;
            p.percentageGain = p.avgIndex ? (p.absGain / p.avgIndex) * 100 : 0;
            p.fluctuationPercentage = p.avgIndex ? (p.fluctuation / p.avgIndex) * 100 : 0;
            return p;
        },
        /* callback for when data is removed from the current filter results */
        function (p, v) {
            --p.count;
            p.absGain -= v.close - v.open;
            p.fluctuation -= Math.abs(v.close - v.open);
            p.sumIndex -= (v.open + v.close) / 2;
            p.avgIndex = p.count ? p.sumIndex / p.count : 0;
            p.percentageGain = p.avgIndex ? (p.absGain / p.avgIndex) * 100 : 0;
            p.fluctuationPercentage = p.avgIndex ? (p.fluctuation / p.avgIndex) * 100 : 0;
            return p;
        },
        /* initialize p */
        function () {
            return {
                count: 0,
                absGain: 0,
                fluctuation: 0,
                fluctuationPercentage: 0,
                sumIndex: 0,
                avgIndex: 0,
                percentageGain: 0
            };
        }
    );

    // Dimension by full date
    var dateDimension = ndx.dimension(function (d) {
        return d.dd;
    });

    // Dimension by month
    var moveMonths = ndx.dimension(function (d) {
        return d.month;
    });
    // Group by total movement within month
    var monthlyMoveGroup = moveMonths.group().reduceSum(function (d) {
        return Math.abs(d.close - d.open);
    });
    // Group by total volume within move, and scale down result
    var volumeByMonthGroup = moveMonths.group().reduceSum(function (d) {
        return d.volume / 500000;
    });
    var indexAvgByMonthGroup = moveMonths.group().reduce(
        function (p, v) {
            ++p.days;
            p.total += (v.open + v.close) / 2;
            p.avg = Math.round(p.total / p.days);
            return p;
        },
        function (p, v) {
            --p.days;
            p.total -= (v.open + v.close) / 2;
            p.avg = p.days ? Math.round(p.total / p.days) : 0;
            return p;
        },
        function () {
            return {days: 0, total: 0, avg: 0};
        }
    );
    
    //TestAutomatic Charts
    
    //ProjectName Chart
    var projectName = ndx.dimension(function (d) {
        return d.Project_Name;
    });
    var projectNameGroup = projectName.group();
    
    //ApplicationName Chart    
    var applicationName = ndx.dimension(function (d) {
        return d.Application_Name;
    });
    var applicationNameGroup = applicationName.group();
    
    //ReleaseName Chart
    var releaseName = ndx.dimension(function (d) {
        return d.Release_Name;
    });
    var releaseNameGroup = releaseName.group();
    
    //ReleaseStatus Chart    
    var releaseStatus = ndx.dimension(function (d) {
        return d.Release_Status;
    });
    var releaseStatusGroup = releaseStatus.group();
    
    //SprintNo Chart
    var sprintNo = ndx.dimension(function (d) {
        return d.Release_Sprint_No;
    });
    var sprintNoGroup = sprintNo.group();
    
    //SprintStoryID Chart    
    var sprintStoryID = ndx.dimension(function (d) {
        return d.Sprint_Story_ID;
    });
    var sprintStoryIDGroup = sprintStoryID.group();
    
    //SprintStoryName Chart
    
    var sprintStoryName = ndx.dimension(function (d) {
        return d.Sprint_Story_Name;
    });
    var sprintStoryNameGroup = sprintStoryName.group();
    
    
    //TestCaseID Chart
    var testcaseID = ndx.dimension(function (d) {
        return d.Sprint_TestCase_ID;
    });
    var testcaseIDGroup = testcaseID.group();
    
    //TestSetID Chart    
    var testSetID = ndx.dimension(function (d) {
        return d.Test_Set_ID;
    });
    var testSetIDGroup = testSetID.group();
    
    //TestSetName Chart
    var testSetName = ndx.dimension(function (d) {
        return d.Test_Set_Name;
    });
    var testSetNameGroup = testSetName.group();
    
    //TestSetType Chart    
    var testSetType = ndx.dimension(function (d) {
        return d.Test_Set_Type;
    });
    var testSetTypeGroup = testSetType.group();
    
    //TestSetStatus Chart    
    var testSetStatus = ndx.dimension(function (d) {
        return d.Test_Set_Status;
    });
    var testSetStatusGroup = testSetStatus.group();
    
    
    //TestSetStepID Chart
    var testStepID = ndx.dimension(function (d) {
        return d.TestSet_Step_ID;
    });
    var testStepIDGroup = testStepID.group();
    
    //TestSetStepName Chart    
    var testStepName = ndx.dimension(function (d) {
        return d.Test_Step_Name;
    });
    var testStepNameGroup = testStepName.group();
    
    //TestSetStepStatus Chart    
    var testStepStatus = ndx.dimension(function (d) {
        return d.Test_Step_Status;
    });
    var testStepStatusGroup = testStepStatus.group();
    
    //DefectStepTestID Chart
    var defetcStepID = ndx.dimension(function (d) {
        return d.Defect_Step_Test_ID;
    });
    var defetcStepIDGroup = defetcStepID.group();
    
    //Defect_ID Chart    
    var defectID = ndx.dimension(function (d) {
        return d.Defect_ID;
    });
    var defectIDGroup = defectID.group();
    
    //DefectSummary Chart
    var defectSummary = ndx.dimension(function (d) {
        return d.Defect_Summary;
    });
    var defectSummaryGroup = defectSummary.group();
    
    //DefectSeverity Chart    
    var defectSeverity = ndx.dimension(function (d) {
        return d.Defect_Severity;
    });
    var defectSeverityGroup = defectSeverity.group();
    
    //DefectStatus Chart
    var defectStatus = ndx.dimension(function (d) {
        return d.Defect_Status;
    });
    var defectStatusGroup = defectStatus.group();
    
    //DefectPhase Chart    
    var defectPhase = ndx.dimension(function (d) {
        return d.Defect_Phase;
    });
    var defectPhaseGroup = defectPhase.group();
    
    //DefectRootCause Chart
    
    var defectRootCause = ndx.dimension(function (d) {
        return d.Defect_Root_Cause;
    });
    var defectRootCauseGroup = defectRootCause.group();

    
    // Create categorical dimension
    var gainOrLoss = ndx.dimension(function (d) {
        return d.open > d.close ? 'Loss' : 'Gain';
    });
    
    // Produce counts records in the dimension
    var gainOrLossGroup = gainOrLoss.group();

    // Determine a histogram of percent changes
    var fluctuation = ndx.dimension(function (d) {
        return Math.round((d.close - d.open) / d.open * 100);
    });
    var fluctuationGroup = fluctuation.group();

    // Summarize volume by quarter
    var quarter = ndx.dimension(function (d) {
        var month = d.dd.getMonth();
        if (month <= 2) {
            return 'Q1';
        } else if (month > 2 && month <= 5) {
            return 'Q2';
        } else if (month > 5 && month <= 8) {
            return 'Q3';
        } else {
            return 'Q4';
        }
    });
    var quarterGroup = quarter.group().reduceSum(function (d) {
        return d.volume;
    });

    // Counts per weekday
    var dayOfWeek = ndx.dimension(function (d) {
        var day = d.dd.getDay();
        var name = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        return day + '.' + name[day];
    });
    var dayOfWeekGroup = dayOfWeek.group();

    
    //Chart Creation   
    
    //ProjectName
    projectNameChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(2)
    .dimension(projectName)
    .group(projectNameGroup)
    
    //ApplicationName
    applicationNameChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(applicationNameGroup)
        .dimension(applicationName)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //Release Name
    relaseNameChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(0.5)
    .dimension(releaseName)
    .group(releaseNameGroup)
    
    //Release Status
    releaseStatusChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(releaseStatusGroup)
        .dimension(releaseStatus)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //Sprint No
    sprintNoChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(60)
    .dimension(sprintNo)
    .group(sprintNoGroup)
    
    //Sprint StoryID
    sprintStoryIDChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(40)
    .dimension(sprintStoryID)
    .group(sprintStoryIDGroup)
    
        //Sprint StoryName
        sprintStoryNameChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(sprintStoryNameGroup)
        .dimension(sprintStoryName)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    

        //SprintTestCaseID Chart 
    sprintTestCaseIDChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(60)
    .dimension(testcaseID)
    .group(testcaseIDGroup)
    
        //TestSet Chart
    testSetIDChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(50)
    .dimension(testSetID)
    .group(testSetIDGroup)
    
        //TestSetName Chart
    testSetNameChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(testSetNameGroup)
        .dimension(testSetName)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    
        //TestSetType Chart
    testSetTypeChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(1)
    .dimension(testSetType)
    .group(testSetTypeGroup)
    
        //TestSetStatus Chart
    testSetStatusChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(testSetStatusGroup)
        .dimension(testSetStatus)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);

    //TestStep ID
    testSetStepIDChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(55)
    .dimension(testStepID)
    .group(testStepIDGroup)
    
    //TestStep Name
    testStepNameChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(testStepNameGroup)
        .dimension(testStepName)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //TestStep Status
    testStepStatusChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(testStepStatusGroup)
        .dimension(testStepStatus)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //DefectStepID
    defectStepTestIDChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(40)
    .dimension(defetcStepID)
    .group(defetcStepIDGroup)
    
        //Defect ID 
    defectIDChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(4)
    .dimension(defectID)
    .group(defectIDGroup)
    
    //Defect Summary
    defectSummaryChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(defectSummaryGroup)
        .dimension(defectSummary)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //Defect Severity
    defectSeverityChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(defectSeverityGroup)
        .dimension(defectSeverity)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    
    //Defect Status
    defectStatusChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(defectStatusGroup)
        .dimension(defectStatus)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //Defect Phase
    defectPhaseChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(9)
    .dimension(defectPhase)
    .group(defectPhaseGroup)
    
    //Defect Root Cause
    defectRootCauseChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(defectRootCauseGroup)
        .dimension(defectRootCause)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    //dc charts
    
    yearlyBubbleChart 
        .width(520)
        .height(220)
        .transitionDuration(1500)
        .margins({top: 10, right: 50, bottom: 30, left: 40})
        .dimension(yearlyDimension)
        .group(yearlyPerformanceGroup)
        .colors(colorbrewer.RdYlGn[9])
        .colorDomain([-500, 500])
        .colorAccessor(function (d) {
            return d.value.absGain;
        })
        .keyAccessor(function (p) {
            return p.value.absGain;
        })
        .valueAccessor(function (p) {
            return p.value.percentageGain;
        })
        .radiusValueAccessor(function (p) {
            return p.value.fluctuationPercentage;
        })
        .maxBubbleRelativeSize(0.3)
        .x(d3.scale.linear().domain([-2500, 2500]))
        .y(d3.scale.linear().domain([-100, 100]))
        .r(d3.scale.linear().domain([0, 4000]))
        .elasticY(true)
        .elasticX(true)
        .yAxisPadding(100)
        .xAxisPadding(500)
        .renderHorizontalGridLines(true)
        .renderVerticalGridLines(true)
        .xAxisLabel('No of Releases')
        .renderLabel(true)
        .label(function (p) {
            return p.key;
        })
        .renderTitle(true)
        .title(function (p) {
            return [
                p.key,
                'Index Gain: ' + numberFormat(p.value.absGain),
                'Index Gain in Percentage: ' + numberFormat(p.value.percentageGain) + '%',
                'Fluctuation / Index Ratio: ' + numberFormat(p.value.fluctuationPercentage) + '%'
            ].join('\n');
        })
        //#### Customize Axes
        .yAxis().tickFormat(function (v) {
            return v + '%';
        });

    // #### Pie/Donut Charts
    gainOrLossChart
        .width(180)
        .height(180)
        .radius(80)
        .dimension(gainOrLoss)
        .group(gainOrLossGroup)
        .label(function (d) {
            if (gainOrLossChart.hasFilter() && !gainOrLossChart.hasFilter(d.key)) {
                return d.key + '(0%)';
            }
            var label = d.key;
            if (all.value()) {
                label += '(' + Math.floor(d.value / all.value() * 100) + '%)';
            }
            return label;
        });

    quarterChart /* dc.pieChart('#quarter-chart', 'chartGroup') */
        .width(180)
        .height(180)
        .radius(80)
        .innerRadius(30)
        .dimension(quarter)
        .group(quarterGroup);

    //#### Row Chart
      dayOfWeekChart /* dc.rowChart('#day-of-week-chart', 'chartGroup') */
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(dayOfWeekGroup)
        .dimension(dayOfWeek)
        // Assign colors to each value in the x scale domain
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .label(function (d) {
            return d.key.split('.')[1];
        })
        // Title sets the row text
        .title(function (d) {
            return d.value;
        })
        .elasticX(true)
        .xAxis().ticks(4);

    //#### Bar Chart
    fluctuationChart /* dc.barChart('#volume-month-chart', 'chartGroup') */
        .width(420)
        .height(180)
        .margins({top: 10, right: 50, bottom: 30, left: 40})
        .dimension(fluctuation)
        .group(fluctuationGroup)
        .elasticY(true)
        // (_optional_) whether bar should be center to its x value. Not needed for ordinal chart, `default=false`
        .centerBar(true)
        // (_optional_) set gap between bars manually in px, `default=2`
        .gap(1)
        // (_optional_) set filter brush rounding
        .round(dc.round.floor)
        .alwaysUseRounding(true)
        .x(d3.scale.linear().domain([-25, 25]))
        .renderHorizontalGridLines(true)
        // Customize the filter displayed in the control span
        .filterPrinter(function (filters) {
            var filter = filters[0], s = '';
            s += numberFormat(filter[0]) + '% -> ' + numberFormat(filter[1]) + '%';
            return s;
        });

    // Customize axes
    fluctuationChart.xAxis().tickFormat(
        function (v) { return v + '%'; });
    fluctuationChart.yAxis().ticks(5);

    //#### Stacked Area Chart
    moveChart /* dc.lineChart('#monthly-move-chart', 'chartGroup') */
        .renderArea(true)
        .width(990)
        .height(200)
        .transitionDuration(1000)
        .margins({top: 30, right: 50, bottom: 25, left: 40})
        .dimension(moveMonths)
        .mouseZoomable(true)
    // Specify a "range chart" to link its brush extent with the zoom of the current "focus chart".
        .rangeChart(volumeChart)
        .x(d3.time.scale().domain([new Date(2015, 0, 1), new Date(2020, 12, 31)]))
        .round(d3.time.month.round)
        .xUnits(d3.time.months)
        .elasticY(true)
        .renderHorizontalGridLines(true)
    //##### Legend

        // Position the legend relative to the chart origin and specify items' height and separation.
        .legend(dc.legend().x(800).y(10).itemHeight(13).gap(5))
        .brushOn(false)
        // Add the base layer of the stack with group. The second parameter specifies a series name for use in the
        // legend.
        // The `.valueAccessor` will be used for the base layer
        .group(indexAvgByMonthGroup, 'Monthly Index Average')
        .valueAccessor(function (d) {
            return d.value.avg;
        })
        // Stack additional layers with `.stack`. The first paramenter is a new group.
        // The second parameter is the series name. The third is a value accessor.
        .stack(monthlyMoveGroup, 'Monthly Index Move', function (d) {
            return d.value;
        })
        // Title can be called by any stack layer.
        .title(function (d) {
            var value = d.value.avg ? d.value.avg : d.value;
            if (isNaN(value)) {
                value = 0;
            }
            return dateFormat(d.key) + '\n' + numberFormat(value);
        });

    //#### Range Chart
    volumeChart.width(990) /* dc.barChart('#monthly-volume-chart', 'chartGroup'); */
        .height(40)
        .margins({top: 0, right: 50, bottom: 20, left: 40})
        .dimension(moveMonths)
        .group(volumeByMonthGroup)
        .centerBar(true)
        .gap(1)
        .x(d3.time.scale().domain([new Date(2015, 0, 1), new Date(2020, 12, 31)]))
        .round(d3.time.month.round)
        .alwaysUseRounding(true)
        .xUnits(d3.time.months);

    //#### Data Count
    taCount 
        .dimension(ndx)
        .group(all)
        .html({
            some: '<strong>%filter-count</strong> selected out of <strong>%total-count</strong> records' +
                ' | <a href=\'javascript:dc.filterAll(); dc.renderAll();\'>Reset All</a>',
            all: 'All records selected. Please click on the graph to apply filters.'
        });

    //#### Data Table
    taTable
        .dimension(dateDimension)
        .group(function (d) {
            var format = d3.format('02d');
            return d.dd.getFullYear();
        })
        .size(10)
        .columns([
            'Release_Date',
            'Project_Name',
            'Application_Name',
            'Release_Name',
            'Release_Status',
            'Release_Sprint_No',
        ])
        .sortBy(function (d) {
            return d.dd;
        })
        .order(d3.ascending)
        .on('renderlet', function (table) {
            table.selectAll('.dc-table-group').classed('info', true);
        });

    
    dc.renderAll();
});

d3.selectAll('#version').text(dc.version);
d3.json('https://api.github.com/repos/dc-js/dc.js/releases/latest', function (error, latestRelease) {
d3.selectAll('#latest').text(latestRelease.tag_name);
});