Bookmark Manager
==================

```
        .--.           .---.        .-.
    .---|--|   .-.     | A |  .---. |~|    .--.
 .--|===|Ch|---|_|--.__| S |--|:::| |~|-==-|==|---.
 |%%|NT2|oc|===| |~~|%%| C |--|   |_|~|CATS|  |___|-.
 |  |   |ah|===| |==|  | I |  |:::|=| |    |GB|---|=|
 |  |   |ol|   |_|__|  | I |__|   | | |    |  |___| |
 |~~|===|--|===|~|~~|%%|~~~|--|:::|=|~|----|==|---|=|
 ^--^---'--^---^-^--^--^---'--^---^-^-^-==-^--^---^-'
```

## Afternoon challenge: Bookmarker
In this challenge we learned & implementing the follwoing practices while pair programming:

- Introduction to SQL and CRUD apps
- Agile Methology for user stories
- Feature and Unit testing
- GET / POST requests - defining routes
- Using Chrome DevTools

Goals:
- Build a simple web app with a database
- Follow an effective debugging process for database applications
- Explain the basics of how databases work (e.g. tables, SQL, basic relationships between tables)

## Planning

Check out our user stories, domain model and MVC pattern here: [Workflow Mindmap](https://github.com/CorinneBosch/Bookmarker/blob/main/public/Workflow_mindmap.png)

## Setup

1. **Fork** this [Bookmarker repository](https://github.com/CorinneBosch/Bookmarker/) 
2. Then clone **your** fork to your computer.
3. Ensure you have `Ruby` and `rspec` installed. Check ruby version with `ruby -v`
4. Install bundler if you haven't already.
`gem install bundler`
5. Install the gems required by this repository.
`bundle install`

## Setup database

Connect to `psql` and create a `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

Then create a second database `bookmark_manager_test` and reapeat the process mentioned in the example above.
```
CREATE DATABASE bookmark_manager_test;
```

## Interact with the program

Open the application in your terminal with `ruby app.rb`

Direct in your browser to `http://localhost:4567`.
Now you are free to add new bookmarks or view existing ones.

You can frature test and run the bookmarker program in any `code editor` or `IRB`. 

## Run test 

To test all units and features at once in your terminal.
Print out the format documentation with the -fd shortcut.
```
$ rspec
$ rspec -fd
```

To test inividual unit or feature tests in your terminal:
```
$ rspec spec/units/bookmarks_spec.rb -fd
$ rspec spec/features/view_bookmarks_spec.rb -fd
```

Source of challege requirements: [Makersacadeny - GitHub](https://github.com/makersacademy/course/blob/main/bookmark_manager/)
