package hrmProject;

import base.BaseClass;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;
import pages.MyInfoPage;
import pages.HomePage;
import pages.LoginPage;

public class Activity5EditUserInfoTest extends BaseClass {
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
    public void editInfo() {
        myInfoPage.enableInfoEditing();
        myInfoPage.editNameDetails();
        myInfoPage.changeGenderOption(2);
        myInfoPage.editNationality();
        myInfoPage.editDOB();
        myInfoPage.savePersonalDetails();
    }

    @AfterTest
    public void tearUP() {
        driver.quit();
    }


}
