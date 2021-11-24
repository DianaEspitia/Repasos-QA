import unittest
from selenium.webdriver.common.keys import Keys
from selenium import webdriver
import time

chrome_driver = webdriver.Chrome('C:/Users/DianaEspitiaTorres/Downloads/chromedriver/chromedriver.exe')
#firefox_driver = webdriver.Firefox()

driver = chrome_driver
driver.get("https://achirou.com") # corresponde a la ventana 0
time.sleep(2)
driver.execute_script("window.open('');") # Nos permite abrir una nueva ventana. Se utiliza cada que se quierar abrir una nueva venatana
time.sleep(2)
driver.switch_to.window(driver.window_handles[1]) # nueva ventana 1
driver.get("https://google.com")
time.sleep(2)
driver.switch_to.window(driver.window_handles[0])
time.sleep(2)
