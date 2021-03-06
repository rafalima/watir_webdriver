$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec-expectations'
require 'page-object'
require 'require_all'
require 'fig_newton'

# FigNewton.yml_directory = 'config/environments'
FigNewton.load('local.yml')

require_all 'lib'


World(PageObject::PageFactory)
