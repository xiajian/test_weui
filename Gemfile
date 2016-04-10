source 'https://ruby.taobao.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# api文档: bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'puma'

gem 'rails_admin'

gem 'mysql2', '0.3.20'

gem 'weui-rails'             # 微信的 mobile 样式库: https://github.com/weui/weui
gem 'adminlte2-rails'        # 后台界面模板: https://github.com/nicolas-besnard/adminlte2-rails
gem 'slim-rails'

# 开发相关 gem 包
group :development do
  gem 'quiet_assets'         # https://github.com/evrone/quiet_assets
  gem 'better_errors'        # https://github.com/charliesome/better_errors
  gem 'binding_of_caller'    # 与 better_errors 配套使用
  gem 'rack-mini-profiler'   # https://github.com/MiniProfiler/rack-mini-profiler
  gem 'spring'               # 保持应用程序在后台运行，从而加速开发的速度。Read more: https://github.com/rails/spring
  gem 'pry-rails'            # https://github.com/rweng/pry-rails
  gem 'awesome_print'        # https://github.com/michaeldv/awesome_print
  gem 'rubocop'              # ruby 静态分析工具: https://github.com/bbatsov/rubocop
  gem 'cane'                 # 代码复杂度检查工具: https://github.com/square/cane
  gem 'lol_dba'              # 寻找生成需要健索引的表: https://github.com/plentz/lol_dba
  gem 'bullet'               # 寻找 N+1 工具: https://github.com/flyerhzm/bullet
  gem 'guard'
  # https://github.com/guard/guard-livereload
  gem 'guard-livereload', '~> 2.5', require: false
end

# js 相关 gem 包

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# 在 js 中使用 rails 的命名路由: https://github.com/railsware/js-routes
gem 'js-routes'

# 执行页面特定的 js 的方案: https://github.com/kbparagua/paloma
gem 'paloma'

# js辅助工具函数: https://github.com/jashkenas/underscore
gem 'underscore-rails'

# Hash类扩展 - https://github.com/intridea/hashie
gem 'hashie', '3.2.0'

# 注意，依赖的 bundler 的版本比较高

source 'https://rails-assets.org' do
  # 快速，简单的 MVVM 框架: https://github.com/vuejs/vue/
  gem 'rails-assets-vue'

  # socket 客户端: https://github.com/sockjs/sockjs-client
  gem 'rails-assets-sockjs-client'

  # https://github.com/aslakhellesoy/eventsource
  gem 'rails-assets-eventsource-polyfill'

  # https://github.com/Yaffle/EventSource
  gem 'rails-assets-EventSource'
end

# yml 配置管理 - https://github.com/binarylogic/settingslogic
gem 'settingslogic'

# 尝试 msgpack 类型的序列化, 尝试一下
gem 'msgpack'
gem 'redis-rails'

## websocket 相关的 gem 包

gem 'websocket-rails'

# https://github.com/ngauthier/tubesock
gem 'tubesock'

# https://github.com/igrigorik/em-websocket
gem 'em-websocket'

# 处理 websocket 的请求, server 对 server 的通信请求
gem 'em-http-request'

# 利用了 EventMachine: https://github.com/AF83/em-eventsource
gem 'em-eventsource'