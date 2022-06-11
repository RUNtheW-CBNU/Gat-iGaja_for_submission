package crawling;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;

public class Exchange_Rate {
    private final WebDriver driver;
    private final JavascriptExecutor javascriptExecutor;
    private final Actions actions;
    private WebElement element;

    private final String url;
    // 드라이버 설치 경로
    public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver"; // chrome driver 경로 (현재 프로젝트 폴더 안에 있음)
    public Exchange_Rate(String url) {

        this.url = url;
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH); // chrome driver 경로 설정
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--start-maximized"); // 창 최대
        options.addArguments("headless"); // 창 숨김
        options.addArguments("--disable-popup-blocking"); // 팝업창 막기

        driver = new ChromeDriver(options); // 옵션 적용

        javascriptExecutor = (JavascriptExecutor) driver;
        actions = new Actions(driver); // 스크롤할 때 사용
    }
    public String activateBot(int countryID){
        String sale ="";
        try{
            driver.get(url);
            element = driver.findElement(By.xpath("/html/body/div/table/tbody/tr["+countryID+"]/td[2]"));
            sale = element.getText();
            return sale;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            driver.close();
        }
        return sale;
    }
    public void test(){

        System.out.println("hiii");
    }

//        public static void main(String[] args) {
//            Exchange_Rate bot1 = new Exchange_Rate("https://finance.naver.com/marketindex/exchangeList.naver");
//            bot1.activateBot(1);
//        }
}