
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

Success Page  

 ![Success Page] (./Images/image_01.png)

[twbs/bootstrap-rubygem](https://github.com/twbs/bootstrap-rubygem "Get the Gem")

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


[norman/friendly_id](https://github.com/norman/friendly_id "Get the Gem")

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

Posts Page

![Posts Page] (./Images/image_02.png)  

New Post Page  

![New Post Page] (./Images/image_03.png)  

My First Post Page

![My First Post Page] (./Images/image_04.png)  

Posts Page  

![Posts Page] (./Images/image_05.png)  


remove from form 
```html
<div class="field">
    <%= f.label :slug %>
    <%= f.text_field :slug %>
</div>
```

```rb
# app/controllers/posts_controller.rb

# Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :body, :description)
  end  
```


Editing Post Page  

![Editing Post Page] (./Images/image_06.png)  

```html 
<!-- app/views/layouts/application.html.erb -->

<!DOCTYPE html>
<html>
  <head>
    <title><%= yield(:page_title) %> | HogBlog</title>
    <%= csrf_meta_tags %>
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>
  <body>
    <%= yield %>
  </body>
</html>
```

```html
<!-- app/views/posts/show.html.erb -->

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
<!-- app/views/posts/new.html.erb -->

<% provide(:page_title, 'New Post') %>
<h1>New Post</h1>
<%= render 'form', post: @post %>
<%= link_to 'Back', posts_path %>
```

```html
<!-- app/views/posts/edit.html.erb -->

<% provide(:page_title, "Edit #{@post.title}") %>
<h1>Editing Post</h1>
<%= render 'form', post: @post %>
<%= link_to 'Show', @post %> |
<%= link_to 'Back', posts_path %>
```

```html
<!-- app/views/posts/index.html.erb -->

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


START SECOND VIDEO HERE  
LAYOUT AND DESIGN

```html
<!-- app/views/layouts/application.html.erb -->

<!DOCTYPE html>
<html>
  <head>
    <title><%= yield(:page_title) %> | HogBlog</title>
    <%= csrf_meta_tags %>
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>
  <body>
    <%= render 'layouts/navbar' %>
    <div class="container <%= controller_name %> <%= action_name %>">
      <%= yield %>
    </div>
  </body>
</html>
```


```html 
<!-- app/views/layouts/_navbar.html.erb-->

<!-- -->
<nav class="navbar navbar-toggleable-sm navbar-light bg-faded">
  <!-- -->
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar" aria-controls="exCollapsingNavbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
  </button>
  <!-- -->
  <a class="navbar-brand" href="/">Hog<span class="light">Blog</span></a>
  <!-- -->
  <div class="collapse navbar-collapse" id="exCollapsingNavbar">
    <!-- -->
    <ul class="navbar-nav ml-auto">
      <!-- -->
      <li class="nav-item">
        <%= link_to 'Blog', root_path, class: "nav-link #{yield(:blog_active)}" %>
      </li>
      <!-- -->
      <li class="nav-item">
        <%= link_to 'About', about_path, class: "nav-link #{yield(:about_active)}" %>
      </li>
      <!-- -->
      <li class="nav-item">
        <%= link_to 'Contact', contact_path, class: "nav-link #{yield(:contact_active)}" %>
      </li>
      <!-- -->
    </ul>
    <!-- -->
  </div>
  <!-- -->
</nav>
<!-- -->
```

```rb 
# config/routes.rb

# The Rails router recognizes URLs and dispatches them to a controller's action.
# It can also generate paths and URLs,
# avoiding the need to hardcode strings in your views.

Rails.application.routes.draw do

  # get 'about' => 'pages#about', as: :about
  get 'about', to: 'pages#about', as: 'about'
  # get 'contact' => 'pages#contact', as: :contact
  get 'contact', to: 'pages#contact', as: 'contact'

  root to: 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
```

```html  
<!-- app/views/pages/contact.html.erb -->

<h1>This Is The Contact Page</h1>
```

```html  
<!-- app/views/pages/about.html.erb -->

<h1>This Is The About Page</h1>
```

```scss  
/* app/assets/stylesheets/_navbar.scss */

.navbar {
    border-radius: 0;
    margin-bottom: 20px;
    .navbar-brand {
        font-weight: bolder;
        .light {
            font-weight: 300;
        }
    }
    .navbar-toggler {
        outline: none;
    }
}
```

```html 
<!-- app/views/pages/contact.html.erb -->
<% provide(:contact_active, 'active') %>

<!-- app/views/pages/about.html.erb -->
<% provide(:about_active, 'active') %>

<!-- all blog sub-pages -->
<% provide(:blog_active, 'active') %>
```

13:00

```html  
<!-- app/views/posts/index.html.erb -->

<% provide(:page_title, 'All Posts') %>
<% provide(:blog_active, 'active') %>
<div class="row">
  <% @posts.each do |post| %>
    <%= render post %>
  <% end %>
</div>
```

```html  
<!-- app/views/posts/_post.html.erb -->

<div class="col-sm-6 col-lg-4">
  <div class="card">
    <div class="card-topper" style='background-image: url(https://static.pexels.com/photos/63285/pig-alp-rona-furna-sow-63285.jpeg);'>
    </div>
    <div class="card-block">
      <h4 class="card-title"><%= link_to post.title, post %></h4>
      <p class="published-date">Published Jan 14, 2016</p>
      <p class="card-text"><%= truncate(post.description, length: 130) %></p>
      <%= link_to "Read", post, class:'btn btn-read' %>
    </div>
  </div>
</div>
```

```scss  
/* app/assets/stylesheets/posts.scss */

.posts.index {
  .card {
    border: none;
    border-radius: 0;
    border-bottom: 1px solid #181818;
    height: 400px;
    margin-bottom: 20px;
    .card-topper {
      height:200px;
      width: 100%;
      background-size: cover;
      background-position: center;
    }
    .card-block {
      padding: 10px;
      .btn-read {
        background-color: #e8e8e8;
        font-weight: 300;
        border-radius: 0;
        color: black;
        &:hover {
          background-color: #d8d8d8;
        }
      }
      .card-title {
        font-size: 1.3rem;
        margin-bottom: 0.5rem;
        a {
          color: black;
          text-decoration: none;

        }
        &:hover {
          font-size: 1.5rem;
          margin-bottom: 0.25rem;
          a {
            color: black;
          }
        }
      }
      .published-date {
        font-size: 0.8rem;
        color: #787878;
        font-weight: 300;
        margin-top: 0.3rem;
        margin-bottom: 0.3rem;
      }
      .card-text {
        font-size: 0.9rem;
      }
    }
  }
}

.posts.edit, .posts.new {
  .card {
    .card-block {
      background-color: gray; 
    }
    .card-title {
      margin-bottom: 0;
      font-size: 18px;
    }
    .list-group-item {
      padding: 10px;
      border-right: 0px;
      border-left: 0px;
      input[type='text'], textarea {
        font-size: 14px;
        background-color: gray;
      }
      textarea {
        height: 172px;
      }
    }
  }
}

@media screen and (min-width: 34em) {
  .posts.index.card {
    height: 440px;
  }
}

@media screen and (min-width: 48em) {
  .posts.index.card {
    height: 420px;
  }
}

@media screen and (min-width: 75em) {
  .posts.index.card {
    height: 415px;
  }
}
```

```scss  
/* app/assets/stylesheets/application.scss */

/* Custom bootstrap variables must be set or imported *before* bootstrap. */
@import "bootstrap";
@import "navbar";
@import "posts";
```

```html  
<!-- app/views/posts/show.html.erb -->

<% provide(:page_title, @post.title) %>
<% provide(:blog_active, 'active') %>
<div class="row">
  <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
    <div class="text-center">
      <!-- Center aligned text on all viewport sizes -->
      <h1><%= @post.title %></h1>
      <p>Jan 14, 2016</p>
    </div>
    <div><%= @post.body %></div>
  </div>
</div>
```

```rb  
## app/models/post.rb

class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :most_recent, -> {order(id: :desc)}

  def should_generate_friendly_id?
    title_changed?
  end
end

```

```rb  
# app/controllers/posts_controller.rb

class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.most_recent
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end
```