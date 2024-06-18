#!/bin/bash

# MySQL connection details
DB_HOST="nginx-database.czkgqc4841c1.eu-central-1.rds.amazonaws.com"
DB_USER="admin"
DB_PASS="Or6087751"
DB_NAME="nginxdb"

# Query data from MySQL
QUERY_RESULT=$(mysql -h $DB_HOST -u $DB_USER -p$DB_PASS -D $DB_NAME --skip-column-names --raw -e "SELECT * FROM employees LIMIT 1" | sed 's/^*//')

# # Write to index.html
# echo "$DATA" > /usr/share/nginx/html/index.html

# Read existing content from index.html
CURRENT_CONTENT=$(cat /usr/share/nginx/html/index.html)

# Append the query result to the existing content
NEW_CONTENT="$CURRENT_CONTENT\n\n$QUERY_RESULT"

# Write the combined content back to index.html
echo -e "$NEW_CONTENT" > /usr/share/nginx/html/index.html