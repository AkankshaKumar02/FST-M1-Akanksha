package activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.time.Duration;

public class Activity19 {
    public static void main(String[] args) {
        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));

        driver.get("https://v1.training-support.net/selenium/javascript-alerts");
        System.out.println("Tittle of the page is : " + driver.getTitle());

        WebElement confirmButton = driver.findElement(By.id("confirm"));
        confirmButton.click();

        Alert confirmAlert = driver.switchTo().alert();

        System.out.println("Text on confirm Alert  : " + confirmAlert.getText());

        confirmAlert.dismiss();

        confirmButton.click();

        confirmAlert.accept();

        driver.close();


    }
}
