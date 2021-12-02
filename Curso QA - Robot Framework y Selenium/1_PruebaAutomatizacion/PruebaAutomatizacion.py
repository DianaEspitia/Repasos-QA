from selenium.webdriver.common.keys import Keys
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as ec
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()

driver.get('https://www.google.com/')
driver.maximize_window()
wait = WebDriverWait(driver,10)
logo = wait.until(ec.visibility_of_element_located((By.XPATH, '//*[@id="hplogo"]')))
barra = driver.find_element_by_xpath('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input')
barra.send_keys("casos de prueba")
logo2 = driver.find_element_by_xpath('//*[@id="hplogo"]')
logo2.click()
boton = driver.find_element_by_xpath('/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]')
boton.click()
time.sleep(2)

driver.close()
