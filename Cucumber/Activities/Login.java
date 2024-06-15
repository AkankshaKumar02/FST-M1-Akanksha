package stepDefinitions;

import io.cucumber.java.BeforeAll;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.firefox.FirefoxDriver;


public class Login extends BaseClass {


    @Given("user is on logon page")
    public void openBroswer() {
        WebDriverManager.firefoxdriver().setup();
        driver = new FirefoxDriver();
        driver.get("https://v1.training-support.net/selenium/login-form");
    }

    @When("user enters {string} and {string}")
    public void enterCredentials(String username, String password) {

        driver.findElement(By.id("username")).sendKeys(username);
        driver.findElement(By.id("password")).sendKeys(password);
        driver.findElement(By.xpath("//button[text()='Log in']")).click();
    }

    @Then("read the page tittle and confirm message")
    public void readThePageTittleAndConfirmMessage() {
        System.out.println("Tittle of page : " + driver.getTitle());
    }
    @Then("Close the Browser")
    public void close_the_browser() {
        driver.close();
    }

    @When("User enters {string} and {string}")
    public void user_enters_and(String userName, String passwd) {
        driver.findElement(By.id("username")).sendKeys(userName);
        driver.findElement(By.id("password")).sendKeys(passwd);
        driver.findElement(By.xpath("//button[text()='Log in']")).click();
    }


}
