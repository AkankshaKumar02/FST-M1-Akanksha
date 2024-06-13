package activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

import java.time.Duration;
import java.util.List;

public class Activity17 {
    public static void main(String[] args) {

        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));

        driver.get("https://v1.training-support.net/selenium/selects");
        WebElement dropDown = driver.findElement(By.id("single-select"));
        Select selectDD = new Select(dropDown);
        selectDD.selectByVisibleText("Option 2");
        System.out.println("Second option: " + selectDD.getFirstSelectedOption().getText());

        selectDD.selectByIndex(4);
        System.out.println("Third option: " + selectDD.getFirstSelectedOption().getText());

        selectDD.selectByValue("4");
        System.out.println("Fourth option: " + selectDD.getFirstSelectedOption().getText());

        List<WebElement> ddOptions = selectDD.getOptions();

        for(WebElement option : ddOptions){
            System.out.println(option);
        }

    }
}
