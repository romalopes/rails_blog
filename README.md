# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

rails g controller pages home about
rails routes  
rails g scaffold post title body:text  
rails db:migrate  
rails g migration add_views_to_post views: integer
rails generate devise:install  
rails g devise User  
rails db:migrate  
rails g migration add_user_to_posts user:belongs_to
rails g migration add_name_to_user name:string
rails g devise:views
rails g devise:cont rollers users
rails g controller users profile
rails g migration add_views_to_user views: integer
rails g migration change_views_for_users
rails g model comment post:belongs_to user:belongs_to
rails action_text:install
rails g controller comments

Stimulus
javascripts/controller. Create a file comments_controller...

const editForm = document.getElementById("edit-form-6");
editForm.classList.toggle('d-none');

Noticed gem
https://github.com/excid3/noticed
bundle add "noticed"
rails generate noticed:model
rails g noticed:notification Comment

rails g mailer UserMailer new_comment
CommentNotifier.with(record: Comment.last).deliver(User.first)

NSERT INTO "noticed*events" ("type", "record_type", "record_id", "params", "created_at", "updated_at", "notifications_count") VALUES ('CommentNotifier', 'Comment', 9, '{"\_aj_symbol_keys":[]}', '2025-03-25 02:36:39.649527', '2025-03-25 02:36:39.649527', 1) RETURNING "id" /\_application='NewBlog'*/
