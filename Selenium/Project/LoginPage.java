package pages;

import base.BaseClass;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage extends BaseClass {

    @FindBy(xpath = "//*[@id='divLogo']/img")
    WebElement HeaderImage;

    @FindBy(id = "txtUsername")
    WebElement userIdTextBox;

    @FindBy(id = "txtPassword")
    WebElement passwordTextBox;

    @FindBy(id = "btnLogin")
    WebElement loginButton;

    //Initializing the Page Objects:
    public LoginPage() {
        PageFactory.initElements(driver, this);
    }

    public String getHeaderImageURL() {
        String headerImageURL = HeaderImage.getAttribute("src");
        return headerImageURL;
    }

    public void enterLoginCredentials() {
        userIdTextBox.sendKeys(prop.getProperty("username"));
        passwordTextBox.sendKeys(prop.getProperty("password"));
    }

    public HomePage clickLogin() {
        loginButton.submit();
        return new HomePage();
    }
}
