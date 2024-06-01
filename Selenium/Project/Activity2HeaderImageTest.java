package hrmProject;

import base.BaseClass;
import org.testng.Assert;
import org.testng.annotations.*;
import pages.LoginPage;
import utilities.SeleniumUtilities;

public class Activity2HeaderImageTest extends BaseClass {
    LoginPage loginPage;
    SeleniumUtilities seleniumUtilities;
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
    public void headerImageUrlTest() {
        System.out.println("Header image Url is : " + loginPage.getHeaderImageURL());
    }

    @AfterTest
    public void tearDown() {
        driver.close();
    }
}
