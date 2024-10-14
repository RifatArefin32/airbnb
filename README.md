# Airbnb
This is a learing project on Ruby on Rails. Source course: [Ruby on Rails (2024) - Airbnb Clone](https://www.youtube.com/watch?v=CFk87gt_4JM&list=PLoDt3UyLUtch1KR0U_UZ9GXJ5NRe-7BAh&index=1)

# Requirements
- Language and Framework: Ruby on Rails
- Database: Postgresql

# Application Structure
| **Directory/File**    | **Description**                                                                                     |
|-----------------------|-----------------------------------------------------------------------------------------------------|
| `app/`                | Contains the core of the application (models, views, controllers, helpers, jobs, mailers, etc.)      |
| `app/assets/`         | Stores static assets such as JavaScript, CSS, and images                                             |
| `app/controllers/`    | Holds the controller classes that handle the web requests and responses                              |
| `app/models/`         | Contains the models which represent the data and business logic                                      |
| `app/views/`          | Holds the view templates (HTML/ERB, etc.) that display data to users                                 |
| `app/helpers/`        | Contains helper modules for views                                                                    |
| `app/jobs/`           | Stores background job classes                                                                        |
| `app/mailers/`        | Handles email logic by defining mailers                                                              |
| `app/channels/`       | Manages WebSocket connections for real-time updates                                                  |
| `bin/`                | Contains Rails scripts to start the application, console, or run Rake tasks                          |
| `config/`             | Stores configuration files and settings, including routes, database, and environment-specific settings|
| `config/routes.rb`    | Defines the URL routes and maps them to controllers/actions                                          |
| `db/`                 | Contains database schema, migrations, and seeds                                                     |
| `db/migrate/`         | Holds migration files that alter the database schema                                                 |
| `lib/`                | Used for extended libraries or modules specific to the application                                   |
| `log/`                | Stores log files (e.g., development.log, production.log)                                             |
| `public/`             | Contains static files like custom error pages, robots.txt, etc.                                      |
| `test/` or `spec/`    | Stores test files (unit tests, integration tests, etc.), typically under `test/` or `spec/` for RSpec|
| `tmp/`                | Temporary files such as cache and pid files                                                          |
| `vendor/`             | Holds third-party code, often gems or plugins                                                        |
| `Gemfile`             | Defines gem dependencies for the Rails app                                                           |
| `Rakefile`            | Defines custom or prebuilt Rake tasks for automation. Rake tasks are commands defined in Ruby that automate common jobs or processes in a Rails application. Rake tasks can handle things like database migrations, running tests, clearing logs, and even custom operations you define yourself.                                                 |
| `README.md`           | A basic overview of the project, often with setup instructions                                       |

# Add tailwind css to the project
```bash
bundle add tailwindcss-rails
```