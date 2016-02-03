package com.tanmay.LoginWebApp;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.*;

@RunWith(Cucumber.class)
@CucumberOptions(tags = {"@first, @second"})
public class RunCukesTest {
}