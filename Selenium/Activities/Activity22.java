package activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class Activity22 {
    public static void main(String[] args) throws InterruptedException {
        WebDriverManager.firefoxdriver().setup();
        WebDriver driver = new FirefoxDriver();

        driver.manage().deleteAllCookies();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
        driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(60));
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        driver.get("https://v1.training-support.net/selenium/popups");
        System.out.println("Tittle of the page is : " + driver.getTitle());
        Actions action = new Actions(driver);
        WebElement button = driver.findElement(By.className("orange"));
        // Hover over the button
        action.moveToElement(button).build().perform();
        // Print the tooltip message
        String tooltipMessage = button.getAttribute("data-tooltip");
        System.out.println(tooltipMessage);

        // Click the button and wait for the modal to appear
        button.click();
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("username")));

        // Find the input fields
        WebElement username = driver.findElement(By.id("username"));
        WebElement password = driver.findElement(By.id("password"));
        // Enter the credentials
        username.sendKeys("admin");
        password.sendKeys("password");
        // Click the login button
        driver.findElement(By.xpath("//button[text()='Log in']")).click();

        // Print the login message
        String message = driver.findElement(By.id("action-confirmation")).getText();
        System.out.println("Login message: " + message);
        driver.close();


    }
}
