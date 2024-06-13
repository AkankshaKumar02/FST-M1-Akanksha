package activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.time.Duration;

public class Activity20 {
    public static void main(String[] args) throws InterruptedException {
        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));

        driver.get("https://v1.training-support.net/selenium/javascript-alerts");
        System.out.println("Tittle of the page is : " + driver.getTitle());

        WebElement promptButton = driver.findElement(By.id("prompt"));
        promptButton.click();

        Alert promptAlert = driver.switchTo().alert();

        System.out.println("Text on confirm Alert  : " + promptAlert.getText());

        promptAlert.sendKeys("Awesome!");

        Thread.sleep(1000);
        promptAlert.accept();

        driver.close();


    }
}
