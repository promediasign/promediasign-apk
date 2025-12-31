.class public Lorg/h2/bnf/context/DbContents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private defaultSchema:Lorg/h2/bnf/context/DbSchema;

.field private isDB2:Z

.field private isDerby:Z

.field private isFirebird:Z

.field private isH2:Z

.field private isH2ModeMySQL:Z

.field private isMSSQLServer:Z

.field private isMySQL:Z

.field private isOracle:Z

.field private isPostgreSQL:Z

.field private isSQLite:Z

.field private schemas:[Lorg/h2/bnf/context/DbSchema;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultSchemaName(Ljava/sql/DatabaseMetaData;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getUserName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    if-eqz v1, :cond_1

    const-string p1, "public"

    return-object p1

    :cond_1
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isDerby:Z

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getSchemas()Ljava/sql/ResultSet;

    move-result-object p1

    const-string v1, "IS_DEFAULT"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "TABLE_SCHEM"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    return-object v0
.end method

.method private getSchemaNames(Ljava/sql/DatabaseMetaData;)[Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lorg/h2/bnf/context/DbContents;->isSQLite:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, v0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/sql/DatabaseMetaData;->getSchemas()Ljava/sql/ResultSet;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "TABLE_SCHEM"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v5, :cond_2

    const/16 v5, 0x15

    new-array v5, v5, [Ljava/lang/String;

    const-string v18, "CTXSYS"

    aput-object v18, v5, v17

    const-string v18, "DIP"

    aput-object v18, v5, v16

    const-string v16, "DBSNMP"

    aput-object v16, v5, v15

    const-string v15, "DMSYS"

    aput-object v15, v5, v14

    const-string v14, "EXFSYS"

    aput-object v14, v5, v13

    const-string v13, "FLOWS_020100"

    aput-object v13, v5, v12

    const-string v12, "FLOWS_FILES"

    aput-object v12, v5, v11

    const-string v11, "MDDATA"

    aput-object v11, v5, v10

    const-string v10, "MDSYS"

    aput-object v10, v5, v9

    const-string v9, "MGMT_VIEW"

    aput-object v9, v5, v8

    const-string v8, "OLAPSYS"

    aput-object v8, v5, v7

    const-string v7, "ORDSYS"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "ORDPLUGINS"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "OUTLN"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "SI_INFORMTN_SCHEMA"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "SYS"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "SYSMAN"

    aput-object v7, v5, v6

    const/16 v6, 0x11

    const-string v7, "SYSTEM"

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "TSMSYS"

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "WMSYS"

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "XDB"

    aput-object v7, v5, v6

    goto :goto_1

    :cond_2
    iget-boolean v5, v0, Lorg/h2/bnf/context/DbContents;->isMSSQLServer:Z

    if-eqz v5, :cond_3

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "sys"

    aput-object v6, v5, v17

    const-string v6, "db_accessadmin"

    aput-object v6, v5, v16

    const-string v6, "db_backupoperator"

    aput-object v6, v5, v15

    const-string v6, "db_datareader"

    aput-object v6, v5, v14

    const-string v6, "db_datawriter"

    aput-object v6, v5, v13

    const-string v6, "db_ddladmin"

    aput-object v6, v5, v12

    const-string v6, "db_denydatareader"

    aput-object v6, v5, v11

    const-string v6, "db_denydatawriter"

    aput-object v6, v5, v10

    const-string v6, "db_owner"

    aput-object v6, v5, v9

    const-string v6, "db_securityadmin"

    aput-object v6, v5, v8

    goto :goto_1

    :cond_3
    iget-boolean v5, v0, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    if-eqz v5, :cond_4

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "NULLID"

    aput-object v6, v5, v17

    const-string v6, "SYSFUN"

    aput-object v6, v5, v16

    const-string v6, "SYSIBMINTERNAL"

    aput-object v6, v5, v15

    const-string v6, "SYSIBMTS"

    aput-object v6, v5, v14

    const-string v6, "SYSPROC"

    aput-object v6, v5, v13

    const-string v6, "SYSPUBLIC"

    aput-object v6, v5, v12

    const-string v6, "SYSCAT"

    aput-object v6, v5, v11

    const-string v6, "SYSIBM"

    aput-object v6, v5, v10

    const-string v6, "SYSIBMADM"

    aput-object v6, v5, v9

    const-string v6, "SYSSTAT"

    aput-object v6, v5, v8

    const-string v6, "SYSTOOLS"

    aput-object v6, v5, v7

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_6

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v4, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v4, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    :cond_9
    :goto_4
    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDefaultSchema()Lorg/h2/bnf/context/DbSchema;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public getSchemas()[Lorg/h2/bnf/context/DbSchema;
    .locals 1

    iget-object v0, p0, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public isDB2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    return v0
.end method

.method public isDerby()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isDerby:Z

    return v0
.end method

.method public isFirebird()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    return v0
.end method

.method public isH2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2:Z

    return v0
.end method

.method public isH2ModeMySQL()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2ModeMySQL:Z

    return v0
.end method

.method public isMSSQLServer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isMSSQLServer:Z

    return v0
.end method

.method public isMySQL()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    return v0
.end method

.method public isOracle()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    return v0
.end method

.method public isPostgreSQL()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    return v0
.end method

.method public isSQLite()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isSQLite:Z

    return v0
.end method

.method public quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2ModeMySQL:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized readContents(Ljava/lang/String;Ljava/sql/Connection;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "jdbc:h2:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isH2:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "SELECT UPPER(VALUE) FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    move-object/from16 v4, p2

    invoke-interface {v4, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const-string v5, "MODE"

    invoke-interface {v2, v3, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    const-string v6, "MYSQL"

    invoke-interface {v5, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v3, v1, Lorg/h2/bnf/context/DbContents;->isH2ModeMySQL:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    const-string v2, "jdbc:db2:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    const-string v2, "jdbc:sqlite:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isSQLite:Z

    const-string v2, "jdbc:oracle:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    const-string v2, "jdbc:postgresql:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_3

    const-string v2, "jdbc:vertica:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    const-string v2, "jdbc:mysql:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    const-string v2, "jdbc:derby:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isDerby:Z

    const-string v2, "jdbc:firebirdsql:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    const-string v2, "jdbc:sqlserver:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/h2/bnf/context/DbContents;->isMSSQLServer:Z

    invoke-interface/range {p2 .. p2}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/h2/bnf/context/DbContents;->getDefaultSchemaName(Ljava/sql/DatabaseMetaData;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0}, Lorg/h2/bnf/context/DbContents;->getSchemaNames(Ljava/sql/DatabaseMetaData;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    new-array v6, v6, [Lorg/h2/bnf/context/DbSchema;

    iput-object v6, v1, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    const/4 v6, 0x0

    :goto_4
    array-length v7, v4

    if-ge v6, v7, :cond_8

    aget-object v7, v4, v6

    if-eqz v2, :cond_5

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v8, 0x1

    :goto_6
    new-instance v9, Lorg/h2/bnf/context/DbSchema;

    invoke-direct {v9, v1, v7, v8}, Lorg/h2/bnf/context/DbSchema;-><init>(Lorg/h2/bnf/context/DbContents;Ljava/lang/String;Z)V

    if-eqz v8, :cond_6

    iput-object v9, v1, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    :cond_6
    iget-object v7, v1, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    aput-object v9, v7, v6

    const-string v10, "TABLE"

    const-string v11, "SYSTEM TABLE"

    const-string v12, "VIEW"

    const-string v13, "SYSTEM VIEW"

    const-string v14, "TABLE LINK"

    const-string v15, "SYNONYM"

    const-string v16, "EXTERNAL"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v0, v7}, Lorg/h2/bnf/context/DbSchema;->readTables(Ljava/sql/DatabaseMetaData;[Ljava/lang/String;)V

    iget-boolean v7, v1, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    if-nez v7, :cond_7

    iget-boolean v7, v1, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    if-nez v7, :cond_7

    invoke-virtual {v9, v0}, Lorg/h2/bnf/context/DbSchema;->readProcedures(Ljava/sql/DatabaseMetaData;)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    if-nez v0, :cond_c

    iget-object v0, v1, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v5, v2, :cond_c

    aget-object v4, v0, v5

    const-string v6, "dbo"

    iget-object v7, v4, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v4, v1, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    goto :goto_8

    :cond_9
    iget-object v6, v1, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    iget-object v6, v4, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_b

    :cond_a
    iget-object v3, v4, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    iput-object v4, v1, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0

    throw v0
.end method
