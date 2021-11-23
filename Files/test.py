from selenium.webdriver.common.keys import Keys
from selenium import webdriver
import time

firefox_driver = webdriver.Firefox()

firefox_driver.get('https://www.jigsawplanet.com/?rc=signin')

click_en_campo = firefox_driver.find_element_by_css_selector('input[name="password"]')

click = click_en_campo.click()
