'use strict';

var domainChart = dc.pieChart('#Domain-chart');
var fundingtypeChart = dc.rowChart('#FundingType-chart');
var programmeNameChart = dc.rowChart('#ProgrammeName-chart');
var workStreamChart = dc.pieChart('#WorkStream-chart');
var projectNameChart = dc.rowChart('#ProjectName-chart');


var costObjectChart = dc.pieChart('#CostObject-chart');
var resourceNameChart = dc.rowChart('#ResourceName-chart');
var gPNChart = dc.rowChart('#GPN-chart');
var outsourceVendorChart = dc.pieChart('#OutsourceVendor-chart');
var oFFONChart = dc.pieChart('#OFFON-chart');

var locationChart = dc.rowChart('#Location-chart');
var roleChart = dc.pieChart('#Role-chart');
var rankChart = dc.pieChart('#Rank-chart');
var roleSummaryChart = dc.rowChart('#RoleSummary-chart');


var outSourceDayRateChart = dc.rowChart('#OutSourceDayRate-chart');
var rateOverrideChart = dc.rowChart('#RateOverride-chart');
var annualCostChart = dc.rowChart('#AnnualCost-chart');
var totalCostChart = dc.rowChart('#TotalCost-chart');

var fTEUtilizationchart = dc.barChart('#FTEUtilization-chart');


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


d3.csv('TAReports/RM.csv', function (data) {
    // Since its a csv file we need to format the data a bit.
    var dateFormat = d3.time.format('%b-%y');
    var numberFormat = d3.format('.2f');

    data.forEach(function (d) {
        d.dd = dateFormat.parse(d.RM_Date);
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
    
    var domain = ndx.dimension(function (d) {
        return d.Domain;
    });
    var domainGroup = domain.group();
    
    var fundingtype = ndx.dimension(function (d) {
        return d.Funding_Type;
    });
    var fundingtypeGroup = fundingtype.group();
    
    var programmeName = ndx.dimension(function (d) {
        return d.Programme_Name;
    });
    var programmeNameGroup = programmeName.group();
    
    var workStream = ndx.dimension(function (d) {
        return d.WorkStream;
    });
    var workStreamGroup = workStream.group();
    
    var projectName = ndx.dimension(function (d) {
        return d.Project_Name;
    });
    var projectNameGroup = projectName.group();
    
    var costObject = ndx.dimension(function (d) {
        return d.Cost_Object;
    });
    var costObjectGroup = costObject.group();
    
    var resourceName = ndx.dimension(function (d) {
        return d.Resource_Name;
    });
    var resourceNameGroup = resourceName.group();
    
    var gPN = ndx.dimension(function (d) {
        return d.GPN;
    });
    var gPNGroup = gPN.group();
    
    var outsourceVendor = ndx.dimension(function (d) {
        return d.Outsource_Vendor;
    });
    var outsourceVendorGroup = outsourceVendor.group();
    
    var oFFON = ndx.dimension(function (d) {
        return d.OFF_ON;
    });
    var oFFONGroup = oFFON.group();
    
    var location = ndx.dimension(function (d) {
        return d.Location;
    });
    var locationGroup = location.group();
    
    var role = ndx.dimension(function (d) {
        return d.Role;
    });
    var roleGroup = role.group();
    
    var rank = ndx.dimension(function (d) {
        return d.Rank;
    });
    var rankGroup = rank.group();
    
    var roleSummary = ndx.dimension(function (d) {
        return d.Role_Summary;
    });
    var roleSummaryGroup = roleSummary.group();
    
    var outSourceDayRate = ndx.dimension(function (d) {
        return d.OutSource_DayRate;
    });
    var outSourceDayRateGroup = outSourceDayRate.group();
    
    var rateOverride = ndx.dimension(function (d) {
        return d.Rate_Override;
    });
    var rateOverrideGroup = rateOverride.group();
    
    var annualCost = ndx.dimension(function (d) {
        return d.Annual_Cost;
    });
    var annualCostGroup = annualCost.group();
    
    var totalCost = ndx.dimension(function (d) {
        return d.Total_Cost;
    });
    var totalCostGroup = totalCost.group();

    var fteUtlization = ndx.dimension(function(d) {
    	return d.RM_Date;
    });
    
    var fteUtlizationGroup = fteUtlization.group().reduceSum(function(d)
    {
    	return d.FTE_Utilization;
    });
    
    var fteUtlizationGroupDets = fteUtlization.group().reduceSum(function(d)
    {
    	return d.FTE_Utilization_dets;
    });


    
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
        return d.Total_Cost;
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
    domainChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(2)
    .dimension(domain)
    .group(domainGroup)
    
    //ApplicationName
    fundingtypeChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(fundingtypeGroup)
        .dimension(fundingtype)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    programmeNameChart 
    .width(180)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(programmeNameGroup)
    .dimension(programmeName)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    workStreamChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(50)
    .dimension(workStream)
    .group(workStreamGroup)
    
    projectNameChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(projectNameGroup)
        .dimension(projectName)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    
    costObjectChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(30)
    .dimension(costObject)
    .group(costObjectGroup)
    
        resourceNameChart 
        .width(180)
        .height(180)
        .margins({top: 20, left: 10, right: 10, bottom: 20})
        .group(resourceNameGroup)
        .dimension(resourceName)
        .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
        .elasticX(true)
        .xAxis().ticks(4);
    
    
    gPNChart 
    .width(180)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(gPNGroup)
    .dimension(gPN)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);

    
    outsourceVendorChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(35)
    .dimension(outsourceVendor)
    .group(outsourceVendorGroup)
    
   oFFONChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(60)
    .dimension(oFFON)
    .group(oFFONGroup)
    
      locationChart 
    .width(250)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(locationGroup)
    .dimension(location)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    roleChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(50)
    .dimension(role)
    .group(roleGroup)
    
      rankChart
    .width(180)
    .height(180)
    .radius(80)
    .innerRadius(62)
    .dimension(rank)
    .group(rankGroup)
    
      roleSummaryChart 
    .width(250)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(roleSummaryGroup)
    .dimension(roleSummary)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    outSourceDayRateChart 
    .width(180)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(outSourceDayRateGroup)
    .dimension(outSourceDayRate)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    rateOverrideChart 
    .width(180)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(rateOverrideGroup)
    .dimension(rateOverrideChart)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    annualCostChart 
    .width(180)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(annualCostGroup)
    .dimension(annualCost)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    totalCostChart 
    .width(180)
    .height(180)
    .margins({top: 20, left: 10, right: 10, bottom: 20})
    .group(totalCostGroup)
    .dimension(totalCost)
    .ordinalColors(['#3182bd', '#6baed6', '#9ecae1', '#c6dbef', '#dadaeb'])
    .elasticX(true)
    .xAxis().ticks(4);
    
    fTEUtilizationchart
    .width(550)
    .height(250)
    .x(d3.scale.ordinal())
    .xUnits(dc.units.ordinal)
    .brushOn(false)
    .xAxisLabel('Year')
    .yAxisLabel('Utilization')
    .dimension(fteUtlization)
    .barPadding(0.1)
    .outerPadding(1.0)
    .clipPadding(10)
    .group(fteUtlizationGroup, 'BDE workflow')
    .stack(fteUtlizationGroupDets, 'Abondened Property');
    
    //dc charts
    
    yearlyBubbleChart 
        .width(350)
        .height(220)
        .transitionDuration(1500)
        .margins({top: 10, right: 50, bottom: 30, left: 40})
        .dimension(yearlyDimension)
        .group(yearlyPerformanceGroup)
        .colors(colorbrewer.RdYlGn[9])
        .colorDomain([0, 500])
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
        .x(d3.scale.linear().domain([0, 2500]))
        .y(d3.scale.linear().domain([0, 100]))
        .r(d3.scale.linear().domain([0, 4000]))
        .elasticY(true)
        .elasticX(true)
        .yAxisPadding(100)
        .xAxisPadding(500)
        .renderHorizontalGridLines(true)
        .renderVerticalGridLines(true)
        .xAxisLabel('Yearly Stack')
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
    moveChart /* dc.lineChart('#-move-chart', 'chartGroup') */
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
        .group(indexAvgByMonthGroup, 'Avg Year')
        .valueAccessor(function (d) {
            return d.value.avg;
        })
        // Stack additional layers with `.stack`. The first paramenter is a new group.
        // The second parameter is the series name. The third is a value accessor.
        .stack(monthlyMoveGroup, 'Stack Year', function (d) {
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
        .size(12)
        .columns([
            'RM_Date',
            'Domain',
            'Funding_Type',
            'Project_Name',
            'Resource_Name',
            'Location',
            'Role',
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
