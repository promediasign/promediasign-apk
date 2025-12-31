.class public Lorg/h2/util/OsgiDataSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osgi/service/jdbc/DataSourceFactory;


# instance fields
.field private driver:Lorg/h2/Driver;


# direct methods
.method public constructor <init>(Lorg/h2/Driver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/util/OsgiDataSourceFactory;->driver:Lorg/h2/Driver;

    return-void
.end method

.method public static registerService(Lorg/osgi/framework/BundleContext;Lorg/h2/Driver;)V
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-class v1, Lorg/h2/Driver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "osgi.jdbc.driver.class"

    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osgi.jdbc.driver.name"

    const-string v2, "H2 JDBC Driver"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osgi.jdbc.driver.version"

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lorg/osgi/service/jdbc/DataSourceFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/h2/util/OsgiDataSourceFactory;

    invoke-direct {v2, p1}, Lorg/h2/util/OsgiDataSourceFactory;-><init>(Lorg/h2/Driver;)V

    invoke-interface {p0, v1, v2, v0}, Lorg/osgi/framework/BundleContext;->registerService(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Dictionary;)Lorg/osgi/framework/ServiceRegistration;

    return-void
.end method

.method private static rejectPoolingOptions(Ljava/util/Properties;)V
    .locals 1

    const-string v0, "initialPoolSize"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxIdleTime"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxPoolSize"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxStatements"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "minPoolSize"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "propertyCycle"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "Pooling properties are not supported by H2"

    invoke-direct {p0, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static rejectUnsupportedOptions(Ljava/util/Properties;)V
    .locals 1

    const-string v0, "roleName"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dataSourceName"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "The dataSourceName property is not supported by H2"

    invoke-direct {p0, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "The roleName property is not supported by H2"

    invoke-direct {p0, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V
    .locals 8

    const-string v0, "user"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->setUser(Ljava/lang/String;)V

    :cond_0
    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->setPassword(Ljava/lang/String;)V

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/h2/jdbcx/JdbcDataSource;->setDescription(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "databaseName"

    const-string v4, "serverName"

    const-string v5, "networkProtocol"

    const-string v6, "portNumber"

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_3
    const-string v1, "jdbc:h2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ":"

    if-eqz v1, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "/"

    if-eqz v5, :cond_6

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "//localhost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {p1, v6}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v2, "tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "//localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v3}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_4
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/16 v1, 0x8

    if-le p1, v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->setURL(Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public createConnectionPoolDataSource(Ljava/util/Properties;)Ljavax/sql/ConnectionPoolDataSource;
    .locals 1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectUnsupportedOptions(Ljava/util/Properties;)V

    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectPoolingOptions(Ljava/util/Properties;)V

    new-instance p1, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p1}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V

    return-object p1
.end method

.method public createDataSource(Ljava/util/Properties;)Ljavax/sql/DataSource;
    .locals 1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectUnsupportedOptions(Ljava/util/Properties;)V

    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectPoolingOptions(Ljava/util/Properties;)V

    new-instance p1, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p1}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V

    return-object p1
.end method

.method public createDriver(Ljava/util/Properties;)Ljava/sql/Driver;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Dictionary;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/h2/util/OsgiDataSourceFactory;->driver:Lorg/h2/Driver;

    return-object p1
.end method

.method public createXADataSource(Ljava/util/Properties;)Ljavax/sql/XADataSource;
    .locals 1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectUnsupportedOptions(Ljava/util/Properties;)V

    invoke-static {v0}, Lorg/h2/util/OsgiDataSourceFactory;->rejectPoolingOptions(Ljava/util/Properties;)V

    new-instance p1, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {p1}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->setupH2DataSource(Lorg/h2/jdbcx/JdbcDataSource;Ljava/util/Properties;)V

    return-object p1
.end method
