# Nexus Core Framework Base

## Setup Instructions

1. Import the provided SQL file into your MySQL database. Run the following command in your MySQL client:
    ```sql
    source sql/ncframework.sql;
    ```

2. Install the required dependencies by adding them to your `server.cfg`:
    ```
    ensure oxmysql
    ensure nc_base
    ```

3. Configure the `config.lua` file according to your needs.

4. Start your server and enjoy the Nexus Core Framework!
