root/
	Gemfile

			source 'https://rubygems.org'

			gem 'cucumber'
			gem 'rspec'
			gem 'page-object'

	cucumber.yml
		default: --no-source --color --format pretty


lib/
	pages/
		<feature_name>_page.rb

features/
		<feature_files_name>.rb
		
	step_definitions/
		<feature_name>_steps.rb

	support/
		env.rb

				$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

				require 'rspec-expectations'
				require 'page-object'
				require 'require_all'

				require_all 'lib'

				World(PageObject::PageFactory)



		hooks.rb

				require 'watir-webdriver'

				Before do
				  @browser = Watir::Browser.new :firefox
				end

				After do
				  @browser.close
				end

		




