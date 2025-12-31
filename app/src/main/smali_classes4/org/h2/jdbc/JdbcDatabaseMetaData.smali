.class public Lorg/h2/jdbc/JdbcDatabaseMetaData;
.super Lorg/h2/message/TraceObject;
.source "SourceFile"

# interfaces
.implements Ljava/sql/DatabaseMetaData;
.implements Lorg/h2/jdbc/JdbcDatabaseMetaDataBackwardsCompat;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;


# direct methods
.method public constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/message/Trace;I)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0, p3}, Lorg/h2/message/TraceObject;->setTrace(Lorg/h2/message/Trace;II)V

    iput-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    return-void
.end method

.method private static getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "%"

    :cond_1
    return-object p0
.end method

.method private getFunctions(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TOPIC FROM INFORMATION_SCHEMA.HELP WHERE SECTION = ?"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    new-instance v2, Lorg/h2/util/StatementBuilder;

    invoke-direct {v2}, Lorg/h2/util/StatementBuilder;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-static {v3, v4, v1}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    const-string v8, ","

    invoke-virtual {v2, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v2, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "%"

    :cond_0
    return-object p0
.end method

.method private static getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "%"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "PUBLIC"

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1

    const-string v0, "allProceduresAreCallable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1

    const-string v0, "allTablesAreSelectable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public autoCommitFailureClosesAllResultSets()Z
    .locals 1

    const-string v0, "autoCommitFailureClosesAllResultSets"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1

    const-string v0, "dataDefinitionCausesTransactionCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1

    const-string v0, "dataDefinitionIgnoredInTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 3

    const-string v0, "deletesAreDetected"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1

    const-string v0, "doesMaxRowSizeIncludeBlobs"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const-string p1, "attributes"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getBestRowIdentifier("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ");"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p4, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p5, "SELECT CAST(? AS SMALLINT) SCOPE, C.COLUMN_NAME, C.DATA_TYPE, C.TYPE_NAME, C.CHARACTER_MAXIMUM_LENGTH COLUMN_SIZE, C.CHARACTER_MAXIMUM_LENGTH BUFFER_LENGTH, CAST(C.NUMERIC_SCALE AS SMALLINT) DECIMAL_DIGITS, CAST(? AS SMALLINT) PSEUDO_COLUMN FROM INFORMATION_SCHEMA.INDEXES I,  INFORMATION_SCHEMA.COLUMNS C WHERE C.TABLE_NAME = I.TABLE_NAME AND C.COLUMN_NAME = I.COLUMN_NAME AND C.TABLE_CATALOG LIKE ? ESCAPE ? AND C.TABLE_SCHEMA LIKE ? ESCAPE ? AND C.TABLE_NAME = ? AND I.PRIMARY_KEY = TRUE ORDER BY SCOPE"

    invoke-virtual {p4, p5}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4

    const/4 p5, 0x2

    const/4 v1, 0x1

    invoke-interface {p4, v1, p5}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p4, p5, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x3

    invoke-interface {p4, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {p4, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "getCatalogSeparator"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getCatalogTerm"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "catalog"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 2

    :try_start_0
    const-string v0, "getCatalogs"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT CATALOG_NAME TABLE_CAT FROM INFORMATION_SCHEMA.CATALOGS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 7

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v2, "Name"

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v2, "Value"

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    const/4 v3, 0x1

    aput-object v5, v6, v3

    invoke-virtual {v1, v6}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getColumnPrivileges("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, GRANTOR, GRANTEE, PRIVILEGE_TYPE PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME = ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY COLUMN_NAME, PRIVILEGE"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getColumns("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, DATA_TYPE, TYPE_NAME, CHARACTER_MAXIMUM_LENGTH COLUMN_SIZE, CHARACTER_MAXIMUM_LENGTH BUFFER_LENGTH, NUMERIC_SCALE DECIMAL_DIGITS, NUMERIC_PRECISION_RADIX NUM_PREC_RADIX, NULLABLE, REMARKS, COLUMN_DEFAULT COLUMN_DEF, DATA_TYPE SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, CHARACTER_OCTET_LENGTH CHAR_OCTET_LENGTH, ORDINAL_POSITION, IS_NULLABLE IS_NULLABLE, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_CATALOG, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_SCHEMA, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_TABLE, SOURCE_DATA_TYPE, CASE WHEN SEQUENCE_NAME IS NULL THEN CAST(? AS VARCHAR) ELSE CAST(? AS VARCHAR) END IS_AUTOINCREMENT, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_CATLOG FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY TABLE_SCHEM, TABLE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v2, "NO"

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v2, "YES"

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0xa

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    const-string v0, "getConnection"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getCrossReference("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE PKTABLE_CATALOG LIKE ? ESCAPE ? AND PKTABLE_SCHEMA LIKE ? ESCAPE ? AND PKTABLE_NAME = ? AND FKTABLE_CATALOG LIKE ? ESCAPE ? AND FKTABLE_SCHEMA LIKE ? ESCAPE ? AND FKTABLE_NAME = ? ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p5}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0xa

    invoke-interface {v1, p1, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDatabaseMajorVersion()I
    .locals 1

    const-string v0, "getDatabaseMajorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1

    const-string v0, "getDatabaseMinorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDatabaseProductName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "H2"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getDatabaseProductVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1

    const-string v0, "getDefaultTransactionIsolation"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    const-string v0, "getDriverMajorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    const-string v0, "getDriverMinorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDriverName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "H2 JDBC Driver"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getDriverVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getExportedKeys("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE PKTABLE_CATALOG LIKE ? ESCAPE ? AND PKTABLE_SCHEMA LIKE ? ESCAPE ? AND PKTABLE_NAME = ? ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1

    const-string v0, "getExtraNameCharacters"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const-string p1, "getFunctionColumns"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    .line 2
    const-string p1, "getFunctions"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1

    const-string v0, "getIdentifierQuoteString"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "\""

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getImportedKeys("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE FKTABLE_CATALOG LIKE ? ESCAPE ? AND FKTABLE_SCHEMA LIKE ? ESCAPE ? AND FKTABLE_NAME = ? ORDER BY PKTABLE_CAT, PKTABLE_SCHEM, PKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 6

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, ") AND TABLE_NAME = ? ORDER BY NON_UNIQUE, TYPE, TABLE_SCHEM, INDEX_NAME, ORDINAL_POSITION"

    const-string v3, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, NON_UNIQUE, TABLE_CATALOG INDEX_QUALIFIER, INDEX_NAME, INDEX_TYPE TYPE, ORDINAL_POSITION, COLUMN_NAME, ASC_OR_DESC, CARDINALITY, PAGES, FILTER_CONDITION, SORT_TYPE FROM INFORMATION_SCHEMA.INDEXES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND ("

    const-string v4, "getIndexInfo("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ");"

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const-string p4, "NON_UNIQUE=FALSE"

    goto :goto_1

    :cond_1
    const-string p4, "TRUE"

    :goto_1
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p5, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x1

    invoke-interface {p4, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p4, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {p4, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getJDBCMajorVersion()I
    .locals 1

    const-string v0, "getJDBCMajorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1

    const-string v0, "getJDBCMinorVersion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1

    const-string v0, "getMaxBinaryLiteralLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1

    const-string v0, "getMaxCatalogNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1

    const-string v0, "getMaxCharLiteralLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1

    const-string v0, "getMaxColumnNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1

    const-string v0, "getMaxColumnsInGroupBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1

    const-string v0, "getMaxColumnsInIndex"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1

    const-string v0, "getMaxColumnsInOrderBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1

    const-string v0, "getMaxColumnsInSelect"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1

    const-string v0, "getMaxColumnsInTable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    const-string v0, "getMaxConnections"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1

    const-string v0, "getMaxCursorNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1

    const-string v0, "getMaxIndexLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1

    const-string v0, "getMaxProcedureNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1

    const-string v0, "getMaxRowSize"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1

    const-string v0, "getMaxSchemaNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1

    const-string v0, "getMaxStatementLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .locals 1

    const-string v0, "getMaxStatements"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1

    const-string v0, "getMaxTableNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1

    const-string v0, "getMaxTablesInSelect"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1

    const-string v0, "getMaxUserNameLength"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getNumericFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (Numeric)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, "\\"

    const-string v1, ", "

    const-string v2, "getPrimaryKeys("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION KEY_SEQ, IFNULL(CONSTRAINT_NAME, INDEX_NAME) PK_NAME FROM INFORMATION_SCHEMA.INDEXES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME = ? AND PRIMARY_KEY = TRUE ORDER BY COLUMN_NAME"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getProcedureColumns("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT ALIAS_CATALOG PROCEDURE_CAT, ALIAS_SCHEMA PROCEDURE_SCHEM, ALIAS_NAME PROCEDURE_NAME, COLUMN_NAME, COLUMN_TYPE, DATA_TYPE, TYPE_NAME, PRECISION, PRECISION LENGTH, SCALE, RADIX, NULLABLE, REMARKS, COLUMN_DEFAULT COLUMN_DEF, ZERO() SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, ZERO() CHAR_OCTET_LENGTH, POS ORDINAL_POSITION, ? IS_NULLABLE, ALIAS_NAME SPECIFIC_NAME FROM INFORMATION_SCHEMA.FUNCTION_COLUMNS WHERE ALIAS_CATALOG LIKE ? ESCAPE ? AND ALIAS_SCHEMA LIKE ? ESCAPE ? AND ALIAS_NAME LIKE ? ESCAPE ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v2, "YES"

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getProcedureTerm"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "procedure"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getProcedures("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT ALIAS_CATALOG PROCEDURE_CAT, ALIAS_SCHEMA PROCEDURE_SCHEM, ALIAS_NAME PROCEDURE_NAME, COLUMN_COUNT NUM_INPUT_PARAMS, ZERO() NUM_OUTPUT_PARAMS, ZERO() NUM_RESULT_SETS, REMARKS, RETURNS_RESULT PROCEDURE_TYPE, ALIAS_NAME SPECIFIC_NAME FROM INFORMATION_SCHEMA.FUNCTION_ALIASES WHERE ALIAS_CATALOG LIKE ? ESCAPE ? AND ALIAS_SCHEMA LIKE ? ESCAPE ? AND ALIAS_NAME LIKE ? ESCAPE ? ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME, NUM_INPUT_PARAMS"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResultSetHoldability()I
    .locals 1

    const-string v0, "getResultSetHoldability"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1

    const-string v0, "getRowIdLifetime"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 1

    const-string v0, "getSQLKeywords"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "LIMIT,MINUS,ROWNUM,SYSDATE,SYSTIME,SYSTIMESTAMP,TODAY"

    return-object v0
.end method

.method public getSQLStateType()I
    .locals 1

    const-string v0, "getSQLStateType"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getSchemaTerm"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "schema"

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "getSchemas"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT SCHEMA_NAME TABLE_SCHEM, CATALOG_NAME TABLE_CATALOG,  IS_DEFAULT FROM INFORMATION_SCHEMA.SCHEMATA ORDER BY SCHEMA_NAME"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3

    .line 2
    const-string v0, "\\"

    :try_start_0
    const-string v1, "getSchemas(String,String)"

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT SCHEMA_NAME TABLE_SCHEM, CATALOG_NAME TABLE_CATALOG,  IS_DEFAULT FROM INFORMATION_SCHEMA.SCHEMATA WHERE CATALOG_NAME LIKE ? ESCAPE ? AND SCHEMA_NAME LIKE ? ESCAPE ? ORDER BY SCHEMA_NAME"

    invoke-virtual {v1, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v1, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v1, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1

    const-string v0, "getSearchStringEscape"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getStringFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (String)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3

    const-string v0, ", "

    const-string v1, "getSuperTables("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT CATALOG_NAME TABLE_CAT, CATALOG_NAME TABLE_SCHEM, CATALOG_NAME TABLE_NAME, CATALOG_NAME SUPERTABLE_NAME FROM INFORMATION_SCHEMA.CATALOGS WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const-string p1, "superTypes"

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getSystemFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (System)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4

    const-string v0, ", "

    const-string v1, "\\"

    const-string v2, "getTablePrivileges("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v2, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, GRANTOR, GRANTEE, PRIVILEGE_TYPE PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? ORDER BY TABLE_SCHEM, TABLE_NAME, PRIVILEGE"

    invoke-virtual {v0, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 2

    :try_start_0
    const-string v0, "getTableTypes"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TYPE TABLE_TYPE FROM INFORMATION_SCHEMA.TABLE_TYPES ORDER BY TABLE_TYPE"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 6

    const-string v0, "\\"

    const-string v1, "getTables("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ", "

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    array-length v2, p4

    if-lez v2, :cond_2

    new-instance v2, Lorg/h2/util/StatementBuilder;

    const-string v4, "TABLE_TYPE IN("

    invoke-direct {v2, v4}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    array-length v5, p4

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v5, 0x3f

    invoke-virtual {v2, v5}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "TRUE"

    :goto_2
    iget-object v3, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, TABLE_TYPE, REMARKS, TYPE_NAME TYPE_CAT, TYPE_NAME TYPE_SCHEM, TYPE_NAME, TYPE_NAME SELF_REFERENCING_COL_NAME, TYPE_NAME REF_GENERATION, SQL FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ORDER BY TABLE_TYPE, TABLE_SCHEMA, TABLE_NAME"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v2, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v2, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_3
    if-eqz p4, :cond_3

    array-length p1, p4

    if-ge v1, p1, :cond_3

    add-int/lit8 p1, v1, 0x7

    aget-object p2, p4, v1

    invoke-interface {v2, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_4
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1

    const-string v0, "getTimeDateFunctions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (Time and Date)"

    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 2

    :try_start_0
    const-string v0, "getTypeInfo"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TYPE_NAME, DATA_TYPE, PRECISION, PREFIX LITERAL_PREFIX, SUFFIX LITERAL_SUFFIX, PARAMS CREATE_PARAMS, NULLABLE, CASE_SENSITIVE, SEARCHABLE, FALSE UNSIGNED_ATTRIBUTE, FALSE FIXED_PREC_SCALE, AUTO_INCREMENT, TYPE_NAME LOCAL_TYPE_NAME, MINIMUM_SCALE, MAXIMUM_SCALE, DATA_TYPE SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, RADIX NUM_PREC_RADIX FROM INFORMATION_SCHEMA.TYPE_INFO ORDER BY DATA_TYPE, POS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 3

    const-string v0, ", "

    const-string v1, "getUDTs("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/message/TraceObject;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT CAST(NULL AS VARCHAR) TYPE_CAT, CAST(NULL AS VARCHAR) TYPE_SCHEM, CAST(NULL AS VARCHAR) TYPE_NAME, CAST(NULL AS VARCHAR) CLASS_NAME, CAST(NULL AS SMALLINT) DATA_TYPE, CAST(NULL AS VARCHAR) REMARKS, CAST(NULL AS SMALLINT) BASE_TYPE FROM DUAL WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getURL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getURL()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "getUserName"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getUser()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3

    const-string v0, ", "

    const-string v1, "getVersionColumns("

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT ZERO() SCOPE, COLUMN_NAME, CAST(DATA_TYPE AS INT) DATA_TYPE, TYPE_NAME, NUMERIC_PRECISION COLUMN_SIZE, NUMERIC_PRECISION BUFFER_LENGTH, NUMERIC_PRECISION DECIMAL_DIGITS, ZERO() PSEUDO_COLUMN FROM INFORMATION_SCHEMA.COLUMNS WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public insertsAreDetected(I)Z
    .locals 3

    const-string v0, "insertsAreDetected"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public isCatalogAtStart()Z
    .locals 1

    const-string v0, "isCatalogAtStart"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    :try_start_0
    const-string v0, "isReadOnly"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public locatorsUpdateCopy()Z
    .locals 1

    const-string v0, "locatorsUpdateCopy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1

    const-string v0, "nullPlusNonNullIsNull"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1

    const-string v0, "nullsAreSortedAtEnd"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 1

    const-string v0, "nullsAreSortedAtStart"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1

    const-string v0, "nullsAreSortedHigh"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1

    const-string v0, "nullsAreSortedLow"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 3

    const-string v0, "othersDeletesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 3

    const-string v0, "othersInsertsAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 3

    const-string v0, "othersUpdatesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 3

    const-string v0, "ownDeletesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 3

    const-string v0, "ownInsertsAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 3

    const-string v0, "ownUpdatesAreVisible"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 2

    const-string v0, "storesLowerCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "storesLowerCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1

    const-string v0, "storesMixedCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "storesMixedCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 2

    const-string v0, "storesUpperCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "storesUpperCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1

    const-string v0, "supportsANSI92EntryLevelSQL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1

    const-string v0, "supportsANSI92FullSQL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1

    const-string v0, "supportsANSI92IntermediateSQL"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1

    const-string v0, "supportsAlterTableWithAddColumn"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1

    const-string v0, "supportsAlterTableWithDropColumn"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1

    const-string v0, "supportsBatchUpdates"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 1

    const-string v0, "supportsCatalogsInDataManipulation"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInIndexDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInPrivilegeDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 1

    const-string v0, "supportsCatalogsInProcedureCalls"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInTableDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1

    const-string v0, "supportsColumnAliasing"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1

    .line 1
    const-string v0, "supportsConvert"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 2

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "supportsConvert("

    const-string v0, ", "

    const-string v1, ");"

    .line 2
    invoke-static {p2, p1, v0, p1, v1}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1

    const-string v0, "supportsCoreSQLGrammar"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 1

    const-string v0, "supportsCorrelatedSubqueries"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1

    const-string v0, "supportsDataDefinitionAndDataManipulationTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1

    const-string v0, "supportsDataManipulationTransactionsOnly"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1

    const-string v0, "supportsDifferentTableCorrelationNames"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1

    const-string v0, "supportsExpressionsInOrderBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1

    const-string v0, "supportsExtendedSQLGrammar"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1

    const-string v0, "supportsFullOuterJoins"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    const-string v0, "supportsGetGeneratedKeys"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1

    const-string v0, "supportsGroupBy"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1

    const-string v0, "supportsGroupByBeyondSelect"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1

    const-string v0, "supportsGroupByUnrelated"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1

    const-string v0, "supportsIntegrityEnhancementFacility"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1

    const-string v0, "supportsLikeEscapeClause"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1

    const-string v0, "supportsLimitedOuterJoins"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1

    const-string v0, "supportsMinimumSQLGrammar"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1

    const-string v0, "supportsMixedCaseIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 2

    const-string v0, "supportsMixedCaseQuotedIdentifiers"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1

    const-string v0, "supportsMultipleOpenResults"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 1

    const-string v0, "supportsMultipleResultSets"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1

    const-string v0, "supportsMultipleTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1

    const-string v0, "supportsNamedParameters"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1

    const-string v0, "supportsNonNullableColumns"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1

    const-string v0, "supportsOpenCursorsAcrossCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1

    const-string v0, "supportsOpenCursorsAcrossRollback"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1

    const-string v0, "supportsOpenStatementsAcrossCommit"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1

    const-string v0, "supportsOpenStatementsAcrossRollback"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1

    const-string v0, "supportsOrderByUnrelated"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1

    const-string v0, "supportsOuterJoins"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1

    const-string v0, "supportsPositionedDelete"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1

    const-string v0, "supportsPositionedUpdate"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->isDebugEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "supportsResultSetConcurrency("

    .line 8
    .line 9
    const-string v1, ", "

    .line 10
    .line 11
    const-string v2, ");"

    .line 12
    .line 13
    invoke-static {v0, p1, v1, p2, v2}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2}, Lorg/h2/message/TraceObject;->debugCode(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/16 p2, 0x3ed

    .line 21
    .line 22
    if-eq p1, p2, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_0
    return p1
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 3

    const-string v0, "supportsResultSetHoldability"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetType(I)Z
    .locals 3

    const-string v0, "supportsResultSetType"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSavepoints()Z
    .locals 1

    const-string v0, "supportsSavepoints"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1

    const-string v0, "supportsSchemasInDataManipulation"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInIndexDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInPrivilegeDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1

    const-string v0, "supportsSchemasInProcedureCalls"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInTableDefinitions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 1

    const-string v0, "supportsSelectForUpdate"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1

    const-string v0, "supportsStatementPooling"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1

    const-string v0, "supportsStoredFunctionsUsingCallSyntax"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 1

    const-string v0, "supportsStoredProcedures"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 1

    const-string v0, "supportsSubqueriesInComparisons"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 1

    const-string v0, "supportsSubqueriesInExists"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 1

    const-string v0, "supportsSubqueriesInIns"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 1

    const-string v0, "supportsSubqueriesInQuantifieds"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1

    const-string v0, "supportsTableCorrelationNames"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 2

    const-string v0, "supportsTransactionIsolationLevel"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    invoke-virtual {p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    const-string v1, "MULTI_THREADED"

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    const-string v0, "supportsTransactions"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .locals 1

    const-string v0, "supportsUnion"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 1

    const-string v0, "supportsUnionAll"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public updatesAreDetected(I)Z
    .locals 3

    const-string v0, "updatesAreDetected"

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public usesLocalFilePerTable()Z
    .locals 1

    const-string v0, "usesLocalFilePerTable"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1

    const-string v0, "usesLocalFiles"

    invoke-virtual {p0, v0}, Lorg/h2/message/TraceObject;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
