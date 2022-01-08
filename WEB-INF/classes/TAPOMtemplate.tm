
/**
 * @author TestAutomatic
 * Copyright 2016 TA http://www.TestAutomatic.com
 * Description: Test Automatic Test Script
 * @version : 0.1
 * @Param:
 * @Output:
 */

package com.testautomatic.controller;

import com.testautomatic.tasource;
import com.testautomatic.WebDriver;

public class Pagename {
	
	public static void main(String[] args) {
		
			try {
					TASource testautomatic = new TASource();
					WebDriver Driver = testautomatic.Initialize("Html" ,"http://www.google.com");
					