package pages;

import base.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import utilities.SeleniumUtilities;

import java.util.List;
import java.util.Random;

public class DashboardPage extends BaseClass {
    SeleniumUtilities seleniumUtilities = new SeleniumUtilities();
    String leaveStartDate = "2024-07-11";
    String leaveEndDate = "2024-07-11";
    String leaveAppliedStatusXpath = "//a[contains(text(),"+"'"+leaveStartDate+"'"+")]/parent::td/following-sibling::td[5]//a";

    @FindBy(linkText = "Apply Leave")
    WebElement applyLeaveIcon;

    @FindBy(id="applyleave_txtLeaveType")
    WebElement leaveTypeDD;

    @FindBy(id = "applyleave_txtFromDate")
    WebElement applyLeaveFromDate;

    @FindBy(id = "applyleave_txtToDate")
    WebElement applyLeaveToDate;

    @FindBy(id="applyBtn")
    WebElement leaveApplyBtn;

    @FindBy(id = "menu_dashboard_index")
    WebElement dashboardMenu;

    @FindBy(linkText="My Leave")
    WebElement myLeaveOption;

    @FindBy(id ="calFromDate" )
    WebElement searchLeaveFromDate;

    @FindBy(id ="calToDate" )
    WebElement searchLeaveToDate;

    @FindBy(id ="btnSearch" )
    WebElement searchLeaveBtn;

//    @FindBy(xpath = leaveAppliedStatusXpath)
//    WebElement leaveAppliedStatus;


    public DashboardPage() {
        PageFactory.initElements(driver, this);
    }

    public void EnterLeaveDetailsAndApply() {
        applyLeaveIcon.click();
        seleniumUtilities.selectElementByVisibleText(leaveTypeDD,"DayOff");
        applyLeaveFromDate.clear();
        applyLeaveFromDate.sendKeys(leaveStartDate);
        applyLeaveToDate.clear();
        applyLeaveToDate.sendKeys(leaveEndDate);
       seleniumUtilities.checkElementIsClickable(leaveApplyBtn).click();
        leaveApplyBtn.click();

    }

    public void searchAppliedLeave(){
       dashboardMenu.click();
       myLeaveOption.click();
       searchLeaveFromDate.clear();
       searchLeaveFromDate.sendKeys(leaveStartDate);
       searchLeaveToDate.clear();
       searchLeaveToDate.sendKeys(leaveEndDate);
       searchLeaveBtn.click();
    }

    public String getLeaveStatus(){
        WebElement leaveAppliedStatus = driver.findElement(By.xpath(leaveAppliedStatusXpath));
        return leaveAppliedStatus.getText();

    }
}
