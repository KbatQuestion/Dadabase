/***************************************************************************-
* This document contains all the SQL commands that will generate all the
* tables in the database.
* 
* +-----------------+
* |Naming coventions|
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
    PRIMARY KEY (agent_id)
);

CREATE TABLE IF NOT EXISTS Customer (
    agent_id VARCHAR(7) NOT NULL,
    manager_id VARCHAR(7),
    name VARCHAR(255),
    contact_number DECIMAL(11),
    PRIMARY KEY (agent_id)
);

-- CREATE TABLE IF NOT EXISTS Booking (
--     booking_id VARCHAR(7) NOT NULL,
--     manager_id VARCHAR(7),
--     name VARCHAR(255),
--     contact_number DECIMAL(11),
--     PRIMARY KEY (agent_id)
-- );

-- CREATE TABLE IF NOT EXISTS Dependants (
--     booking_id VARCHAR(7) NOT NULL,
--     manager_id VARCHAR(7),
--     name VARCHAR(255),
--     contact_number DECIMAL(11),
--     PRIMARY KEY (agent_id)
-- );

-- CREATE TABLE IF NOT EXISTS Booking_dependants (
--     booking_id VARCHAR(7) NOT NULL,
--     manager_id VARCHAR(7),
--     name VARCHAR(255),
--     contact_number DECIMAL(11),
--     PRIMARY KEY (agent_id)
-- );

CREATE TABLE IF NOT EXISTS Item (
    item_id VARCHAR(7) NOT NULL,
    item_name VARCHAR(255),
    description VARCHAR(255),
    price DECIMAL(7,2),
    PRIMARY KEY (item_id)
);

-- CREATE TABLE IF NOT EXISTS Booking_item (
--     booking_id VARCHAR(7) NOT NULL,
--     manager_id VARCHAR(7),
--     name VARCHAR(255),
--     contact_number DECIMAL(11),
--     PRIMARY KEY (agent_id)
-- );