package hrmProject;

import base.BaseClass;
import org.testng.Assert;
import org.testng.annotations.*;
import pages.HomePage;
import pages.LoginPage;
import utilities.SeleniumUtilities;


public class Activity3LoginTest extends BaseClass {
    LoginPage loginPage;
    SeleniumUtilities seleniumUtilities;
    HomePage homePage;

    @BeforeTest
    public void setUp() {
        initialization();
        loginPage = new LoginPage();
        seleniumUtilities = new SeleniumUtilities();
    }

    @Test(priority = 1)
    public void loginPageTitleTest() {
        String title = seleniumUtilities.getPageTitle();
        Assert.assertEquals(title, "OrangeHRM");
    }

    @Test(priority = 2)
    public void login() {
        loginPage.enterLoginCredentials();
        homePage = loginPage.clickLogin();
    }

    @Test(priority = 3)
    public void verifyUserLoggedInSuccessfully() {
        homePage.confirmUserLoggedIn();
    }

    @AfterTest
    public void tearDown() {
        driver.quit();
    }

}
