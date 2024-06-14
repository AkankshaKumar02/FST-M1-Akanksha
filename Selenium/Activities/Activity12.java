package activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.time.Duration;

public class Activity12 {
    public static void main(String[] args) {

        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));

        driver.get("https://v1.training-support.net/selenium/dynamic-controls");
        System.out.println("Tittle of home page" + driver.getTitle());

        WebElement textbox = driver.findElement(By.id("input-text"));
        System.out.println("Input field is enabled: " + textbox.isEnabled());
        driver.findElement(By.id("toggleInput")).click();
        System.out.println("Input field is enabled: " + textbox.isEnabled());

        // Close the browser
        driver.close();

        }
    }
