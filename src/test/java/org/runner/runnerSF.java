package org.runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
		
		features = {"src\\test\\resources\\SfCucumFeatures\\LoginSF.feature"},
		glue = {"org.cucumber.salesforce.login"},
		dryRun = true
		
		)

public class runnerSF extends AbstractTestNGCucumberTests{

}
