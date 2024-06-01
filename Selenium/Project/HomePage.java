package pages;

import base.BaseClass;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import utilities.SeleniumUtilities;

public class HomePage extends BaseClass {

    @FindBy(id = "welcome")
    WebElement welcomeID;

    @FindBy(id = "menu_pim_viewPimModule")
    WebElement pimMenu;

    @FindBy(id = "menu_pim_viewMyDetails")
    WebElement myInfoMenu;

    @FindBy(id = "menu_directory_viewDirectory")
    WebElement directoryMenu;

    @FindBy(id = "menu_dashboard_index")
    WebElement dashboardMenu;

    public HomePage() {
        PageFactory.initElements(driver, this);
    }

    public void confirmUserLoggedIn() {
        welcomeID.isDisplayed();
    }

    public PIMPage selectPIMMenu() {
        pimMenu.click();
        return new PIMPage();
    }

    public MyInfoPage selectMyInfoMenu() {
        myInfoMenu.click();
        return new MyInfoPage();
    }

    public DirectoryPage selectDirectoryMenu() {
        directoryMenu.click();
        return new DirectoryPage();
    }

    public boolean checkDirectoryMenuVisibleAndClickable() {
        return wait.until(ExpectedConditions.and(
                ExpectedConditions.visibilityOf(directoryMenu),
                ExpectedConditions.elementToBeClickable(directoryMenu)));
    }

    public DashboardPage selectDashboardMenu() {
        dashboardMenu.click();
        return new DashboardPage();
    }


}
