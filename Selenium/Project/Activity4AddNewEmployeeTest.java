package hrmProject;

import base.BaseClass;
import org.testng.Assert;
import org.testng.annotations.*;
import pages.HomePage;
import pages.LoginPage;
import pages.PIMPage;

public class Activity4AddNewEmployeeTest extends BaseClass {
    LoginPage loginPage;
    HomePage homePage;
    PIMPage pimPage;


    @BeforeTest
    public void setUp() {
        initialization();
        loginPage = new LoginPage();
        loginPage.enterLoginCredentials();
        homePage = loginPage.clickLogin();
    }

    @Test(priority = 1)
    public void navigatePIMOMenu() { pimPage = homePage.selectPIMMenu();}

    @Test(priority = 2)
    public void addEmployee() {
        pimPage.addEmpDetails();
    }

    @Test(priority = 3)
    public void viewPIMEmpList() {
        pimPage.selectPIMEmpList();
    }

    @Test(priority = 4)
    public void verifyEMPCreation() throws InterruptedException {
        pimPage.searchEmp();
        Assert.assertFalse(pimPage.noOfSearchRecordsDisplayed(), "No Record created");

    }

    @AfterTest
    public void tearUP() {
        driver.quit();
    }


}
