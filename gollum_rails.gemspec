Gem::Specification.new do |s|
  s.rubygems_version = '>= 1.3.5'

  s.name = 'gollum_rails'
  s.rubyforge_project = s.name

  s.version = '1.5.10'

  s.summary = 'Combines Gollum and Rails'
  s.description= 'include Gollum into Rails with ease'

  s.add_dependency 'activemodel', '>= 3.2.11'
  s.add_dependency 'activesupport', '>= 3.2.11'
  
  s.add_dependency 'gollum-lib', '~> 2.0.0'

  s.add_development_dependency 'rspec', '~> 2.13.0'
  s.add_development_dependency 'rr', '~> 1.1.1'
  s.add_development_dependency 'rails', '>= 3.2.11'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rb-fsevent'
  s.author = 'Florian Kasper'
  s.email = 'mosny@zyg.li'
  s.homepage = 'https://github.com/nirnanaaa/gollum_rails'
  s.license = 'AGPL'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9.3'


  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    Guardfile
    HISTORY.md
    LICENSE
    README.md
    Rakefile
    gollum_rails.gemspec
    lib/generators/gollum_rails/install/install_generator.rb
    lib/generators/gollum_rails/install/templates/gollum_initializer.rb
    lib/generators/gollum_rails/language/language_generator.rb
    lib/generators/gollum_rails/model/model_generator.rb
    lib/generators/gollum_rails/model/templates/model_template.erb
    lib/gollum_rails.rb
    lib/gollum_rails/callbacks.rb
    lib/gollum_rails/core.rb
    lib/gollum_rails/error.rb
    lib/gollum_rails/finders.rb
    lib/gollum_rails/meta.rb
    lib/gollum_rails/orm.rb
    lib/gollum_rails/page.rb
    lib/gollum_rails/persistance.rb
    lib/gollum_rails/setup.rb
    lib/gollum_rails/setup/error.rb
    lib/gollum_rails/setup/options.rb
    lib/gollum_rails/store.rb
    lib/gollum_rails/validation.rb
    spec/gollum_rails/page_spec.rb
    spec/gollum_rails/respository_spec.rb
    spec/gollum_rails/setup_spec.rb
    spec/gollum_rails/wiki_spec.rb
    spec/spec_helper.rb
  ]
  # = MANIFEST =


  s.require_paths = %w[lib]
  s.post_install_message = <<-END
  Important: \n
  To enable gollum_rails run the following command:
  \trails g gollum_rails:install\n
  To generate a new Page model just run:
  \trails g gollum_rails:model MODEL_NAME\n
  To install an additional parsing language run:
  \trails g gollum_rails:language LANGUAGE
  END
end

  
