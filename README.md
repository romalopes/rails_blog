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
