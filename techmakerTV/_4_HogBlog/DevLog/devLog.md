
```console
$ rails --version
Rails 5.0.1
$ ruby --version
ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux]
$ rails new HogBlog
      create  
      create  README.md
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app ...
      
      ...
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
Using minitest 5.10.1 ...

...
Using rails 5.0.1
Using sass-rails 5.0.6
Bundle complete! 15 Gemfile dependencies, 62 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
         run  bundle exec spring binstub --all
* bin/rake: spring inserted
* bin/rails: spring inserted
```

```console
$ cd HogBlog/
$ ls -hal
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
```


```console
$ rails server
=> Booting Puma
=> Rails 5.0.1 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.6.2 (ruby 2.2.2-p95), codename: Sleepy Sunday Serenity
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop

```

Put image 1 here

Put link to bootstrap here

```rb
## /Gemfile

## Added
gem 'bootstrap', '~> 4.0.0.alpha6'
```

```console
$ bundle install
Resolving dependencies...
Using rake 12.0.0
Using concurrent-ruby 1.0.4 ...

Using bootstrap 4.0.0.alpha6

...
Using rails 5.0.1
Using sass-rails 5.0.6
Bundle complete! 16 Gemfile dependencies, 64 gems now installed.
```

```javascript
/* app/assets/stylesheets/application.scss */

/* Custom bootstrap variables must be set or imported *before* bootstrap. */
@import "bootstrap";
```

```javascript
/* app/assets/javascripts/application.js */

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
```


Put link to bootstrap here 


```rb
## /Gemfile

## Added
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'friendly_id', '~> 5.1.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
```

```console
$ bundle install
Resolving dependencies...
Using rake 12.0.0
Using concurrent-ruby 1.0.4
Using i18n 0.7.0 ...

...
Using sass-rails 5.0.6
Bundle complete! 17 Gemfile dependencies, 65 gems now installed.
```

```console
$ rails generate friendly_id
Running via Spring preloader in process 14992
Expected string default value for '--jbuilder'; got true (boolean)
      create  db/migrate/20170126220012_create_friendly_id_slugs.rb
      create  config/initializers/friendly_id.rb
```

```rb
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
```

```console
$ rails generate scaffold post title:string body:text description:text slug:string:uniq
Running via Spring preloader in process 15073
Expected string default value for '--jbuilder'; got true (boolean)
      invoke  active_record
      create    db/migrate/20170126220228_create_posts.rb
      create    app/models/post.rb
      invoke    test_unit ...
      
      ...
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss
```

```rb
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
```

```console
$ rails db:migrate
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

```

```rb
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_friendly_id?
    title_changed?
  end
end
```

```rb
Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
```

put image_02.png here
put image_03.png here
put image_04.png here
put image_05.png here

remove from form 
```html
<div class="field">
    <%= f.label :slug %>
    <%= f.text_field :slug %>
</div>
```

, :slug

put image_06.png here
```html
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
```

```html
<% provide(:page_title, 'New Post') %>
<h1>New Post</h1>
<%= render 'form', post: @post %>
<%= link_to 'Back', posts_path %>
```

```html
<% provide(:page_title, "Edit #{@post.title}") %>
<h1>Editing Post</h1>
<%= render 'form', post: @post %>
<%= link_to 'Show', @post %> |
<%= link_to 'Back', posts_path %>
```

```html
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
```