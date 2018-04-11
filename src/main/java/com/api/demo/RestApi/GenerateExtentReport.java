package com.api.demo.RestApi;

import java.io.File;



import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;



public class GenerateExtentReport extends RequestBuilder {
	public static ExtentReports extent;
	public static ExtentTest test;

	public static void startReport() {
		extent = new ExtentReports(System.getProperty("user.dir")
				+ "/test-output/MyReport.html", true);
		extent.addSystemInfo("HostName", "Gregory")
				.addSystemInfo("Environment", "QA")
				.addSystemInfo("UserName", "Gregory");
		extent.loadConfig(new File(System.getProperty("user.dir")
				+ "/extent-config.xml"));
	}

	public static void StartTest(String TestName) {
		test = extent.startTest(TestName);

	}

	public static void TestAssert(boolean flag, String logMessage) {
		if (flag) {
			test.log(LogStatus.PASS, logMessage);
		} else {
			test.log(LogStatus.FAIL, logMessage);
		}
		extent.flush();
	}
	
	public static void ReportFlush(){
		extent.flush();
	}
}
