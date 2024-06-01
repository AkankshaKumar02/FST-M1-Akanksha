package pages;

import base.BaseClass;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


public class DirectoryPage extends BaseClass {
    @FindBy(xpath ="//*[@class='head']//h1")
    WebElement dirPageHeading;

    public DirectoryPage() {PageFactory.initElements(driver, this);}

    public String getMenuPageMainHeading(){
        return dirPageHeading.getText();
    }

}
