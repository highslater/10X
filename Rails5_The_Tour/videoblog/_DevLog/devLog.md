```console
Rails5_The_Tour $ rails new videoblog
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
Using rake 11.3.0
Using concurrent-ruby 1.0.2
Using i18n 0.7.0
Using minitest 5.9.1
Using thread_safe 0.3.5
Using builder 3.2.2
Using erubis 2.7.0
Using mini_portile2 2.1.0
Using rack 2.0.1
Using nio4r 1.2.1
Using websocket-extensions 0.1.2
Using mime-types-data 3.2016.0521
Using arel 7.1.4
Using bundler 1.13.5
Using byebug 9.0.6
Using coffee-script-source 1.10.0
Using execjs 2.7.0
Using method_source 0.8.2
Using thor 0.19.1
Using debug_inspector 0.0.2
Using ffi 1.9.14
Using multi_json 1.12.1
Using rb-fsevent 0.9.8
Using puma 3.6.0
Using sass 3.4.22
Using tilt 2.0.5
Using sqlite3 1.3.12
Using turbolinks-source 5.0.0
Using tzinfo 1.2.2
Using nokogiri 1.6.8.1
Using rack-test 0.6.3
Using sprockets 3.7.0
Using websocket-driver 0.6.4
Using mime-types 3.1
Using coffee-script 2.4.1
Using uglifier 3.0.3
Using rb-inotify 0.9.7
Using turbolinks 5.0.1
Using activesupport 5.0.0.1
Using loofah 2.0.3
Using mail 2.6.4
Using listen 3.0.8
Using rails-dom-testing 2.0.1
Using globalid 0.3.7
Using activemodel 5.0.0.1
Using jbuilder 2.6.0
Using spring 2.0.0
Using rails-html-sanitizer 1.0.3
Using activejob 5.0.0.1
Using activerecord 5.0.0.1
Using spring-watcher-listen 2.0.1
Using actionview 5.0.0.1
Using actionpack 5.0.0.1
Using actioncable 5.0.0.1
Using actionmailer 5.0.0.1
Using railties 5.0.0.1
Using sprockets-rails 3.2.0
Using coffee-rails 4.2.1
Using jquery-rails 4.2.1
Using web-console 3.4.0
Using rails 5.0.0.1
Using sass-rails 5.0.6
Bundle complete! 15 Gemfile dependencies, 62 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
         run  bundle exec spring binstub --all
* bin/rake: spring inserted
* bin/rails: spring inserted 

$ rails generate scaffold video title:string category:string description:text size:integer length:integer
Running via Spring preloader in process 6072
      invoke  active_record
      create    db/migrate/20161110213356_create_videos.rb
      create    app/models/video.rb
      invoke    test_unit
      create      test/models/video_test.rb
      create      test/fixtures/videos.yml
      invoke  resource_route
       route    resources :videos
      invoke  scaffold_controller
      create    app/controllers/videos_controller.rb
      invoke    erb
      create      app/views/videos
      create      app/views/videos/index.html.erb
      create      app/views/videos/edit.html.erb
      create      app/views/videos/show.html.erb
      create      app/views/videos/new.html.erb
      create      app/views/videos/_form.html.erb
      invoke    test_unit
      create      test/controllers/videos_controller_test.rb
      invoke    helper
      create      app/helpers/videos_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/videos/index.json.jbuilder
      create      app/views/videos/show.json.jbuilder
      create      app/views/videos/_video.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/videos.coffee
      invoke    scss
      create      app/assets/stylesheets/videos.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss


 $ cat db/migrate/20161110213356_create_videos.rb
class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :category
      t.text :description
      t.integer :size
      t.integer :length

      t.timestamps
    end
  end
end

$ rails db:migrate
== 20161110213356 CreateVideos: migrating =====================================
-- create_table(:videos)
   -> 0.0025s
== 20161110213356 CreateVideos: migrated (0.0027s) ============================

$ cat db/schema.rb
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161110213356) do

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.text     "description"
    t.integer  "size"
    t.integer  "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

```

```ruby  
# videolog/app/models/video.rb
class Video < ApplicationRecord
  validates_presence_of :title, :category, :description, :size, :length
end

```

```console
Running via Spring preloader in process 9862
Loading development environment (Rails 5.0.0.1)
irb(main):001:0> Video.first
  Video Load (0.3ms)  SELECT  "videos".* FROM "videos" ORDER BY "videos"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<Video id: 1, title: "White belt stretching", category: "White", description: "stretching", size: 300, length: 18, created_at: "2016-11-10 21:40:31", updated_at: "2016-11-10 21:40:31">
irb(main):002:0> Video.all
  Video Load (0.4ms)  SELECT "videos".* FROM "videos"
=> #<ActiveRecord::Relation [#<Video id: 1, title: "White belt stretching", category: "White", description: "stretching", size: 300, length: 18, created_at: "2016-11-10 21:40:31", updated_at: "2016-11-10 21:40:31">, #<Video id: 2, title: "Created in console", category: "testing", description: "testing the insertion of data from the console", size: 1, length: 2, created_at: "2016-11-10 21:57:29", updated_at: "2016-11-10 21:57:29">]>
irb(main):003:0> Video.where(created_at: Date.yesterday..Date.tomorrow).to_sql
=> "SELECT \"videos\".* FROM \"videos\" WHERE (\"videos\".\"created_at\" BETWEEN '2016-11-09' AND '2016-11-11')"
irb(main):012:0* Video.where(created_at: Date.yesterday..Date.tomorrow)
  Video Load (0.6ms)  SELECT "videos".* FROM "videos" WHERE ("videos"."created_at" BETWEEN ? AND ?)  [["created_at", Wed, 09 Nov 2016], ["created_at", Fri, 11 Nov 2016]]
=> #<ActiveRecord::Relation [#<Video id: 1, title: "White belt stretching", category: "White", description: "stretching", size: 300, length: 18, created_at: "2016-11-10 21:40:31", updated_at: "2016-11-10 21:40:31">, #<Video id: 2, title: "Created in console", category: "testing", description: "testing the insertion of data from the console", size: 1, length: 2, created_at: "2016-11-10 21:57:29", updated_at: "2016-11-10 21:57:29">]>

irb(main):013:0> Video
=> Video(id: integer, title: string, category: string, description: text, size: integer, length: integer, created_at: datetime, updated_at: datetime)
irb(main):014:0> Video.create!(title: 'Hello from console', category: 'testing', description: 'testing console input', size: 1, length: 2)
   (0.2ms)  begin transaction
  SQL (0.7ms)  INSERT INTO "videos" ("title", "category", "description", "size", "length", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["title", "Hello from console"], ["category", "testing"], ["description", "testing console input"], ["size", 1], ["length", 2], ["created_at", 2016-11-10 23:01:45 UTC], ["updated_at", 2016-11-10 23:01:45 UTC]]
   (115.8ms)  commit transaction
=> #<Video id: 3, title: "Hello from console", category: "testing", description: "testing console input", size: 1, length: 2, created_at: "2016-11-10 23:01:45", updated_at: "2016-11-10 23:01:45">
```


```console
$ rails generate resource question video:references body:text
Running via Spring preloader in process 10084
      invoke  active_record
      create    db/migrate/20161110230955_create_questions.rb
      create    app/models/question.rb
      invoke    test_unit
      create      test/models/question_test.rb
      create      test/fixtures/questions.yml
      invoke  controller
      create    app/controllers/questions_controller.rb
      invoke    erb
      create      app/views/questions
      invoke    test_unit
      create      test/controllers/questions_controller_test.rb
      invoke    helper
      create      app/helpers/questions_helper.rb
      invoke      test_unit
      invoke    assets
      invoke      coffee
      create        app/assets/javascripts/questions.coffee
      invoke      scss
      create        app/assets/stylesheets/questions.scss
      invoke  resource_route
       route    resources :questions


$ cat db/migrate/20161110230955_create_questions.rb
class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :video, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end


$ rails db:migrate
== 20161110230955 CreateQuestions: migrating ==================================
-- create_table(:questions)
   -> 0.0087s
== 20161110230955 CreateQuestions: migrated (0.0089s) =========================

$ cat db/schema.rb
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161110230955) do

  create_table "questions", force: :cascade do |t|
    t.integer  "video_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["video_id"], name: "index_questions_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.text     "description"
    t.integer  "size"
    t.integer  "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

```

```ruby
#videoblog/config/routes.rb
Rails.application.routes.draw do
  resources :videos do
    resources :questions
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

```

```console
$ rails routes
             Prefix Verb   URI Pattern                                    Controller#Action
    video_questions GET    /videos/:video_id/questions(.:format)          questions#index
                    POST   /videos/:video_id/questions(.:format)          questions#create
 new_video_question GET    /videos/:video_id/questions/new(.:format)      questions#new
edit_video_question GET    /videos/:video_id/questions/:id/edit(.:format) questions#edit
     video_question GET    /videos/:video_id/questions/:id(.:format)      questions#show
                    PATCH  /videos/:video_id/questions/:id(.:format)      questions#update
                    PUT    /videos/:video_id/questions/:id(.:format)      questions#update
                    DELETE /videos/:video_id/questions/:id(.:format)      questions#destroy
             videos GET    /videos(.:format)                              videos#index
                    POST   /videos(.:format)                              videos#create
          new_video GET    /videos/new(.:format)                          videos#new
         edit_video GET    /videos/:id/edit(.:format)                     videos#edit
              video GET    /videos/:id(.:format)                          videos#show
                    PATCH  /videos/:id(.:format)                          videos#update
                    PUT    /videos/:id(.:format)                          videos#update
                    DELETE /videos/:id(.:format)                          videos#destroy

```

```ruby
#app/models/question.rb
class Question < ApplicationRecord
  belongs_to :video
end
```

```ruby
# videolog/app/models/video.rb
class Video < ApplicationRecord
  has_many :questions
  validates_presence_of :title, :category, :description, :size, :length
end
```

```console
Running via Spring preloader in process 13892
Loading development environment (Rails 5.0.0.1)
irb(main):001:0> Video.first
  Video Load (0.4ms)  SELECT  "videos".* FROM "videos" ORDER BY "videos"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> #<Video id: 1, title: "White belt stretching", category: "White", description: "stretching", size: 300, length: 18, created_at: "2016-11-10 21:40:31", updated_at: "2016-11-10 21:40:31">
irb(main):002:0> Video.first.questions
  Video Load (0.3ms)  SELECT  "videos".* FROM "videos" ORDER BY "videos"."id" ASC LIMIT ?  [["LIMIT", 1]]
  Question Load (0.3ms)  SELECT "questions".* FROM "questions" WHERE "questions"."video_id" = ?  [["video_id", 1]]
=> #<ActiveRecord::Associations::CollectionProxy []>
irb(main):003:0> Video.first.questions.create! body: 'This is a question from the console'
  Video Load (0.3ms)  SELECT  "videos".* FROM "videos" ORDER BY "videos"."id" ASC LIMIT ?  [["LIMIT", 1]]
   (0.2ms)  begin transaction
  SQL (0.5ms)  INSERT INTO "questions" ("video_id", "body", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["video_id", 1], ["body", "This is a question from the console"], ["created_at", 2016-11-10 23:26:13 UTC], ["updated_at", 2016-11-10 23:26:13 UTC]]
   (135.2ms)  commit transaction
=> #<Question id: 1, video_id: 1, body: "This is a question from the console", created_at: "2016-11-10 23:26:13", updated_at: "2016-11-10 23:26:13">
irb(main):004:0> Video.first.questions
  Video Load (0.3ms)  SELECT  "videos".* FROM "videos" ORDER BY "videos"."id" ASC LIMIT ?  [["LIMIT", 1]]
  Question Load (0.2ms)  SELECT "questions".* FROM "questions" WHERE "questions"."video_id" = ?  [["video_id", 1]]
=> #<ActiveRecord::Associations::CollectionProxy [#<Question id: 1, video_id: 1, body: "This is a question from the console", created_at: "2016-11-10 23:26:13", updated_at: "2016-11-10 23:26:13">]>

```

```'html.erb'
<!-- videoblog/app/views/questions/_new.html.erb -->
<%= form_for([ @video, Question.new ], remote: true) do |form| %>
  Your Comment:
  <br>
  <%= form.text_area :body, size:'50x20' %>
  <br>
  <%= form.submit %>
<% end %>
```


```'html.erb'
<!-- videoblog/app/views/questions/_question.html.erb -->
<%= question.body %> -- <%= question.created_at.to_s(:long) %>

```


```ruby

```








