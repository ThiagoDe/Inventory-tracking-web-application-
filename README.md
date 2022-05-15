# Fall 2022 - Shopify Developer Intern Challenge

This is an inventory tracking web application that could be used by a logistics company, built with Ruby on Rails and tested with RSpec. It includes basic CRUD functionality: you can create inventory items, edit them, delete them, and view a list of them.

Visit the live application on Replit [here](https://replit.com/@ThiagoDe49/Inventory-tracking-web-application?v=1) or install the application locally by following the steps below.

## Prerequisites:
  * Ruby 3.0.3 or later
  * Rails 7.0.0 or later
  * Bundler 2.1.4 or later
  * Sqlite3 1.4 or later

# Local Installation
* Clone this repo ([instructions](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository))
* Navigate into this project's directory `cd Inventory-tracking-web-application`
* Install the required gems by running `bundle install`
* Create the database by running `rails db:setup` or `rails db:reset`
* Seed the databe by running `rails db:seed`
* Start the local server by running `rails server`
* View by visiting `localhost:3000` in a web browser

# CRUD Features
* ## Create new Items

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/89544506/168461981-5f63a9c5-afad-433e-af67-f07f7d095019.gif)

* ## Create new Warehouses

![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/89544506/168462369-00381429-60c7-426c-bc10-dc695e775052.gif)

* ## Edit Item

![ezgif com-gif-maker (2) copy](https://user-images.githubusercontent.com/89544506/168462560-a63b4fd3-6ef8-4754-b0c7-a21f6d4eb39a.gif)

* ## Edit Warehouse

![ezgif com-gif-maker (2) copy 2](https://user-images.githubusercontent.com/89544506/168462700-ec55ca6c-db55-4221-8e0a-d5255a50c96d.gif)


# Rails on Replit

This is a template to get you started with Rails on Replit. It's ready to go so you can just hit run and start coding!

This template was generated using `rails new` (after you install the `rails` gem from the packager sidebar) so you can always do that if you prefer to set it up from scratch. The only had two make config changes we had to make to run it on Replit:

- bind the app on `0.0.0.0` instead of `localhost` (see `.replit`)
- allow `*.repl.co` hosts (see `config/environments/development.rb`)
- allow the app to be iframed on `replit.com` (see `config/application.rb`)

## Running the app

Simple hit run! You can edit the run command from the `.replit` file.

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

SQLite would work in development but we don't recommend running it in production. Instead look into using the built-in [Replit database](http://docs.replit.com/misc/database). Otherwise you are welcome to connect databases from your favorite provider. 

## Help

If you need help you might be able to find an answer on our [docs](https://docs.replit.com) page. Feel free to report bugs and give us feedback [here](https://replit.com/support).
