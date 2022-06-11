package crawling;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

public class TravelInfo {
        private WebDriver driver;
        private JavascriptExecutor javascriptExecutor;
        private Actions actions;
        private WebElement element;

        private String url;
        // 드라이버 설치 경로
        public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
        public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver"; // chrome driver 경로 (현재 프로젝트 폴더 안에 있음)
        public TravelInfo(String url) {

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
        public String [] activateBot(){
            String [] arr = new String[5];
            try{
                driver.get(url);


                //entrance
                List<WebElement> elements = driver.findElements(By.className("entrance_highlighted__3tJmk"));
                for(int i=0; i<elements.size(); i++){
                        if(elements.get(i).getText()!=null){
                            arr[i] = elements.get(i).getText();
                        }
                }

                //return
                List<WebElement> Relements = driver.findElements(By.className("return_highlighted__2-ivO"));
                for(int i=0; i< Relements.size(); i++){
                    if(Relements.get(i).getText()!=null){
                        arr[i+3] = Relements.get(i).getText();
                    }
                }

                for (int i=0; i<arr.length;i++){
                    System.out.println(arr[i]);
                }
            }catch (Exception e){
                e.printStackTrace();
            }finally {
                driver.close();
            }
            return arr;
        }

//        public static void main(String[] args) {
//            TravelInfo bot1 = new TravelInfo("https://travel.naver.com/overseas/US191/country/prepare#hentrance");
//            bot1.activateBot();
//        }
    }