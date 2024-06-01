package hrmProject;

import base.BaseClass;
import org.testng.Assert;
import org.testng.annotations.*;
import pages.LoginPage;
import utilities.*;

public class Acitivity1WebsiteTittleTest extends BaseClass {
    LoginPage loginPage;
    SeleniumUtilities seleniumUtilities;

    @BeforeTest
    public void setUp(){
        initialization();
        loginPage = new LoginPage();
        seleniumUtilities = new SeleniumUtilities();
    }

    @Test(priority=1)
    public void loginPageTitleTest(){

        String title = seleniumUtilities.getPageTitle();
        Assert.assertEquals(title, "OrangeHRM");
    }

}
