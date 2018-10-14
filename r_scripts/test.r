library(knitr)
library(RJDBC)
library(grab)
username = "xx.xx@grabtaxi.com"
datagateway_password = "***************" 
path_to_presto_jar = "path/presto-jdbc-0.211.jar" 

# Tell R where your JDBC driver is located
driver <- JDBC("com.facebook.presto.jdbc.PrestoDriver", 
               path_to_presto_jar,
               identifier.quote="`")

# Make a connection using your JDBC driver and connection URL
conn <- dbConnect(driver, 
                  "jdbc:presto://datagateway.data-engineering.myteksi.net:443/hive/public", 
                  username, 
                  datagateway_password)
