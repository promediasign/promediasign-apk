.class public Lorg/h2/util/JdbcUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DRIVERS:[Ljava/lang/String;

.field private static allowAllClasses:Z

.field private static allowedClassNamePrefixes:[Ljava/lang/String;

.field private static allowedClassNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;

.field public static serializer:Lorg/h2/api/JavaObjectSerializer;

.field private static userClassFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/Utils$ClassFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 51

    const-string v49, "teradata:"

    const-string v50, "com.ncr.teradata.TeraDriver"

    const-string v1, "h2:"

    const-string v2, "org.h2.Driver"

    const-string v3, "Cache:"

    const-string v4, "com.intersys.jdbc.CacheDriver"

    const-string v5, "daffodilDB://"

    const-string v6, "in.co.daffodil.db.rmi.RmiDaffodilDBDriver"

    const-string v7, "daffodil"

    const-string v8, "in.co.daffodil.db.jdbc.DaffodilDBDriver"

    const-string v9, "db2:"

    const-string v10, "com.ibm.db2.jcc.DB2Driver"

    const-string v11, "derby:net:"

    const-string v12, "org.apache.derby.jdbc.ClientDriver"

    const-string v13, "derby://"

    const-string v14, "org.apache.derby.jdbc.ClientDriver"

    const-string v15, "derby:"

    const-string v16, "org.apache.derby.jdbc.EmbeddedDriver"

    const-string v17, "FrontBase:"

    const-string v18, "com.frontbase.jdbc.FBJDriver"

    const-string v19, "firebirdsql:"

    const-string v20, "org.firebirdsql.jdbc.FBDriver"

    const-string v21, "hsqldb:"

    const-string v22, "org.hsqldb.jdbcDriver"

    const-string v23, "informix-sqli:"

    const-string v24, "com.informix.jdbc.IfxDriver"

    const-string v25, "jtds:"

    const-string v26, "net.sourceforge.jtds.jdbc.Driver"

    const-string v27, "microsoft:"

    const-string v28, "com.microsoft.jdbc.sqlserver.SQLServerDriver"

    const-string v29, "mimer:"

    const-string v30, "com.mimer.jdbc.Driver"

    const-string v31, "mysql:"

    const-string v32, "com.mysql.jdbc.Driver"

    const-string v33, "odbc:"

    const-string v34, "sun.jdbc.odbc.JdbcOdbcDriver"

    const-string v35, "oracle:"

    const-string v36, "oracle.jdbc.driver.OracleDriver"

    const-string v37, "pervasive:"

    const-string v38, "com.pervasive.jdbc.v2.Driver"

    const-string v39, "pointbase:micro:"

    const-string v40, "com.pointbase.me.jdbc.jdbcDriver"

    const-string v41, "pointbase:"

    const-string v42, "com.pointbase.jdbc.jdbcUniversalDriver"

    const-string v43, "postgresql:"

    const-string v44, "org.postgresql.Driver"

    const-string v45, "sybase:"

    const-string v46, "com.sybase.jdbc3.jdbc.SybDriver"

    const-string v47, "sqlserver:"

    const-string v48, "com.microsoft.sqlserver.jdbc.SQLServerDriver"

    filled-new-array/range {v1 .. v50}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/util/JdbcUtils;->DRIVERS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    sget-object v0, Lorg/h2/engine/SysProperties;->JAVA_OBJECT_SERIALIZER:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/JavaObjectSerializer;

    sput-object v0, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    sget-object v0, Lorg/h2/engine/SysProperties;->CUSTOM_DATA_TYPES_HANDLER:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/CustomDataTypesHandler;

    sput-object v0, Lorg/h2/util/JdbcUtils;->customDataTypesHandler:Lorg/h2/api/CustomDataTypesHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addClassFactory(Lorg/h2/util/Utils$ClassFactory;)V
    .locals 1

    invoke-static {}, Lorg/h2/util/JdbcUtils;->getUserClassFactories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static closeSilently(Ljava/sql/Connection;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/sql/ResultSet;)V
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/sql/Statement;)V
    .locals 0

    .line 3
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static deserialize([BLorg/h2/store/DataHandler;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/h2/api/JavaObjectSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lorg/h2/api/JavaObjectSerializer;->deserialize([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-boolean p0, Lorg/h2/engine/SysProperties;->USE_THREAD_CONTEXT_CLASS_LOADER:Z

    if-eqz p0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v0, Lorg/h2/util/JdbcUtils$1;

    invoke-direct {v0, p1, p0}, Lorg/h2/util/JdbcUtils$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0x15fab

    invoke-static {v0, p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "password"

    invoke-virtual {v0, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0, p1, v0}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->load(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/sql/Driver;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    :cond_1
    const-class v0, Ljavax/naming/Context;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/naming/Context;

    invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/sql/DataSource;

    const-string p1, "user"

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "password"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/h2/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1, p2}, Ljavax/sql/DataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "jdbc:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/h2/util/JdbcUtils;->DRIVERS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getUserClassFactories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/Utils$ClassFactory;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    :cond_0
    sget-object v0, Lorg/h2/util/JdbcUtils;->userClassFactories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static load(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->getDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public static loadUserClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNames:Ljava/util/HashSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lorg/h2/engine/SysProperties;->ALLOWED_CLASSES:Ljava/lang/String;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-static {v0, v5, v2}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v8, v0, v6

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNamePrefixes:[Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sput-boolean v7, Lorg/h2/util/JdbcUtils;->allowAllClasses:Z

    sput-object v4, Lorg/h2/util/JdbcUtils;->allowedClassNames:Ljava/util/HashSet;

    :cond_3
    sget-boolean v0, Lorg/h2/util/JdbcUtils;->allowAllClasses:Z

    if-nez v0, :cond_7

    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNames:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lorg/h2/util/JdbcUtils;->allowedClassNamePrefixes:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const v0, 0x16016

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_3
    invoke-static {}, Lorg/h2/util/JdbcUtils;->getUserClassFactories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v3, 0x15fe6

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/util/Utils$ClassFactory;

    invoke-interface {v1, p0}, Lorg/h2/util/Utils$ClassFactory;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :try_start_0
    invoke-interface {v1, p0}, Lorg/h2/util/Utils$ClassFactory;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_8

    return-object v1

    :catch_0
    move-exception v0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_9
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    const v1, 0xc350

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return-object p0

    :catch_4
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static removeClassFactory(Lorg/h2/util/Utils$ClassFactory;)V
    .locals 1

    invoke-static {}, Lorg/h2/util/JdbcUtils;->getUserClassFactories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static serialize(Ljava/lang/Object;Lorg/h2/store/DataHandler;)[B
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lorg/h2/api/JavaObjectSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, Lorg/h2/util/JdbcUtils;->serializer:Lorg/h2/api/JavaObjectSerializer;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lorg/h2/api/JavaObjectSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0x15faa

    invoke-static {v0, p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method
