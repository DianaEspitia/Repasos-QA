import unittest
from selenium.webdriver.common.keys import Keys
from selenium import webdriver
import time

chrome_driver = webdriver.Chrome('C:/Users/DianaEspitiaTorres/Downloads/chromedriver/chromedriver.exe')

driver = chrome_driver
driver.get("https://google.com") # Abrir Google
buscar = driver.find_element_by_name('q') # Buscar elemento de barra de búsqueda (tiene nombre q)
buscar.send_keys("NASA") # Colocar lo que deseamos buscar
buscar.send_keys(Keys.ENTER) # Presionar ENTER para buscar
time.sleep(2)
