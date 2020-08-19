Accessing a MySQL database using R without the sas access product                                                                    
                                                                                                                                     
        Queries                                                                                                                      
           a. SAS table to MySQL table.                                                                                              
           b. MySQL table to SAS table.                                                                                              
                                                                                                                                     
github                                                                                                                               
https://tinyurl.com/yxphau4q                                                                                                         
https://github.com/rogerjdeangelis/utl-accessing-a-mysql-database-using-R-without-the-sas-access-product                             
                                                                                                                                     
SAS Forum                                                                                                                            
https://tinyurl.com/y44nnauz                                                                                                         
https://communities.sas.com/t5/SAS-Programming/MySQL-connecting-issue/m-p/677391                                                     
                                                                                                                                     
Reference                                                                                                                            
https://www.tutorialspoint.com/r/r_database.htm                                                                                      
                                                                                                                                     
github macros                                                                                                                        
https://tinyurl.com/y9nfugth                                                                                                         
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                           
                                                                                                                                     
                                                                                                                                     
I had to do the following to get MySQL to work with SAS 9.4m6 64bit and win 10 64bit                                                 
                                                                                                                                     
https://stackoverflow.com/users/12964181/cesaring                                                                                    
                                                                                                                                     
                                                                                                                                     
I've been dealing with a similar problem, using MySQL 8.0.19 on Windows.                                                             
I was able to resolve by NOT using the LOCAL keyword AND using the Windows                                                           
Services manager (type Services on the explorer taskbar), right clicking                                                             
on MySQL80 ->selecting Properties, then on the Log On tab, changing                                                                  
the Log On As: value to Local System Account.                                                                                        
                                                                                                                                     
Stackoverflow                                                                                                                        
https://tinyurl.com/yy79h2sg                                                                                                         
https://stackoverflow.com/questions/59993844/error-loading-local-data-is-disabled-this-must-be-enabled-on-both-the-client            
                                                                                                                                     
set the global variables by using this command:                                                                                      
mysql> SET GLOBAL local_infile=1;                                                                                                    
Query OK, 0 rows affected (0.00 sec)                                                                                                 
quit current server:                                                                                                                 
mysql> quit                                                                                                                          
                                                                                                                                     
/*                   _                                                                                                               
(_)_ __  _ __  _   _| |_                                                                                                             
| | `_ \| `_ \| | | | __|                                                                                                            
| | | | | |_) | |_| | |_                                                                                                             
|_|_| |_| .__/ \__,_|\__|                                                                                                            
        |_|                                                                                                                          
*/                                                                                                                                   
                                                                                                                                     
options validvarname=upcase;                                                                                                         
libname sd1 "d:/sd1";                                                                                                                
data sd1.have;                                                                                                                       
  set sashelp.class(obs=10);                                                                                                         
run;quit;                                                                                                                            
                                                                                                                                     
SD1.HAVE total obs=3                                                                                                                 
                                                                                                                                     
   NAME     SEX    AGE    HEIGHT    WEIGHT                                                                                           
                                                                                                                                     
  Joyce      F      11     51.3      50.5                                                                                            
  Louise     F      12     56.3      77.0                                                                                            
  Alice      F      13     56.5      84.0                                                                                            
                                                                                                                                     
                                                                                                                                     
Actor table in the MySQL 'sakila' data base                                                                                          
                                                                                                                                     
ctor_id first_name    last_name         last_update                                                                                  
      1   PENELOPE      GUINESS 2006-02-15 03:34:33                                                                                  
      2       NICK     WAHLBERG 2006-02-15 03:34:33                                                                                  
      3         ED        CHASE 2006-02-15 03:34:33                                                                                  
      4   JENNIFER        DAVIS 2006-02-15 03:34:33                                                                                  
      5     JOHNNY LOLLOBRIGIDA 2006-02-15 03:34:33                                                                                  
 ...                                                                                                                                 
                                                                                                                                     
/*           _               _                                                                                                       
  ___  _   _| |_ _ __  _   _| |_ ___                                                                                                 
 / _ \| | | | __| `_ \| | | | __/ __|                                                                                                
| (_) | |_| | |_| |_) | |_| | |_\__ \                                                                                                
 \___/ \__,_|\__| .__/ \__,_|\__|___/                                                                                                
                |_|                                                                                                                  
                 _          __  __       ____   ___  _                                                                               
 ___  __ _ ___  | |_ ___   |  \/  |_   _/ ___| / _ \| |                                                                              
/ __|/ _` / __| | __/ _ \  | |\/| | | | \___ \| | | | |                                                                              
\__ \ (_| \__ \ | || (_) | | |  | | |_| |___) | |_| | |___                                                                           
|___/\__,_|___/  \__\___/  |_|  |_|\__, |____/ \__\_\_____|                                                                          
                                   |___/                                                                                             
*/                                                                                                                                   
                                                                                                                                     
SAS table 'have' loaded into MySQL 'have'                                                                                            
=========================================                                                                                            
                                                                                                                                     
"have"                                                                                                                               
                                                                                                                                     
[1] "row_names" "NAME" "SEX" "AGE" "HEIGHT" "WEIGHT"                                                                                 
       NAME SEX AGE HEIGHT WEIGHT                                                                                                    
 1:   Joyce   F  11   51.3   50.5                                                                                                    
 2:  Louise   F  12   56.3   77.0                                                                                                    
 3:   Alice   F  13   56.5   84.0                                                                                                    
 4:   James   M  12   57.3   83.0                                                                                                    
 5:  Thomas   M  11   57.5   85.0                                                                                                    
 6:    John   M  12   59.0   99.5                                                                                                    
 7:    Jane   F  12   59.8   84.5                                                                                                    
 8:   Janet   F  15   62.5  112.5                                                                                                    
 9: Jeffrey   M  13   62.5   84.0                                                                                                    
10:   Carol   F  14   62.8  102.5                                                                                                    
                                                                                                                                     
/*_  __       ____   ___  _       _                                                                                                  
|  \/  |_   _/ ___| / _ \| |     | |_ ___    ___  __ _ ___                                                                           
| |\/| | | | \___ \| | | | |     | __/ _ \  / __|/ _` / __|                                                                          
| |  | | |_| |___) | |_| | |___  | || (_) | \__ \ (_| \__ \                                                                          
|_|  |_|\__, |____/ \__\_\_____|  \__\___/  |___/\__,_|___/                                                                          
        |___/                                                                                                                        
*/                                                                                                                                   
                                                                                                                                     
MySQL table 'Actor' loaded into SA (not long variable names)                                                                         
============================================================                                                                         
                                                                                                                                     
WORK.ACTORS total obs=200 Note long variable names from R )                                                                          
                                                                                                                                     
             FIRST_                                                                                                                  
 ACTOR_ID    NAME        LAST_NAME           LAST_UPDATE                                                                             
                                                                                                                                     
     1       PENELOPE    GUINESS         2006-02-15 03:34:33                                                                         
     2       NICK        WAHLBERG        2006-02-15 03:34:33                                                                         
     3       ED          CHASE           2006-02-15 03:34:33                                                                         
     4       JENNIFER    DAVIS           2006-02-15 03:34:33                                                                         
     5       JOHNNY      LOLLOBRIGIDA    2006-02-15 03:34:33                                                                         
   ...                                                                                                                               
                                                                                                                                     
/*                                                                                                                                   
 _ __  _ __ ___   ___ ___  ___ ___                                                                                                   
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                                  
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                                  
| .__/|_|  \___/ \___\___||___/___/                                                                                                  
|_|                                                                                                                                  
*/                                                                                                                                   
                                                                                                                                     
%utlfkil(d/xpt/want.xpt);                                                                                                            
                                                                                                                                     
%utl_submit_r64(resolve('                                                                                                            
library(haven);                                                                                                                      
library(data.table);                                                                                                                 
library(SASxport);                                                                                                                   
library(RMySQL);                                                                                                                     
have<-as.data.table(read_sas("d:/sd1/have.sas7bdat"));                                                                               
DB <- dbConnect(MySQL(), user="root", password="xxxxxxxx",dbname="sakila", host="localhost");                                        
summary(DB);                                                                                                                         
/*                                                                                                                                   
<MySQLConnection:0,0>                                                                                                                
  User:   root                                                                                                                       
  Host:   localhost                                                                                                                  
  Dbname: sakila                                                                                                                     
  Connection type: localhost via TCP/IP                                                                                              
*/                                                                                                                                   
dbWriteTable(DB, "have", have, overwrite = TRUE);                                                                                    
dbListTables(DB);                                                                                                                    
dbListFields(DB, "have");                                                                                                            
have;                                                                                                                                
/*                                                                                                                                   
"have"                                                                                                                               
[1] "names" "NAME"      "SEX"       "AGE"       "HEIGHT"    "WEIGHT"                                                                 
*/                                                                                                                                   
actor<-dbReadTable(DB, "actor");                                                                                                     
actor;                                                                                                                               
/*                                                                                                                                   
 actor_id  first_name    last_name         last_update                                                                               
        1    PENELOPE      GUINESS 2006-02-15 03:34:33                                                                               
        2        NICK     WAHLBERG 2006-02-15 03:34:33                                                                               
        3          ED        CHASE 2006-02-15 03:34:33                                                                               
        4    JENNIFER        DAVIS 2006-02-15 03:34:33                                                                               
        5      JOHNNY LOLLOBRIGIDA 2006-02-15 03:34:33                                                                               
        6       BETTE    NICHOLSON 2006-02-15 03:34:33                                                                               
        7       GRACE       MOSTEL 2006-02-15 03:34:33                                                                               
        8     MATTHEW    JOHANSSON 2006-02-15 03:34:33                                                                               
        9         JOE        SWANK 2006-02-15 03:34:33                                                                               
       10   CHRISTIAN        GABLE 2006-02-15 03:34:33                                                                               
*/                                                                                                                                   
str(actor);                                                                                                                          
/*                                                                                                                                   
   extract data in batches                                                                                                           
*/                                                                                                                                   
query <- dbSendQuery(DB, "SELECT * FROM actor;");                                                                                    
batch <- dbFetch(query, n = 6);                                                                                                      
batch;                                                                                                                               
/*                                                                                                                                   
actor_id first_name    last_name         last_update                                                                                 
       1   PENELOPE      GUINESS 2006-02-15 03:34:33                                                                                 
       2       NICK     WAHLBERG 2006-02-15 03:34:33                                                                                 
       3         ED        CHASE 2006-02-15 03:34:33                                                                                 
       4   JENNIFER        DAVIS 2006-02-15 03:34:33                                                                                 
       5     JOHNNY LOLLOBRIGIDA 2006-02-15 03:34:33                                                                                 
*/                                                                                                                                   
/*                                                                                                                                   
 put long names into label                                                                                                           
*/                                                                                                                                   
for (i in 1:ncol(actor)) {                                                                                                           
      label(actor[,i])<-colnames(actor)[i];                                                                                          
      print(label(actor[,i])); };                                                                                                    
write.xport(actor,file="d:/xpt/want.xpt");                                                                                           
dbDisconnect(DB);                                                                                                                    
'));                                                                                                                                 
                                                                                                                                     
                                                                                                                                     
* important;                                                                                                                         
                                                                                                                                     
libname xpt clear;                                                                                                                   
                                      *******;                                                                                       
proc datasets lib=work nolist mt=data mt=view;                                                                                       
 delete actor actors;                                                                                                                
run;quit;                                                                                                                            
                                                                                                                                     
libname xpt xport "d:/xpt/want.xpt";                                                                                                 
                                                                                                                                     
proc contents data=xpt._all_;                                                                                                        
run;quit;                                                                                                                            
                                                                                                                                     
/*                                                                                                                                   
Alphabetic List of Variables and Attributes                                                                                          
                                                                                                                                     
#    Variable    Type    Len    Label                                                                                                
                                                                                                                                     
1    ACTOR_ID    Num       8    actor_id       ** note long names are in the label                                                   
2    FIRST_NA    Char     11    first_name     ** we will use the label to rename variables                                          
3    LAST_NAM    Char     12    last_name                                                                                            
4    LAST_UPD    Char     19    last_update                                                                                          
*/                                                                                                                                   
                                                                                                                                     
data actors ; * use a different name;                                                                                                
  %utl_rens(xpt.actor);                                                                                                              
  set actor;                                                                                                                         
run;quit;                                                                                                                            
                                                                                                                                     
libname xpt clear;                                                                                                                   
                                                                                                                                     
WORK.ACTORS                                                                                                                          
                                                                                                                                     
          Variables in Creation Order                                                                                                
                                                                                                                                     
#    Variable       Type    Len    Label                                                                                             
                                                                                                                                     
1    ACTOR_ID       Num       8    actor_id                                                                                          
2    FIRST_NAME     Char     11    first_name                                                                                        
3    LAST_NAME      Char     12    last_name                                                                                         
4    LAST_UPDATE    Char     19    last_update                                                                                       
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
                                                                                                                                     
