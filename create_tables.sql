/***************************************************************************-
* This document contains all the SQL commands that will generate all the
* tables in the database.
* 
* +-----------------+
* |Naming conventions|
* +-----------------+
* 
* Tables
* 
* 1. The first letter in table names must always be a capital letter
* 2. Characters that follow after the first character must all be lowercase
* 3. If the table name consists of more than one word, put an underscore to 
*    separate the words
* 
* Columns
* 
* 1. column names must be all lowercase
* 3. If the column name consists of more than one word, put an underscore to 
*    separate the words
******************************************************************************/

CREATE TABLE IF NOT EXISTS Manager (
    manager_id VARCHAR(7) NOT NULL,
    name VARCHAR(255),
    contact_number DECIMAL(11),
    PRIMARY KEY (manager_id)
);

CREATE TABLE IF NOT EXISTS Agent (
    agent_id VARCHAR(7) NOT NULL,
    manager_id VARCHAR(7),
    name VARCHAR(255),
    contact_number DECIMAL(11),
    PRIMARY KEY (agent_id),
    FOREIGN KEY (manager_id) REFERENCES Manager ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Customer (
    customer_id VARCHAR(7) NOT NULL,
    agent_id VARCHAR(7),
    contact_number VARCHAR(11),
    passport_number VARCHAR(255),
    ADDRESS VARCHAR(255),
    PRIMARY KEY (agent_id),
    FOREIGN KEY (agent_id) REFERENCES Agent ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Booking (
    booking_id VARCHAR(7) NOT NULL,
    agent_id VARCHAR(7),
    customer_id VARCHAR(7),
    booking_date DATE,
    number_of_people DECIMAL(2),
    arrival_date DATE,
    total_price DECIMAL(6),
    PRIMARY KEY (booking_id),
    FOREIGN KEY (agent_id) REFERENCES Agent ON DELETE SET NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Dependants (
    dependants_id VARCHAR(7) NOT NULL,
    customer_id VARCHAR(7),
    contact_number DECIMAL(11),
    passport_number VARCHAR(255),
    address VARCHAR(255),
    PRIMARY KEY (dependants_id),
    FOREIGN KEY (customer_id) REFERENCES Customer ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Booking_dependants (
    dependants_id VARCHAR(7) NOT NULL,
    booking_id VARCHAR(7) NOT NULL,
    PRIMARY KEY (dependants_id),
    PRIMARY KEY (booking_id)
);

CREATE TABLE IF NOT EXISTS Item (
    item_id VARCHAR(7) NOT NULL,
    item_name VARCHAR(255),
    description VARCHAR(255),
    price DECIMAL(7,2),
    PRIMARY KEY (item_id)
);

CREATE TABLE IF NOT EXISTS Booking_item (
    booking_id VARCHAR(7) NOT NULL,
    item_id VARCHAR(7),
    quantity DECIMAL(2),
    PRIMARY KEY (agent_id)
);