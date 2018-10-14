-- In list mode values for each field in the record are delimited by pipes "| ", unless the delimiter is changed.
.mode list

-- print the results in comma-separated form
.separator ,

--print the results in list form, delimited by "|"
.separator |

--print the results in column form, and make each column have width 15
.mode column
.width 15 15 15 15 15

-- for each of the formats above, try printing/not printing the column headers with the results
.header off
.header on
