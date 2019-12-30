# Red-TT

TomtyTest for [Red](https://github.com/FCO/Red)

# Install

`zef install --/test Tomty`

# Run tests

`git clone https://github.com/melezhik/Red-TT.git && cd Red-TT`

Setup Sparrow6 repository

`export SP6_REPO=http://repo.westus.cloudapp.azure.com/`

Run all tests

`tomty --all --show-failed`

Run specific test

`tomty map-grep`

Skip some tests

`tomty --skip=integration`

List available tests

`tomty`

Install bash completion

`tomty --completion`

# Example reports

`tomty --all -show-failed`

```
[1/3] / [01-zef-install-red] .......  3 sec. OK
[2/3] / [02-create-table-sql] .......  4 sec. OK
[3/3] / [03-map-grep-sql] .......  3 sec. OK
=========================================
(=: / [3] tests in 10 sec / (3) tests passed
```

`tomty 02-create-table-sql`

```
04:16:59 12/30/2019 [repository] index updated from file:///home/melezhik/repo/api/v1/index
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] use Red;
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] model M is table<mmm> {
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6]    has Str $.a is column;
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6]    has Bool $.b is column;
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] }
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] my $*RED-DB = database "SQLite";
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] my $*RED-DEBUG = True;
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] say M.^create-table;
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:00 12/30/2019 [bash: cat .tomty/tasks/create-table-sql/sample.pl6] 
04:17:01 12/30/2019 [.tomty/tasks/create-table-sql] SQL : CREATE TABLE mmm(
04:17:01 12/30/2019 [.tomty/tasks/create-table-sql]    a varchar(255) NOT NULL ,
04:17:01 12/30/2019 [.tomty/tasks/create-table-sql]    b integer NOT NULL 
04:17:01 12/30/2019 [.tomty/tasks/create-table-sql] )
04:17:01 12/30/2019 [.tomty/tasks/create-table-sql] True
04:17:01 12/30/2019 [.tomty/tasks/create-table-sql] BIND: []
[task check] check if table has 2 column declarations
[task check] stdout match (r) <a varchar(255) NOT NULL> True
[task check] stdout match (r) <b integer NOT NULL> True
[task check] check if table exactly 2 statements between CREATE TABLE and ')' lines
[task check] check that there are no excessive commas
[task check] stdout match (s) <SQL : CREATE TABLE mmm(> True
[task check] stdout match (s) <.* 'NULL' \s* ',' \s* $$> True
[task check] stdout match (s) <.* 'NULL' \s* $$> True
[task check] stdout match (s) <^^ \s* ')' \s* $$> True
```

# Author

Alexey Melezhik


