package utilities;

import base.BaseClass;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;

public class SeleniumUtilities extends BaseClass {

    public String getPageTitle() {
        return driver.getTitle();
    }

    public void checkElementVisibility(WebElement element) {
         wait.until(ExpectedConditions.visibilityOf(element));
    }
    public WebElement checkElementIsClickable(WebElement element) {
        wait.until(ExpectedConditions.elementToBeClickable(element));
        return element;
    }

    public void selectElementByVisibleText(WebElement element,String visibleText){
        Select select = new Select(element);
        select.selectByVisibleText(visibleText);
    }

}
