#!/bin/bash
# build script for pg database
dropdb ise401
createdb ise401
psql ise401 -f project.sql
cat distribution2.csv | \
psql ise401 -c \
"COPY distribution FROM stdin using delimiters ',' with csv header;"
cat receiving2.csv | \
psql ise401 -c \
"COPY receiving FROM stdin using delimiters ',' with csv header;"
cat waste2.csv | \
psql ise401 -c \
"COPY waste FROM stdin using delimiters ',' with csv header;"
