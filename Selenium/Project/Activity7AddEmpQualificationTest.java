package hrmProject;

import base.BaseClass;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import pages.HomePage;
import pages.LoginPage;
import pages.MyInfoPage;

public class Activity7AddEmpQualificationTest extends BaseClass {
    LoginPage loginPage;
    HomePage homePage;
    MyInfoPage myInfoPage;

    @BeforeTest
    public void setUp() {
        initialization();
        loginPage = new LoginPage();
        loginPage.enterLoginCredentials();
        homePage = loginPage.clickLogin();
    }

    @Test(priority = 1)
    public void navigateEditInfoPage() {
        myInfoPage = homePage.selectMyInfoMenu();
    }

    @Test(priority = 2)
    public void openQualificationsSection(){
        myInfoPage.selectQualificationsOptions();
    }

    @Test(priority = 3)
    public void addEmpWorkExpDetails(){
        myInfoPage.addWorkExp();
    }

    @AfterTest
    public void tearUP() {
        driver.quit();
    }


}
