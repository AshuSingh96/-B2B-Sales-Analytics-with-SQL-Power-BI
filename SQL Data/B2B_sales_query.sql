use B2B_Sales;

SHOW tables;
# data cleaning and changing DAta Type of sales_pipeline
SELECT * FROM sales_pipeline;
#show columns details
DESCRIBE sales_pipeline;

#count no of rows
SELECT COUNT(*) FROM sales_pipeline;

#used to disable accidental updates
SET SQL_SAFE_UPDATES = 0;

#updating null value to close_date column
UPDATE sales_pipeline
SET close_date = NULL
WHERE close_date = '';

#changing data type to DATE of close_date column
ALTER TABLE sales_pipeline
MODIFY close_date DATE;

# changing data type of engage_date column to Date 

#updating null value to engage_date column
UPDATE sales_pipeline
SET engage_date = NULL
WHERE engage_date = '';

#changing data type to DATE of engage_date column
ALTER TABLE sales_pipeline
MODIFY engage_date DATE;


#check and modify close-value column
SELECT COUNT(*)
FROM sales_pipeline
WHERE close_value = '';

#updating close_value  blank rows with 0 
UPDATE sales_pipeline
SET close_value = 0
WHERE close_value = ''
   OR close_value IS NULL;
   
#check and modify deal_stage
SELECT COUNT(*)
FROM sales_pipeline
WHERE deal_stage = '';

#check and modify accounts columns
SELECT COUNT(*)
FROM sales_pipeline
WHERE account = '';

#updating null value to accounts
UPDATE sales_pipeline
SET account = NULL
WHERE account = '';

#changing opportunity_id to VARCHAR and make it primary key

#convert it to VARCHAR
ALTER TABLE	sales_pipeline
MODIFY opportunity_id VARCHAR(300);

#count no of blank rows
SELECT opportunity_id, COUNT(*)
FROM sales_pipeline
GROUP BY opportunity_id
HAVING COUNT(*) > 1;

# to retrive null rows
SELECT * 
FROM sales_pipeline 
WHERE opportunity_id IS NULL;

# delete null rows
DELETE FROM sales_pipeline
WHERE opportunity_id IS NULL;

# make it a primary key
ALTER TABLE sales_pipeline
ADD PRIMARY KEY (opportunity_id);

##changing sales_agents to VHARCHAR
ALTER TABLE	sales_pipeline
MODIFY sales_agent VARCHAR(300);

##changing product account and deal_stage to Vharchar
ALTER TABLE sales_pipeline 
MODIFY COLUMN product VARCHAR(255), 
MODIFY COLUMN account VARCHAR(255), 
MODIFY COLUMN deal_stage VARCHAR(255);

##change close value to int
ALTER TABLE sales_pipeline
MODIFY COLUMN close_value INT;



#modifing accounts table
SELECT * FROM accounts;
DESCRIBE accounts;

# changing data types
ALTER TABLE accounts 
MODIFY COLUMN year_established YEAR,
MODIFY COLUMN subsidiary_of VARCHAR(255),
MODIFY COLUMN sector VARCHAR(255),
MODIFY COLUMN revenue FLOAT,
MODIFY COLUMN office_location VARCHAR(255),
MODIFY COLUMN employees INT,
MODIFY COLUMN account VARCHAR(255);


# modifing products
SELECT * FROM products;
DESCRIBE products;

ALTER TABLE products
MODIFY COLUMN product VARCHAR(255),
MODIFY COLUMN series VARCHAR(255),
MODIFY COLUMN sales_price INT;

##modifing sales_teams
SELECT * FROM sales_teams;
DESCRIBE sales_teams;

ALTER TABLE sales_teams 
MODIFY COLUMN sales_agent VARCHAR(250),
MODIFY COLUMN manager VARCHAR(250),
MODIFY COLUMN regional_office VARCHAR(250);
