
## Setting Up .env File
To configure environment variables for this project, follow these steps:

- Copy .env.example: Duplicate the .env.example file and rename it to .env. You can do this using the following command in your terminal:
```bash
cp .env.example .env
```

- Edit .env File: Update the variables in .env to reflect your development environment. Ensure you do not include sensitive information in the .env file that should not be version-controlled.

## Configuring Database
After setting up your .env file with the necessary environment variables for your database configuration, follow these steps to initialize the database:

- Run Database Setup Command: In your terminal, execute the following command to create the development database specified in your .env file:

    ```bash
    rails db:create
    ```
    This command will use the database credentials provided in your .env file to create the database specified for the development environment.

- Verify Database Configuration: After running rails db:create, verify that the database has been successfully created by checking your database management tool or running:

    ```bash
    rails db:migrate
    ```

    This command ensures that any pending migrations are applied to your newly created database.

By following these steps, you ensure that your Rails application is properly configured to use the database specified in your .env file for development.