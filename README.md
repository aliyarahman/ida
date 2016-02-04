Searchable site for Ida B. Wells' data on lynchings, as published in 1895 via "The Red Record."
===============================================

**Stack
Rails 4
MongoDB 2


**Source material
Text and data extracted from [Project Gutenberg's online publication](http://www.gutenberg.org/files/14977/14977-h/14977-h.htm) of the historical document.

Background stencil image by A. Rahman, from [source image](https://upload.wikimedia.org/wikipedia/commons/0/07/Ida_B._Wells.jpg) licensed for noncommerical use with modifications.

**Setup

To add data from a csv, modify the csv file path in lib/tasks/import_from_csv ad run the rakefile using:
```rake import_from_csv:create_lynching_records

