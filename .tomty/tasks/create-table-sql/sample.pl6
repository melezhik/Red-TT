use Red;

model M is table<mmm> {
   has Str $.a is column;
   has Bool $.b is column;
}

my $*RED-DB = database "SQLite";

my $*RED-DEBUG = True;

say M.^create-table;



