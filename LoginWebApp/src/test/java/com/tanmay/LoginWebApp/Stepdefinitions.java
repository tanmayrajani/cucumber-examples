package com.tanmay.LoginWebApp;
import cucumber.api.PendingException;
import cucumber.api.java.en.*;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.*;
import static com.codeborne.selenide.Condition.*;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

public class Stepdefinitions {
    @Given("^the app is running$")
    public void theAppIsRunning() throws Throwable {
    }

    @When("^I visit the app page$")
    public void iVisitTheAppPage() throws Throwable {
//        $(By.name("uname")).setValue("johny");
//        $(By.name("password")).setValue("johny");
        open("http://localhost:8081/index.jsp");
    }

    @Then("^page title should be \"([^\"]*)\"$")
    public void pageTitleShouldBe(String arg0) throws Throwable {
        assertThat(title().toString(), is(arg0));
    }
}
