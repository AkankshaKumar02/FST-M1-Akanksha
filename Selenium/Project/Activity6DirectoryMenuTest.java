package hrmProject;

import base.BaseClass;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import pages.DirectoryPage;
import pages.HomePage;
import pages.LoginPage;

public class Activity6DirectoryMenuTest extends BaseClass {
    LoginPage loginPage;
    HomePage homePage;
    DirectoryPage directoryPage;

    @BeforeTest
    public void setUp() {
        initialization();
        loginPage = new LoginPage();
        loginPage.enterLoginCredentials();
        homePage = loginPage.clickLogin();
    }

    @Test(priority = 1)
    public void directoryMenuCurrentState() {
        if (homePage.checkDirectoryMenuVisibleAndClickable()) {
            directoryPage = homePage.selectDirectoryMenu();
        } else {
            throw new RuntimeException("Expected wait conditions failed");
        }
    }

    @Test(priority = 2)
    public void veryDirectoryMenuPageHeading() {
        Assert.assertEquals(directoryPage.getMenuPageMainHeading(),
                "Search Directory",
                "Expected Directory page heading not matching with Actual");
    }

    @AfterTest
    public void tearUP(){
        driver.quit();
    }


}
