package pages;

import base.BaseClass;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.List;
import java.util.Random;

public class PIMPage extends BaseClass {
    Random random = new Random();
    int randomNumber = random.nextInt(100);

    String genericFirstName = "Akanksha" + randomNumber;
    String genericLastName = "Kumar";
//    public String fullName = genericFirstName + " " + genericLastName;
    String empID;


    @FindBy(id = "btnAdd")
    WebElement addEmpButton;

    @FindBy(id = "menu_pim_viewEmployeeList")
    WebElement empList;

    @FindBy(id = "firstName")
    WebElement empFirstName;

    @FindBy(id = "lastName")
    WebElement empLastName;

    @FindBy(id="employeeId")
    WebElement employeeID;

    @FindBy(id = "btnSave")
    WebElement saveBtn;

    @FindBy(id = "empsearch_employee_name_empName")
    WebElement empSearchEmpName;

    @FindBy(id="empsearch_id")
    WebElement empSearchEmpID;

    @FindBy(id = "searchBtn")
    WebElement empSearchBtn;

    @FindBy(xpath = "//*[@id='resultTable']/tbody/tr")
    List<WebElement> noOfEmpSearchRows;

    public PIMPage() {
        PageFactory.initElements(driver, this);
    }


    public void addEmpDetails() {
        addEmpButton.click();
        wait.until(ExpectedConditions.visibilityOf(empFirstName));
        empFirstName.sendKeys(genericFirstName);
        empLastName.sendKeys(genericLastName);
        empID = employeeID.getAttribute("value");
        saveBtn.click();
    }


    public void selectPIMEmpList() {
        empList.click();
    }

    public void searchEmp() {
        empSearchEmpID.sendKeys(empID);
        empSearchBtn.click();
    }

    public boolean noOfSearchRecordsDisplayed() {
        return noOfEmpSearchRows.isEmpty();
    }


}
