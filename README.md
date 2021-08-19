# Bookmarker

## Workflow Mindmap - User Stories / Domain Modelling / MVC

[Workflow Mindmap](https://github.com/CorinneBosch/Bookmarker/blob/main/public/Workflow_mindmap.png)

### To set up the database

Connect to `psql` and create a `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

Then create a second database `bookmark_manager_test` and reapeat the process mentioned in the example above.
```
CREATE DATABASE bookmark_manager_test;
```