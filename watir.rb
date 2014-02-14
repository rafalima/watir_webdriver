require 'watir-webdriver'

browser = Watir::Browser.new :firefox

browser.goto "http://demo.moodle.net/login/index.php"
browser.text_field(id: 'username').set 'admin'
browser.text_field(id: 'password').set 'sandbox'
browser.button(id: 'loginbtn').click
puts browser.p(id: 'frontpagesettings').exists? && browser.span(xpath: "//span[text()='Site administration']").exists?