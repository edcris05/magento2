#!/bin/sh
#

# PROJECTPATH contains the full
# directory path of the project itself
PROJECTPATH=$(pwd)

# CONFIGFOLDER contains the path
# to the config folder.
CONFIGFOLDER="$PROJECTPATH/.warp/docker/config"

# SSLCERTIFICATEFOLDER contains the path
# to the SSL certificate folder that is used by Nginx.
SSLCERTIFICATEFOLDER="$CONFIGFOLDER/nginx/ssl"

# ENVIRONMENTVARIABLESFILE contains the path
# to the file that holds the required environment
# variables for this script.
ENVIRONMENTVARIABLESFILESAMPLE="$PROJECTPATH/.env.sample"

# ENVIRONMENTVARIABLESFILE contains the path
# to the file that holds the required environment
# variables for this script.
ENVIRONMENTVARIABLESFILE="$PROJECTPATH/.env"

# Check self update
CHECK_UPDATE_FILE="$PROJECTPATH/.self-update-warp"
CHECK_FREQUENCY_DAYS=7

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose.yml sample file
DOCKERCOMPOSEFILESAMPLE="$PROJECTPATH/docker-compose-warp.yml.sample"

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose.yml file
DOCKERCOMPOSEFILE="$PROJECTPATH/docker-compose-warp.yml"

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose for selenium yaml file
DOCKERCOMPOSEFILESELENIUM="$PROJECTPATH/docker-selenium-warp.yml"

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose.yml file
DOCKERCOMPOSEFILEMAC="$PROJECTPATH/docker-compose-warp-mac.yml"

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose.yml sample file
DOCKERCOMPOSEFILEMACSAMPLE="$PROJECTPATH/docker-compose-warp-mac.yml.sample"

# DOCKERCOMPOSEFILE contains the path
# to the docker-sync.yml file
DOCKERSYNCMAC="$PROJECTPATH/docker-sync.yml"

# DOCKERCOMPOSEFILE contains the path
# to the docker-sync.yml sample file
DOCKERSYNCMACSAMPLE="$PROJECTPATH/docker-sync.yml.sample"

# PROJECTPATH FRAMEWORK
WARPFOLDER="$PROJECTPATH/.warp"

# FILE TO GIT IGNORE
GITIGNOREFILE="$PROJECTPATH/.gitignore"

# FILE TO IGNORE WARP FOLDER IN DOCKER CP
DOCKERIGNOREFILE="$PROJECTPATH/.dockerignore"

# NETWORK NAME
NETWORK_NAME="warp_net"

# Set minimum range IP in Containers
MIN_RANGE_IP=20

# SET PATH TO BINARY WARP
WARP_BINARY_FILE="/usr/local/bin/warp"

# SET STRONG PASSWORD LENGTH
STRONG_PASSWORD_LENGTH=8

# Set minimum version for docker-compose
DOCKER_COMPOSE_MINIMUM_VERSION=1.21

# Set minimum version for rsync
RSYNC_MINIMUM_VERSION=3.1.1

# Set docker-compose timeout, default 60
DOCKER_COMPOSE_HTTP_TIMEOUT=300

# Set minimum version for Docker
DOCKER_MINIMUM_VERSION=17.05

## SANDBOX MODE
VHOST_M22_CE="local.m229-ce.com"
VHOST_M23_CE="local.m231-ce.com"

DB_M22_CE="m229_ce"
DB_M23_CE="m231_ce"

ES_SBMEM="1g"
ES_SB1="5.6.8"
ES_SB2="6.4.2"
ES_SBVER="5.6.8|6.4.2"
ES_SBHOST="elasticsearch56|elasticsearch64"

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose.yml file
DOCKERCOMPOSEFILEDEV="$PROJECTPATH/docker-compose-warp-dev.yml"

# DOCKERCOMPOSEFILE contains the path
# to the docker-compose.yml sample file
DOCKERCOMPOSEFILEDEVSAMPLE="$PROJECTPATH/docker-compose-warp-dev.yml.sample"

: '
PHP Installed Modules.
    Each image provided in warp-engine/images/php/<version>/Dockerfile has preinstalled modules.
    The following arrays have the list of everyone intalled in each image. We have as many matrices
    as images we have stored.
    Important note: We must build a step in our pipeline that checks every Dockerfile for each image
    in order to append or remove new libraries.
'
PHP_5_6_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_0_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_1_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_1_17_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_1_26_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_2_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "pdo_pgsql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_2_24_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "pdo_pgsql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "zip")
PHP_7_3_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "pdo_pgsql" "mysqli" "mbstring" "mcrypt" "hash" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "sodium" "zip")
PHP_7_4_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "pdo_pgsql" "mysqli" "mbstring" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "sodium" "zip")
PHP_8_1_3_fpm_BASE_LIBS=("pdo" "sockets" "pdo_mysql" "pdo_pgsql" "mysqli" "mbstring" "simplexml" "xsl" "soap" "intl" "bcmath" "json" "opcache" "sodium" "zip")

# Supported PHP Extensions (https://github.com/mlocati/docker-php-extension-installer#supported-php-extensions):
PHP_5_5_AVAILABLE_LIBS=("amqp" "apcu" "bcmath" "bz2" "calendar" "dba" "decimal" "enchant" "ev" "exif" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "interbase" "intl" "ioncube_loader" "ldap" "mailparse" "mcrypt" "memcache" "memcached" "mongo" "mongodb" "mosquitto" "msgpack" "mssql" "mysql" "mysqli" "oauth" "oci8" "odbc" "opcache" "pcntl" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_odbc" "pdo_pgsql" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "recode" "redis" "shmop" "smbclient" "snmp" "soap" "sockets" "solr" "ssh2" "swoole" "sybase_ct" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "wddx" "xdebug" "xhprof" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_5_6_AVAILABLE_LIBS=("amqp" "apcu" "bcmath" "bz2" "calendar" "dba" "decimal" "enchant" "ev" "exif" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "interbase" "intl" "ioncube_loader" "ldap" "mailparse" "mcrypt" "memcache" "memcached" "mongo" "mongodb" "mosquitto" "msgpack" "mssql" "mysql" "mysqli" "oauth" "oci8" "odbc" "opcache" "pcntl" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_odbc" "pdo_pgsql" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "recode" "redis" "shmop" "smbclient" "snmp" "soap" "sockets" "solr" "ssh2" "swoole" "sybase_ct" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "wddx" "xdebug" "xhprof" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_7_0_AVAILABLE_LIBS=("amqp" "apcu" "apcu_bc" "bcmath" "bz2" "calendar" "cmark" "dba" "decimal" "enchant" "ev" "exif" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "interbase" "intl" "ioncube_loader" "ldap" "mailparse" "mcrypt" "memcache" "memcached" "mongodb" "mosquitto" "msgpack" "mysqli" "oauth" "oci8" "odbc" "opcache" "opencensus" "pcntl" "pcov" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_oci" "pdo_odbc" "pdo_pgsql" "pdo_sqlsrv" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "recode" "redis" "shmop" "smbclient" "snmp" "snuffleupagus" "soap" "sockets" "solr" "sqlsrv" "ssh2" "swoole" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "wddx" "xdebug" "xhprof" "xlswriter" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_7_1_AVAILABLE_LIBS=("amqp" "apcu" "apcu_bc" "bcmath" "bz2" "calendar" "cmark" "dba" "decimal" "enchant" "ev" "exif" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "interbase" "intl" "ioncube_loader" "ldap" "mailparse" "mcrypt" "memcache" "memcached" "mongodb" "mosquitto" "msgpack" "mysqli" "oauth" "oci8" "odbc" "opcache" "opencensus" "pcntl" "pcov" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_oci" "pdo_odbc" "pdo_pgsql" "pdo_sqlsrv" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "recode" "redis" "shmop" "smbclient" "snmp" "snuffleupagus" "soap" "sockets" "solr" "sqlsrv" "ssh2" "swoole" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "wddx" "xdebug" "xhprof" "xlswriter" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_7_2_AVAILABLE_LIBS=("amqp" "apcu" "apcu_bc" "bcmath" "bz2" "calendar" "cmark" "dba" "decimal" "ev" "exif" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "interbase" "intl" "ioncube_loader" "ldap" "mailparse" "maxminddb" "mcrypt" "memcache" "memcached" "mongodb" "mosquitto" "msgpack" "mysqli" "oauth" "oci8" "odbc" "opcache" "opencensus" "pcntl" "pcov" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_oci" "pdo_odbc" "pdo_pgsql" "pdo_sqlsrv" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "recode" "redis" "shmop" "smbclient" "snmp" "snuffleupagus" "soap" "sockets" "solr" "sqlsrv" "ssh2" "swoole" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "wddx" "xdebug" "xhprof" "xlswriter" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_7_3_AVAILABLE_LIBS=("amqp" "apcu" "apcu_bc" "bcmath" "bz2" "calendar" "cmark" "dba" "decimal" "ev" "exif" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "interbase" "intl" "ioncube_loader" "ldap" "mailparse" "maxminddb" "mcrypt" "memcache" "memcached" "mongodb" "mosquitto" "msgpack" "mysqli" "oauth" "oci8" "odbc" "opcache" "opencensus" "pcntl" "pcov" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_oci" "pdo_odbc" "pdo_pgsql" "pdo_sqlsrv" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "recode" "redis" "shmop" "smbclient" "snmp" "snuffleupagus" "soap" "sockets" "solr" "sqlsrv" "ssh2" "swoole" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "wddx" "xdebug" "xhprof" "xlswriter" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_7_4_AVAILABLE_LIBS=("amqp" "apcu" "apcu_bc" "bcmath" "bz2" "calendar" "cmark" "dba" "decimal" "ev" "exif" "ffi" "gd" "gettext" "gmagick" "gmp" "gnupg" "grpc" "http" "igbinary" "imagick" "imap" "intl" "ioncube_loader" "ldap" "mailparse" "maxminddb" "mcrypt" "memcache" "memcached" "mongodb" "mosquitto" "msgpack" "mysqli" "oauth" "oci8" "odbc" "opcache" "opencensus" "pcntl" "pcov" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_oci" "pdo_odbc" "pdo_pgsql" "pdo_sqlsrv" "pgsql" "propro" "protobuf" "pspell" "raphf" "rdkafka" "redis" "shmop" "smbclient" "snmp" "snuffleupagus" "soap" "sockets" "solr" "sqlsrv" "ssh2" "swoole" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uopz" "uuid" "xdebug" "xhprof" "xlswriter" "xmlrpc" "xsl" "yaml" "yar" "zip" "zookeeper")
PHP_8_1_3_AVAILABLE_LIBS=("amqp" "apcu" "bcmath" "bz2" "calendar" "dba" "decimal" "enchant" "ev" "ffi" "gd" "gettext" "gmp" "grpc" "igbinary" "imagick" "imap" "intl" "ldap" "mailparse" "maxminddb" "mcrypt" "memcached" "mongodb" "msgpack" "mysqli" "oauth" "oci8" "odbc" "opcache" "pcntl" "pcov" "pdo_dblib" "pdo_firebird" "pdo_mysql" "pdo_oci" "pdo_odbc" "pdo_pgsql" "pgsql" "protobuf" "pspell" "raphf" "redis" "shmop" "smbclient" "snmp" "snuffleupagus" "soap" "sockets" "solr" "swoole" "sysvmsg" "sysvsem" "sysvshm" "tidy" "timezonedb" "uuid" "xdebug" "xhprof" "xlswriter")

# parallel* requires images with PHP compiled with thread-safety enabled (zts).
# pthreads* requires images with PHP compiled with thread-safety enabled (zts).
# tdlib* not available in apline3.7 docker images and jessie docker images.

ELASTICSEARCH_AVAILABLE_VERSIONS=('7.6.2' '6.5.4' '6.4.2' '5.6.8' '2.4.6' '2.4.4' '1.7.6')