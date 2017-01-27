highslater@mint64 ~/Desktop/10X/techmakerTV $ rails --version
Rails 5.0.1
highslater@mint64 ~/Desktop/10X/techmakerTV $ ruby --version
ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux]
highslater@mint64 ~/Desktop/10X/techmakerTV $ rails new HogBlog
      create  
      create  README.md
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      create  app/assets/config/manifest.js
      create  app/assets/javascripts/application.js
      create  app/assets/javascripts/cable.js
      create  app/assets/stylesheets/application.css
      create  app/channels/application_cable/channel.rb
      create  app/channels/application_cable/connection.rb
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/jobs/application_job.rb
      create  app/mailers/application_mailer.rb
      create  app/models/application_record.rb
      create  app/views/layouts/application.html.erb
      create  app/views/layouts/mailer.html.erb
      create  app/views/layouts/mailer.text.erb
      create  app/assets/images/.keep
      create  app/assets/javascripts/channels
      create  app/assets/javascripts/channels/.keep
      create  app/controllers/concerns/.keep
      create  app/models/concerns/.keep
      create  bin
      create  bin/bundle
      create  bin/rails
      create  bin/rake
      create  bin/setup
      create  bin/update
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/secrets.yml
      create  config/cable.yml
      create  config/puma.rb
      create  config/spring.rb
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/application_controller_renderer.rb
      create  config/initializers/assets.rb
      create  config/initializers/backtrace_silencers.rb
      create  config/initializers/cookies_serializer.rb
      create  config/initializers/cors.rb
      create  config/initializers/filter_parameter_logging.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/new_framework_defaults.rb
      create  config/initializers/session_store.rb
      create  config/initializers/wrap_parameters.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  lib
      create  lib/tasks
      create  lib/tasks/.keep
      create  lib/assets
      create  lib/assets/.keep
      create  log
      create  log/.keep
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/apple-touch-icon-precomposed.png
      create  public/apple-touch-icon.png
      create  public/favicon.ico
      create  public/robots.txt
      create  test/fixtures
      create  test/fixtures/.keep
      create  test/fixtures/files
      create  test/fixtures/files/.keep
      create  test/controllers
      create  test/controllers/.keep
      create  test/mailers
      create  test/mailers/.keep
      create  test/models
      create  test/models/.keep
      create  test/helpers
      create  test/helpers/.keep
      create  test/integration
      create  test/integration/.keep
      create  test/test_helper.rb
      create  tmp
      create  tmp/.keep
      create  tmp/cache
      create  tmp/cache/assets
      create  vendor/assets/javascripts
      create  vendor/assets/javascripts/.keep
      create  vendor/assets/stylesheets
      create  vendor/assets/stylesheets/.keep
      remove  config/initializers/cors.rb
         run  bundle install
Fetching gem metadata from https://rubygems.org/..........
Fetching version metadata from https://rubygems.org/..
Fetching dependency metadata from https://rubygems.org/.
Resolving dependencies....
Using rake 12.0.0
Using concurrent-ruby 1.0.4
Using i18n 0.7.0
Using minitest 5.10.1
Using thread_safe 0.3.5
Using builder 3.2.3
Using erubis 2.7.0
Using mini_portile2 2.1.0
Using rack 2.0.1
Using nio4r 1.2.1
Using websocket-extensions 0.1.2
Using mime-types-data 3.2016.0521
Using arel 7.1.4
Using bundler 1.13.5
Using byebug 9.0.6
Using coffee-script-source 1.12.2
Using execjs 2.7.0
Using method_source 0.8.2
Using thor 0.19.4
Using debug_inspector 0.0.2
Using ffi 1.9.17
Using multi_json 1.12.1
Using rb-fsevent 0.9.8
Using puma 3.6.2
Using sass 3.4.23
Using tilt 2.0.6
Using sqlite3 1.3.13
Using turbolinks-source 5.0.0
Using tzinfo 1.2.2
Using nokogiri 1.7.0.1
Using rack-test 0.6.3
Using sprockets 3.7.1
Using websocket-driver 0.6.5
Using mime-types 3.1
Using coffee-script 2.4.1
Using uglifier 3.0.4
Using rb-inotify 0.9.7
Using turbolinks 5.0.1
Using activesupport 5.0.1
Using loofah 2.0.3
Using mail 2.6.4
Using listen 3.0.8
Using rails-dom-testing 2.0.2
Using globalid 0.3.7
Using activemodel 5.0.1
Using jbuilder 2.6.1
Using spring 2.0.1
Using rails-html-sanitizer 1.0.3
Using activejob 5.0.1
Using activerecord 5.0.1
Using spring-watcher-listen 2.0.1
Using actionview 5.0.1
Using actionpack 5.0.1
Using actioncable 5.0.1
Using actionmailer 5.0.1
Using railties 5.0.1
Using sprockets-rails 3.2.0
Using coffee-rails 4.2.1
Using jquery-rails 4.2.2
Using web-console 3.4.0
Using rails 5.0.1
Using sass-rails 5.0.6
Bundle complete! 15 Gemfile dependencies, 62 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
         run  bundle exec spring binstub --all
* bin/rake: spring inserted
* bin/rails: spring inserted
highslater@mint64 ~/Desktop/10X/techmakerTV $ cd HogBlog/
highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ ls -hal
total 76K
drwxr-xr-x 12 highslater highslater 4.0K Jan 26 15:33 .
drwxr-xr-x  6 highslater highslater 4.0K Jan 26 15:33 ..
drwxr-xr-x 10 highslater highslater 4.0K Jan 26 15:33 app
drwxr-xr-x  2 highslater highslater 4.0K Jan 26 15:33 bin
drwxr-xr-x  5 highslater highslater 4.0K Jan 26 15:33 config
-rw-r--r--  1 highslater highslater  130 Jan 26 15:33 config.ru
drwxr-xr-x  2 highslater highslater 4.0K Jan 26 15:33 db
-rw-r--r--  1 highslater highslater 1.9K Jan 26 15:33 Gemfile
-rw-r--r--  1 highslater highslater 4.2K Jan 26 15:33 Gemfile.lock
-rw-r--r--  1 highslater highslater  543 Jan 26 15:33 .gitignore
drwxr-xr-x  4 highslater highslater 4.0K Jan 26 15:33 lib
drwxr-xr-x  2 highslater highslater 4.0K Jan 26 15:33 log
drwxr-xr-x  2 highslater highslater 4.0K Jan 26 15:33 public
-rw-r--r--  1 highslater highslater  227 Jan 26 15:33 Rakefile
-rw-r--r--  1 highslater highslater  374 Jan 26 15:33 README.md
drwxr-xr-x  8 highslater highslater 4.0K Jan 26 15:33 test
drwxr-xr-x  3 highslater highslater 4.0K Jan 26 15:33 tmp
drwxr-xr-x  3 highslater highslater 4.0K Jan 26 15:33 vendor


highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ rails server
=> Booting Puma
=> Rails 5.0.1 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.6.2 (ruby 2.2.2-p95), codename: Sleepy Sunday Serenity
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
Started GET "/" for 127.0.0.1 at 2017-01-26 15:35:00 -0500
Processing by Rails::WelcomeController#index as HTML
  Parameters: {"internal"=>true}
  Rendering /home/highslater/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/railties-5.0.1/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /home/highslater/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/railties-5.0.1/lib/rails/templates/rails/welcome/index.html.erb (5.2ms)
Completed 200 OK in 28ms (Views: 15.6ms | ActiveRecord: 0.0ms)

Put image 1 here




gem 'bootstrap', '~> 4.0.0.alpha6'

highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ bundle install
Resolving dependencies...
Using rake 12.0.0
Using concurrent-ruby 1.0.4
Using i18n 0.7.0
Using minitest 5.10.1
Using thread_safe 0.3.5
Using builder 3.2.3
Using erubis 2.7.0
Using mini_portile2 2.1.0
Using rack 2.0.1
Using nio4r 1.2.1
Using websocket-extensions 0.1.2
Using mime-types-data 3.2016.0521
Using arel 7.1.4
Using execjs 2.7.0
Using sass 3.4.23
Using bundler 1.13.5
Using byebug 9.0.6
Using coffee-script-source 1.12.2
Using method_source 0.8.2
Using thor 0.19.4
Using debug_inspector 0.0.2
Using ffi 1.9.17
Using multi_json 1.12.1
Using rb-fsevent 0.9.8
Using puma 3.6.2
Using tilt 2.0.6
Using sqlite3 1.3.13
Using turbolinks-source 5.0.0
Using tzinfo 1.2.2
Using nokogiri 1.7.0.1
Using rack-test 0.6.3
Using sprockets 3.7.1
Using websocket-driver 0.6.5
Using mime-types 3.1
Using autoprefixer-rails 6.7.0
Using uglifier 3.0.4
Using coffee-script 2.4.1
Using rb-inotify 0.9.7
Using turbolinks 5.0.1
Using activesupport 5.0.1
Using loofah 2.0.3
Using mail 2.6.4
Using bootstrap 4.0.0.alpha6
Using listen 3.0.8
Using rails-dom-testing 2.0.2
Using globalid 0.3.7
Using activemodel 5.0.1
Using jbuilder 2.6.1
Using spring 2.0.1
Using rails-html-sanitizer 1.0.3
Using activejob 5.0.1
Using activerecord 5.0.1
Using spring-watcher-listen 2.0.1
Using actionview 5.0.1
Using actionpack 5.0.1
Using actioncable 5.0.1
Using actionmailer 5.0.1
Using railties 5.0.1
Using sprockets-rails 3.2.0
Using coffee-rails 4.2.1
Using jquery-rails 4.2.2
Using web-console 3.4.0
Using rails 5.0.1
Using sass-rails 5.0.6
Bundle complete! 16 Gemfile dependencies, 64 gems now installed.

/* Custom bootstrap variables must be set or imported *before* bootstrap. */
@import "bootstrap";

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .



gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+

highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ bundle install
Resolving dependencies...
Using rake 12.0.0
Using concurrent-ruby 1.0.4
Using i18n 0.7.0
Using minitest 5.10.1
Using thread_safe 0.3.5
Using builder 3.2.3
Using erubis 2.7.0
Using mini_portile2 2.1.0
Using rack 2.0.1
Using nio4r 1.2.1
Using websocket-extensions 0.1.2
Using mime-types-data 3.2016.0521
Using arel 7.1.4
Using execjs 2.7.0
Using sass 3.4.23
Using bundler 1.13.5
Using byebug 9.0.6
Using coffee-script-source 1.12.2
Using method_source 0.8.2
Using thor 0.19.4
Using debug_inspector 0.0.2
Using ffi 1.9.17
Using multi_json 1.12.1
Using rb-fsevent 0.9.8
Using puma 3.6.2
Using tilt 2.0.6
Using sqlite3 1.3.13
Using turbolinks-source 5.0.0
Using tzinfo 1.2.2
Using nokogiri 1.7.0.1
Using rack-test 0.6.3
Using sprockets 3.7.1
Using websocket-driver 0.6.5
Using mime-types 3.1
Using autoprefixer-rails 6.7.0
Using uglifier 3.0.4
Using coffee-script 2.4.1
Using rb-inotify 0.9.7
Using turbolinks 5.0.1
Using activesupport 5.0.1
Using loofah 2.0.3
Using mail 2.6.4
Using bootstrap 4.0.0.alpha6
Using listen 3.0.8
Using rails-dom-testing 2.0.2
Using globalid 0.3.7
Using activemodel 5.0.1
Using jbuilder 2.6.1
Using spring 2.0.1
Using rails-html-sanitizer 1.0.3
Using activejob 5.0.1
Using activerecord 5.0.1
Using spring-watcher-listen 2.0.1
Using actionview 5.0.1
Using friendly_id 5.1.0
Using actionpack 5.0.1
Using actioncable 5.0.1
Using actionmailer 5.0.1
Using railties 5.0.1
Using sprockets-rails 3.2.0
Using coffee-rails 4.2.1
Using jquery-rails 4.2.2
Using web-console 3.4.0
Using rails 5.0.1
Using sass-rails 5.0.6
Bundle complete! 17 Gemfile dependencies, 65 gems now installed.


highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ rails generate friendly_id
Running via Spring preloader in process 14992
Expected string default value for '--jbuilder'; got true (boolean)
      create  db/migrate/20170126220012_create_friendly_id_slugs.rb
      create  config/initializers/friendly_id.rb

class CreateFriendlyIdSlugs < ActiveRecord::Migration
  def change
    create_table :friendly_id_slugs do |t|
      t.string   :slug,           :null => false
      t.integer  :sluggable_id,   :null => false
      t.string   :sluggable_type, :limit => 50
      t.string   :scope
      t.datetime :created_at
    end
    add_index :friendly_id_slugs, :sluggable_id
    add_index :friendly_id_slugs, [:slug, :sluggable_type]
    add_index :friendly_id_slugs, [:slug, :sluggable_type, :scope], :unique => true
    add_index :friendly_id_slugs, :sluggable_type
  end
end


highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ rails generate scaffold post title:string body:text description:text slug:string:uniq
Running via Spring preloader in process 15073
Expected string default value for '--jbuilder'; got true (boolean)
      invoke  active_record
      create    db/migrate/20170126220228_create_posts.rb
      create    app/models/post.rb
      invoke    test_unit
      create      test/models/post_test.rb
      create      test/fixtures/posts.yml
      invoke  resource_route
       route    resources :posts
      invoke  scaffold_controller
      create    app/controllers/posts_controller.rb
      invoke    erb
      create      app/views/posts
      create      app/views/posts/index.html.erb
      create      app/views/posts/edit.html.erb
      create      app/views/posts/show.html.erb
      create      app/views/posts/new.html.erb
      create      app/views/posts/_form.html.erb
      invoke    test_unit
      create      test/controllers/posts_controller_test.rb
      invoke    helper
      create      app/helpers/posts_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/posts/index.json.jbuilder
      create      app/views/posts/show.json.jbuilder
      create      app/views/posts/_post.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/posts.coffee
      invoke    scss
      create      app/assets/stylesheets/posts.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss

class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, unique: true
  end
end


highslater@mint64 ~/Desktop/10X/techmakerTV/HogBlog $ rails db:migrate
== 20170126220012 CreateFriendlyIdSlugs: migrating ============================
-- create_table(:friendly_id_slugs, {})
   -> 0.0030s
-- add_index(:friendly_id_slugs, :sluggable_id)
   -> 0.0011s
-- add_index(:friendly_id_slugs, [:slug, :sluggable_type])
   -> 0.0012s
-- add_index(:friendly_id_slugs, [:slug, :sluggable_type, :scope], {:unique=>true})
   -> 0.0017s
-- add_index(:friendly_id_slugs, :sluggable_type)
   -> 0.0021s
== 20170126220012 CreateFriendlyIdSlugs: migrated (0.0098s) ===================

== 20170126220228 CreatePosts: migrating ======================================
-- create_table(:posts)
   -> 0.0028s
-- add_index(:posts, :slug, {:unique=>true})
   -> 0.0017s
== 20170126220228 CreatePosts: migrated (0.0049s) =============================


class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_friendly_id?
    title_changed?
  end
end


Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


put image_02.png here
put image_03.png here
put image_04.png here
put image_05.png here

remove from form 

<div class="field">
    <%= f.label :slug %>
    <%= f.text_field :slug %>
</div>


, :slug

put image_06.png here

<% provide(:page_title, @post.title) %>
<p id="notice"><%= notice %></p>
<p>
  <strong>Title:</strong>
  <%= @post.title %>
</p>
<p>
  <strong>Body:</strong>
  <%= @post.body %>
</p>
<p>
  <strong>Description:</strong>
  <%= @post.description %>
</p>
<p>
  <strong>Slug:</strong>
  <%= @post.slug %>
</p>
<%= link_to 'Edit', edit_post_path(@post) %> |
<%= link_to 'Back', posts_path %>

<% provide(:page_title, 'New Post') %>
<h1>New Post</h1>
<%= render 'form', post: @post %>
<%= link_to 'Back', posts_path %>

<% provide(:page_title, "Edit #{@post.title}") %>
<h1>Editing Post</h1>
<%= render 'form', post: @post %>
<%= link_to 'Show', @post %> |
<%= link_to 'Back', posts_path %>

<% provide(:page_title, 'All Posts') %>
<p id="notice"><%= notice %></p>
<h1>Posts</h1>
<table>
  <thead>
    <tr>
      <th>Title</th>
      <th>Body</th>
      <th>Description</th>
      <th>Slug</th>
      <th colspan="3"></th>
    </tr>
  </thead>
  <tbody>
    <% @posts.each do |post| %>
      <tr>
        <td><%= post.title %></td>
        <td><%= post.body %></td>
        <td><%= post.description %></td>
        <td><%= post.slug %></td>
        <td><%= link_to 'Show', post %></td>
        <td><%= link_to 'Edit', edit_post_path(post) %></td>
        <td><%= link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>
<br>
<%= link_to 'New Post', new_post_path %>

