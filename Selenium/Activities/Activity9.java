package activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class Activity9 {
    public static void main(String[] args) {

        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));

        driver.get("https://v1.training-support.net/selenium/dynamic-controls");
        System.out.println("Tittle of home page" + driver.getTitle());

        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));

        WebElement toggleButton = driver.findElement(By.id("toggleCheckbox"));
        toggleButton.click();

        WebElement dynamicBox = driver.findElement(By.id("dynamicCheckbox"));
        wait.until(ExpectedConditions.invisibilityOf(dynamicBox));
        System.out.println(dynamicBox.isDisplayed());
        toggleButton.click();
        wait.until(ExpectedConditions.visibilityOf(dynamicBox));
        System.out.println(dynamicBox.isDisplayed());

        // Close the browser
        driver.close();

        }
    }
