package pages;

import base.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;
import utilities.SeleniumUtilities;

import java.util.List;
import java.util.Random;

public class MyInfoPage extends BaseClass {
    SeleniumUtilities seleniumUtilities = new SeleniumUtilities();
    Random random = new Random();
    public int randomNumber = random.nextInt(1000);

    public String genericFirstName = "Akanksha" + randomNumber;
    public String genericLastName = "Kumar";

    @FindBy(id = "btnSave")
    WebElement editBtn;

    @FindBy(id = "personal_txtEmpFirstName")
    WebElement firstName;

    @FindBy(id = "personal_txtEmpLastName")
    WebElement lastName;

    @FindBy(id = "personal_optGender_1")
    WebElement maleGenderOption;

    @FindBy(id = "personal_optGender_2")
    WebElement femaleGenderOption;

    @FindBy(id = "personal_cmbNation")
    WebElement nationalityDD;

    @FindBy(css = ".ui-datepicker-trigger")
    WebElement calender;

    @FindBy(id = "personal_DOB")
    WebElement personalDOB;

    @FindBy(id = "btnSave")
    WebElement savePersonalDetails;

    @FindBy(partialLinkText = "Qualifications")
    WebElement qualificationsOption;

    @FindBy(id = "addWorkExperience")
    WebElement addWorkExpBtn;

    @FindBy(id = "experience_employer")
    WebElement empCompanyName;

    @FindBy(id = "experience_jobtitle")
    WebElement empJobTittle;

    @FindBy(id = "experience_from_date")
    WebElement expFromDate;

    @FindBy(id = "experience_to_date")
    WebElement expToDate;

    @FindBy(id = "btnWorkExpSave")
    WebElement saveWorkExpDetails;

    @FindBy(linkText = "Emergency Contacts")
    WebElement emergencyContactOption;

    @FindBy(xpath = "//*[@id='emgcontact_list']//th")
    List<WebElement> emergencyContactTableHeaders;

    @FindBy(xpath = "//*[@id='emgcontact_list']/tbody/tr")
    List<WebElement> emergencyContactTableRows;

    public MyInfoPage() {
        PageFactory.initElements(driver, this);
    }

    public void enableInfoEditing() {
        editBtn.click();
    }

    public void editNameDetails() {
        firstName.clear();
        firstName.sendKeys(genericFirstName);
        lastName.clear();
        lastName.sendKeys(genericLastName);
    }

    public void changeGenderOption(int option) {
        if (option == 1) {
            maleGenderOption.click();
        } else {
            femaleGenderOption.click();
        }
    }

    public void editNationality() {
        seleniumUtilities.selectElementByVisibleText(nationalityDD, "British");
    }

    public void editDOB() {
        personalDOB.clear();
        personalDOB.sendKeys("1989-12-02");
    }

    public void savePersonalDetails() {
        savePersonalDetails.click();
    }

    public void selectQualificationsOptions() {
        qualificationsOption.click();
    }

    public void addWorkExp() {
        addWorkExpBtn.click();
        empCompanyName.sendKeys("IBM");
        empJobTittle.sendKeys("Test Architect");
        expFromDate.clear();
        expFromDate.sendKeys("2022-12-13");
        expToDate.clear();
        expToDate.sendKeys("2024-12-31");
        saveWorkExpDetails.click();
    }

    public void selectEmergencyContactOption() {
        emergencyContactOption.click();
    }

    public void getEmergencyContact() {
        for(WebElement tableHeader : emergencyContactTableHeaders) {
            System.out.print(tableHeader.getText()+"    ");
        }
        System.out.println();
        for(WebElement tableRow : emergencyContactTableRows){
            List<WebElement> emergencyContactTableColumns = tableRow.findElements(By.tagName("td"));
            for (WebElement tableColumValue : emergencyContactTableColumns){
                System.out.print(tableColumValue.getText()+"      ");
            }
            System.out.println();
        }

    }
}
