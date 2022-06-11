package crawling;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;

import java.util.List;

public class Covid {
        private WebDriver driver;
        private JavascriptExecutor javascriptExecutor;
        private Actions actions;
        private WebElement element;

        private String url;
        // 드라이버 설치 경로
        public static String WEB_DRIVER_ID = "webdriver.chrome.driver";
        public static String WEB_DRIVER_PATH = "/opt/homebrew/bin/chromedriver"; // chrome driver 경로 (현재 프로젝트 폴더 안에 있음)
        public Covid(String url) {

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
            String [] arr = new String[6];
            try{
                driver.get(url);
                //chart
                List<WebElement> elements = driver.findElements(By.className("dt3Iuf"));
                for(int i=0; i<4; i++){//index odd: dark mode
                        if(elements.get(i).getAttribute("src")!=null){
                            arr[i] = elements.get(i).getAttribute("src");
                        }else{
                                arr[i]=null;
                        }
                }

                //explanation sentence
                List<WebElement> TextElements = driver.findElements(By.className("DlOivf"));
                for(int i=0; i< TextElements.size(); i++){
                    if(TextElements.get(i).getText()!=null){
                        arr[i+4] = TextElements.get(i).getText();
                    }else{
                        arr[i+4]=null;
                    }
                }
                if(arr[5]==null)
                    arr[5]="데이터 없음";
            }catch (Exception e){
                e.printStackTrace();
            }finally {
                driver.close();
            }
            return arr;
        }
    }