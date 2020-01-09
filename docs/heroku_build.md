# Heroku Build

Result of first successful heroku build.

```
[21:39] (master) borrow-buddy
♥ ♥ git push heroku master
Enumerating objects: 2031, done.
Counting objects: 100% (2031/2031), done.
Delta compression using up to 8 threads
Compressing objects: 100% (1959/1959), done.
Writing objects: 100% (2031/2031), 611.83 KiB | 5.56 MiB/s, done.
Total 2031 (delta 1317), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote: 
remote:  !     Warning: Multiple default buildpacks reported the ability to handle this app. The first buildpack in the list below will be used.
remote:                         Detected buildpacks: Ruby,Node.js
remote:                         See https://devcenter.heroku.com/articles/buildpacks#buildpack-detect-order
remote: -----> Ruby app detected
remote: -----> Compiling Ruby/Rails
remote: -----> Using Ruby version: ruby-2.5.3
remote: -----> Vendoring libpq 5.12.1
remote: -----> Removing BUNDLED WITH version in the Gemfile.lock
remote: -----> Installing dependencies using bundler 2.0.2
remote:        Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4 --deployment
remote:        The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
remote:        Fetching gem metadata from https://rubygems.org/............
remote:        Fetching rake 13.0.1
remote:        Installing rake 13.0.1
remote:        Fetching minitest 5.13.0
remote:        Fetching concurrent-ruby 1.1.5
remote:        Fetching thread_safe 0.3.6
remote:        Installing minitest 5.13.0
remote:        Installing thread_safe 0.3.6
remote:        Installing concurrent-ruby 1.1.5
remote:        Fetching builder 3.2.4
remote:        Installing builder 3.2.4
remote:        Fetching erubi 1.9.0
remote:        Fetching mini_portile2 2.4.0
remote:        Installing erubi 1.9.0
remote:        Installing mini_portile2 2.4.0
remote:        Fetching crass 1.0.5
remote:        Installing crass 1.0.5
remote:        Fetching rack 2.0.8
remote:        Fetching nio4r 2.5.2
remote:        Installing nio4r 2.5.2 with native extensions
remote:        Installing rack 2.0.8
remote:        Fetching websocket-extensions 0.1.4
remote:        Installing websocket-extensions 0.1.4
remote:        Fetching mini_mime 1.0.2
remote:        Installing mini_mime 1.0.2
remote:        Fetching arel 9.0.0
remote:        Installing arel 9.0.0
remote:        Fetching mimemagic 0.3.3
remote:        Fetching execjs 2.7.0
remote:        Installing execjs 2.7.0
remote:        Installing mimemagic 0.3.3
remote:        Fetching bcrypt 3.1.13
remote:        Installing bcrypt 3.1.13 with native extensions
remote:        Fetching msgpack 1.3.1
remote:        Installing msgpack 1.3.1 with native extensions
remote:        Fetching popper_js 1.14.5
remote:        Installing popper_js 1.14.5
remote:        Fetching method_source 0.9.2
remote:        Installing method_source 0.9.2
remote:        Fetching thor 1.0.1
remote:        Installing thor 1.0.1
remote:        Fetching ffi 1.11.3
remote:        Installing ffi 1.11.3 with native extensions
remote:        Fetching tilt 2.0.10
remote:        Installing tilt 2.0.10
remote:        Using bundler 2.0.2
remote:        Fetching chronic 0.10.2
remote:        Installing chronic 0.10.2
remote:        Fetching orm_adapter 0.5.0
remote:        Installing orm_adapter 0.5.0
remote:        Fetching dotenv 2.7.5
remote:        Installing dotenv 2.7.5
remote:        Fetching multipart-post 2.1.1
remote:        Installing multipart-post 2.1.1
remote:        Fetching hashie 3.6.0
remote:        Installing hashie 3.6.0
remote:        Fetching jwt 2.2.1
remote:        Installing jwt 2.2.1
remote:        Fetching multi_json 1.14.1
remote:        Installing multi_json 1.14.1
remote:        Fetching multi_xml 0.6.0
remote:        Installing multi_xml 0.6.0
remote:        Fetching pg 1.2.2
remote:        Installing pg 1.2.2 with native extensions
remote:        Fetching turbolinks-source 5.2.0
remote:        Installing turbolinks-source 5.2.0
remote:        Fetching tzinfo 1.2.6
remote:        Installing tzinfo 1.2.6
remote:        Fetching nokogiri 1.10.7
remote:        Installing nokogiri 1.10.7 with native extensions
remote:        Fetching i18n 1.8.0
remote:        Installing i18n 1.8.0
remote:        Fetching websocket-driver 0.7.1
remote:        Installing websocket-driver 0.7.1 with native extensions
remote:        Fetching mail 2.7.1
remote:        Installing mail 2.7.1
remote:        Fetching rack-test 1.1.0
remote:        Installing rack-test 1.1.0
remote:        Fetching sprockets 4.0.0
remote:        Installing sprockets 4.0.0
remote:        Fetching warden 1.2.8
remote:        Installing warden 1.2.8
remote:        Fetching autoprefixer-rails 9.7.3
remote:        Installing autoprefixer-rails 9.7.3
remote:        Fetching uglifier 4.2.0
remote:        Installing uglifier 4.2.0
remote:        Fetching marcel 0.3.3
remote:        Installing marcel 0.3.3
remote:        Fetching puma 4.3.1
remote:        Installing puma 4.3.1 with native extensions
remote:        Fetching whenever 1.0.0
remote:        Installing whenever 1.0.0
remote:        Fetching faraday 1.0.0
remote:        Installing faraday 1.0.0
remote:        Fetching omniauth 1.9.0
remote:        Installing omniauth 1.9.0
remote:        Fetching bootsnap 1.4.5
remote:        Installing bootsnap 1.4.5 with native extensions
remote:        Fetching turbolinks 5.2.1
remote:        Installing turbolinks 5.2.1
remote:        Fetching sassc 2.2.1
remote:        Installing sassc 2.2.1 with native extensions
remote:        Fetching activesupport 5.2.4.1
remote:        Installing activesupport 5.2.4.1
remote:        Fetching loofah 2.4.0
remote:        Installing loofah 2.4.0
remote:        Fetching oauth2 1.4.2
remote:        Installing oauth2 1.4.2
remote:        Fetching rails-dom-testing 2.0.3
remote:        Installing rails-dom-testing 2.0.3
remote:        Fetching globalid 0.4.2
remote:        Fetching activemodel 5.2.4.1
remote:        Installing globalid 0.4.2
remote:        Installing activemodel 5.2.4.1
remote:        Fetching jbuilder 2.9.1
remote:        Installing jbuilder 2.9.1
remote:        Fetching rails-html-sanitizer 1.3.0
remote:        Installing rails-html-sanitizer 1.3.0
remote:        Fetching omniauth-oauth2 1.6.0
remote:        Installing omniauth-oauth2 1.6.0
remote:        Fetching activejob 5.2.4.1
remote:        Installing activejob 5.2.4.1
remote:        Fetching activerecord 5.2.4.1
remote:        Installing activerecord 5.2.4.1
remote:        Fetching actionview 5.2.4.1
remote:        Installing actionview 5.2.4.1
remote:        Fetching omniauth-google-oauth2 0.7.0
remote:        Installing omniauth-google-oauth2 0.7.0
remote:        Fetching actionpack 5.2.4.1
remote:        Installing actionpack 5.2.4.1
remote:        Fetching actionmailer 5.2.4.1
remote:        Fetching actioncable 5.2.4.1
remote:        Installing actionmailer 5.2.4.1
remote:        Installing actioncable 5.2.4.1
remote:        Fetching activestorage 5.2.4.1
remote:        Installing activestorage 5.2.4.1
remote:        Fetching railties 5.2.4.1
remote:        Installing railties 5.2.4.1
remote:        Fetching sprockets-rails 3.2.1
remote:        Installing sprockets-rails 3.2.1
remote:        Fetching responders 3.0.0
remote:        Fetching dotenv-rails 2.7.5
remote:        Installing responders 3.0.0
remote:        Installing dotenv-rails 2.7.5
remote:        Fetching font-awesome-rails 4.7.0.5
remote:        Fetching jquery-rails 4.3.5
remote:        Installing font-awesome-rails 4.7.0.5
remote:        Installing jquery-rails 4.3.5
remote:        Fetching devise 4.7.1
remote:        Fetching rails 5.2.4.1
remote:        Installing devise 4.7.1
remote:        Installing rails 5.2.4.1
remote:        Fetching sassc-rails 2.1.2
remote:        Installing sassc-rails 2.1.2
remote:        Fetching bootstrap 4.4.1
remote:        Installing bootstrap 4.4.1
remote:        Bundle complete! 33 Gemfile dependencies, 78 gems now installed.
remote:        Gems in the groups development and test were not installed.
remote:        Bundled gems are installed into `./vendor/bundle`
remote:        Post-install message from i18n:
remote:        
remote:        HEADS UP! i18n 1.1 changed fallbacks to exclude default locale.
remote:        But that may break your application.
remote:        
remote:        Please check your Rails app for 'config.i18n.fallbacks = true'.
remote:        If you're using I18n (>= 1.1.0) and Rails (< 5.2.2), this should be
remote:        'config.i18n.fallbacks = [I18n.default_locale]'.
remote:        If not, fallbacks will be broken in your app by I18n 1.1.x.
remote:        
remote:        For more info see:
remote:        https://github.com/svenfuchs/i18n/releases/tag/v1.1.0
remote:        
remote:        Bundle completed (202.93s)
remote:        Cleaning up the bundler cache.
remote: -----> Installing node-v10.15.3-linux-x64
remote: -----> Detecting rake tasks
remote: -----> Preparing app for Rails asset pipeline
remote:        Running: rake assets:precompile
remote:        I, [2020-01-09T02:43:39.030752 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/manifest-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.js
remote:        I, [2020-01-09T02:43:39.031111 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/manifest-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.js.gz
remote:        I, [2020-01-09T02:43:39.031334 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/bb-color-white-background-01edb7a745e118c333604fafa05038fdbd711f3578fe5cb939f58d90b8228db7.png
remote:        I, [2020-01-09T02:43:39.031676 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/bb-color-wide-a3226b9efa5e0b159faa79333032be43ccc7064105d4b3e50a90d524cfd24a50.png
remote:        I, [2020-01-09T02:43:39.032102 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/bb-color-5e1d623737caeb90422e9716e1d91484e7edd5ffe07d380d030e49bcde44e88e.png
remote:        I, [2020-01-09T02:43:39.032455 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/bb-white-d360ee7dc9dc43ab2e7a9f5ec6521ff2d0982331f5f57c7632a2390d51ef7a5b.png
remote:        I, [2020-01-09T02:43:39.032817 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/application-6deeed1f3efc9e84f3c9b049fe076e10a9a159bc2a25e06ddcca545e1fd0d015.css
remote:        I, [2020-01-09T02:43:39.032980 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/application-6deeed1f3efc9e84f3c9b049fe076e10a9a159bc2a25e06ddcca545e1fd0d015.css.gz
remote:        I, [2020-01-09T02:43:39.033180 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/borrowers-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.css
remote:        I, [2020-01-09T02:43:39.033815 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/borrowers-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.css.gz
remote:        I, [2020-01-09T02:43:39.034109 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/items-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.css
remote:        I, [2020-01-09T02:43:39.034365 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/items-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.css.gz
remote:        I, [2020-01-09T02:43:39.034710 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/loans-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.css
remote:        I, [2020-01-09T02:43:39.034870 #1874]  INFO -- : Writing /tmp/build_ea4953b6852868c71fbc9c714855c25e/public/assets/loans-d0ff5974b6aa52cf562bea5921840c032a860a91a3512f7fe8f768f6bbe005f6.css.gz
remote:        Asset precompilation completed (5.75s)
remote:        Cleaning assets
remote:        Running: rake assets:clean
remote: -----> Detecting rails configuration
remote: 
remote: ###### WARNING:
remote: 
remote:        Replacing libpq with version libpq 5.12.1
remote:        
remote:        This version includes a bug fix that can cause an exception
remote:        on boot for applications with incorrectly configured connection
remote:        values. For more information see:
remote:        
remote:          https://devcenter.heroku.com/articles/libpq-5-12-1-breaking-connection-behavior
remote:        
remote:        If your application breaks you can rollback to your last build.
remote:        You can also temporarially opt out of this behavior by setting:
remote:        
remote:        ```
remote:        $ heroku config:set HEROKU_SKIP_LIBPQ12=1
remote:        ```
remote:        
remote:        In the future libpq 5.12 will be the default on the platform and
remote:        you will not be able to opt-out of the library. For more information see:
remote:        
remote:          https://devcenter.heroku.com/articles/libpq-5-12-1-breaking-connection-behavior
remote: 
remote: 
remote: ###### WARNING:
remote: 
remote:        Detecting rails configuration failed
remote:        set HEROKU_DEBUG_RAILS_RUNNER=1 to debug
remote: 
remote: 
remote: ###### WARNING:
remote: 
remote:        We detected that some binary dependencies required to
remote:        use all the preview features of Active Storage are not
remote:        present on this system.
remote:        
remote:        For more information please see:
remote:          https://devcenter.heroku.com/articles/active-storage-on-heroku
remote:        
remote: 
remote: 
remote: ###### WARNING:
remote: 
remote:        There is a more recent Ruby version available for you to use:
remote:        
remote:        2.5.7
remote:        
remote:        The latest version will include security and bug fixes, we always recommend
remote:        running the latest version of your minor release.
remote:        
remote:        Please upgrade your Ruby version.
remote:        
remote:        For all available Ruby versions see:
remote:          https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
remote: 
remote: 
remote: ###### WARNING:
remote: 
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
remote: 
remote: 
remote: 
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> console, rake, web
remote: 
remote: -----> Compressing...
remote:        Done: 70.2M
remote: -----> Launching...
remote:        Released v6
remote:        https://borrow-buddy.herokuapp.com/ deployed to Heroku
remote: 
remote: Verifying deploy... done.
To https://git.heroku.com/borrow-buddy.git
 * [new branch]      master -> master
```
