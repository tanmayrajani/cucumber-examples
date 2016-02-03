package com.tanmay.LoginWebApp;

import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import java.util.List;

import static com.codeborne.selenide.Selenide.$;

public class MyStepdefs{
    private List<List<String>> cred;
    @When("^I enter following credentials:$")
    public void iEnterFollowingCredentials(List<List<String>> cred) throws Throwable {
        this.cred = cred;
        $(By.name("uname")).setValue(cred.get(1).get(0));
        $(By.name("password")).setValue(cred.get(1).get(1));
        $("#submit").click();
    }

    @Then("^on the next page I should see \"([^\"]*)\"$")
    public void onTheNextPageIShouldSee(String arg0) throws Throwable {

    }
}
