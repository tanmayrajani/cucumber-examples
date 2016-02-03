package com.tanmay.mdedtester;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class StepDefinitions {
    String url = null, titleShuoldBe = "Markdown-editor";
    WebDriver driver = null;


    @Given("^I have the url (.*)$")
    public void haveUrl(String url) throws Throwable {
        this.url = url;
        driver = new FirefoxDriver();
    }

    @When("^I visit the editor$")
    public void visitEditor() throws Throwable {
        driver.get(this.url);
    }

    @Then("^The title should be (.*)$")
    public void the_title_should_be_Markdown_editor(String originalTitle) throws Throwable {
        assertThat(originalTitle, is(titleShuoldBe));
    }
}