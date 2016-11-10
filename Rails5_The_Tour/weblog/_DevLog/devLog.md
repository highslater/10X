```console


$ rails new weblog  
$ cd weblog/  
$ rails generate scaffold post title:string body:text  
$ cat db/migrate/20161109200609_create_posts.rb
class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

$ rails db:migrate
== 20161109200609 CreatePosts: migrating ======================================
-- create_table(:posts)
   -> 0.0027s
== 20161109200609 CreatePosts: migrated (0.0029s) =============================

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

ActiveRecord::Schema.define(version: 20161109200609) do

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

$ rails server
=> Booting Puma
=> Rails 5.0.0.1 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.6.0 (ruby 2.2.2-p95), codename: Sleepy Sunday Serenity
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
Started GET "/" for 127.0.0.1 at 2016-11-09 15:11:28 -0500
  ActiveRecord::SchemaMigration Load (0.3ms)  SELECT "schema_migrations".* FROM "schema_migrations"
Processing by Rails::WelcomeController#index as HTML
  Parameters: {"internal"=>true}
  Rendering /home/highslater/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/railties-5.0.0.1/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /home/highslater/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/railties-5.0.0.1/lib/rails/templates/rails/welcome/index.html.erb (5.2ms)
Completed 200 OK in 23ms (Views: 10.6ms | ActiveRecord: 0.0ms)


$ cd ..
$ cd ..
$ echo "# 10X" >> README.md
$ git init
Initialized empty Git repository in /home/highslater/Desktop/10X/.git/
$ git add README.md
$ git commit -m "first commit"
[master (root-commit) b05665e] first commit
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
$ git remote add origin git@github.com:highslater/10X.git
$ git push -u origin master
Counting objects: 3, done.
Writing objects: 100% (3/3), 214 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@github.com:highslater/10X.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.

$ rails generate resource comment post:references body:text  
$ cat db/migrate/20161110010541_create_comments.rb
class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end

$ rails db:migrate
== 20161110010541 CreateComments: migrating ===================================
-- create_table(:comments)
   -> 0.0086s
== 20161110010541 CreateComments: migrated (0.0098s) ==========================

$ rails routes
           Prefix Verb   URI Pattern                                 Controller#Action
    post_comments GET    /posts/:post_id/comments(.:format)          comments#index
                  POST   /posts/:post_id/comments(.:format)          comments#create
 new_post_comment GET    /posts/:post_id/comments/new(.:format)      comments#new
edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
     post_comment GET    /posts/:post_id/comments/:id(.:format)      comments#show
                  PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
                  PUT    /posts/:post_id/comments/:id(.:format)      comments#update
                  DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy
            posts GET    /posts(.:format)                            posts#index
                  POST   /posts(.:format)                            posts#create
         new_post GET    /posts/new(.:format)                        posts#new
        edit_post GET    /posts/:id/edit(.:format)                   posts#edit
             post GET    /posts/:id(.:format)                        posts#show
                  PATCH  /posts/:id(.:format)                        posts#update
                  PUT    /posts/:id(.:format)                        posts#update
                  DELETE /posts/:id(.:format)                        posts#destroy


$ rails generate mailer comments submitted  
$ rails generate channel comments  










```


