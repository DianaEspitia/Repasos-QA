from selenium.webdriver.common.keys import Keys
from selenium import webdriver
import unittest
import time

# Descargar Chrome_Driver --> https://sites.google.com/chromium.org/driver/
chrome_driver = webdriver.Chrome('C:/Users/DianaEspitiaTorres/Downloads/chromedriver/chromedriver.exe')
#firefox_driver = webdriver.Firefox()

scraping = chrome_driver
scraping.get("https://www.w3schools.com/howto/howto_css_custom_checkbox.asp")
time.sleep(2)
boton = scraping.find_element_by_xpath("//*[@id='main']/div[3]/div[1]/input[4]") # xpath del radio buttom
boton.click()
time.sleep(2)
boton = scraping.find_element_by_xpath("//*[@id='main']/div[3]/div[1]/input[3]") # xpath del radio buttom
boton.click()
time.sleep(2)
