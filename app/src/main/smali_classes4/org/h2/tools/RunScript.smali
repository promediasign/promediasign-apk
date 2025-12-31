.class public Lorg/h2/tools/RunScript;
.super Lorg/h2/util/Tool;
.source "SourceFile"


# instance fields
.field private checkResults:Z

.field private showResults:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method public static execute(Ljava/sql/Connection;Ljava/io/Reader;)Ljava/sql/ResultSet;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    new-instance v0, Lorg/h2/util/ScriptReader;

    invoke-direct {v0, p1}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_3
    invoke-interface {p0}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1

    goto :goto_0
.end method

.method public static execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 7

    .line 2
    new-instance v0, Lorg/h2/tools/RunScript;

    invoke-direct {v0}, Lorg/h2/tools/RunScript;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/h2/tools/RunScript;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/RunScript;

    invoke-direct {v0}, Lorg/h2/tools/RunScript;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/RunScript;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/sql/Connection;Ljava/lang/String;ZLjava/nio/charset/Charset;)V
    .locals 7

    .line 2
    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {p2, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p2, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/h2/tools/RunScript;->process(Ljava/sql/Connection;ZLjava/lang/String;Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    throw p1
.end method

.method private process(Ljava/sql/Connection;ZLjava/lang/String;Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "+"

    const-string v4, " "

    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5

    new-instance v6, Lorg/h2/util/ScriptReader;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v6}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "@INCLUDE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->isAbsolute(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3
    invoke-static/range {p3 .. p3}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4
    sget-object v8, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    .line 5
    invoke-static {v8, v0, v7}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object/from16 v8, p1

    move-object/from16 v9, p5

    .line 6
    invoke-direct {v1, v8, v0, v2, v9}, Lorg/h2/tools/RunScript;->process(Ljava/sql/Connection;Ljava/lang/String;ZLjava/nio/charset/Charset;)V

    :cond_3
    :goto_1
    move-object/from16 v16, v5

    goto/16 :goto_8

    :cond_4
    move-object/from16 v8, p1

    move-object/from16 v9, p5

    :try_start_0
    iget-boolean v10, v1, Lorg/h2/tools/RunScript;->showResults:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ";"

    if-eqz v10, :cond_5

    :try_start_1
    const-string v10, "-->"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_7

    :cond_5
    :goto_2
    iget-boolean v7, v1, Lorg/h2/tools/RunScript;->showResults:Z

    if-nez v7, :cond_7

    iget-boolean v7, v1, Lorg/h2/tools/RunScript;->checkResults:Z

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v5, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    goto :goto_1

    :cond_7
    :goto_3
    invoke-interface {v5, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v10

    invoke-interface {v10}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "\r"

    const-string v15, "\r\n"

    move-object/from16 v16, v5

    const-string v5, "\n"

    if-eqz v13, :cond_a

    :try_start_2
    const-string v13, "\n-->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v10, :cond_9

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v7, v13}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-static {v8, v15, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 p4, v7

    const-string v7, "\n-->    "

    invoke-static {v8, v5, v7}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r-->    "

    invoke-static {v7, v14, v8}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_8
    move-object/from16 p4, v7

    :goto_6
    const/16 v7, 0x20

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    move-object/from16 v7, p4

    goto :goto_5

    :cond_9
    move-object/from16 v8, p1

    move-object/from16 v5, v16

    goto :goto_4

    :cond_a
    const-string v7, "\n;"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v1, Lorg/h2/tools/RunScript;->showResults:Z

    if-eqz v8, :cond_b

    iget-object v8, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_b
    iget-boolean v8, v1, Lorg/h2/tools/RunScript;->checkResults:Z

    if-eqz v8, :cond_d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v15, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14, v5}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v5, v4, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/sql/SQLException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected output for:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nGot:\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nExpected:\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    if-eqz v2, :cond_e

    iget-object v5, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_d
    :goto_8
    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_e
    invoke-static {v0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method private static processRunscript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "RUNSCRIPT FROM \'"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    invoke-static {p0, p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_0
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {p0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw p1
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    invoke-static {p1, p2, p3}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    if-nez p5, :cond_0

    sget-object p5, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0, p1, p4, p6, p5}, Lorg/h2/tools/RunScript;->process(Ljava/sql/Connection;Ljava/lang/String;ZLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-static {p1, p4}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "backup.sql"

    const/4 v3, 0x0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v6

    move-object v8, v2

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    if-eqz p1, :cond_d

    array-length v2, p1

    if-ge v3, v2, :cond_d

    aget-object v2, p1, v3

    const-string v4, "-url"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    move-object v5, v2

    goto/16 :goto_2

    :cond_0
    const-string v4, "-user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    move-object v6, v2

    goto/16 :goto_2

    :cond_1
    const-string v4, "-password"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    move-object v7, v2

    goto/16 :goto_2

    :cond_2
    const-string v4, "-continueOnError"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_3
    const-string v4, "-checkResults"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v9, p0, Lorg/h2/tools/RunScript;->checkResults:Z

    goto/16 :goto_2

    :cond_4
    const-string v4, "-showResults"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v9, p0, Lorg/h2/tools/RunScript;->showResults:Z

    goto :goto_2

    :cond_5
    const-string v4, "-script"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    move-object v8, v2

    goto :goto_2

    :cond_6
    const-string v4, "-time"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const-string v4, "-driver"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_2

    :cond_8
    const-string v4, "-options"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    array-length v2, p1

    if-ge v3, v2, :cond_9

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    const-string v4, "-help"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "-?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v2}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_2
    add-int/2addr v3, v9

    goto/16 :goto_0

    :cond_c
    :goto_3
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_d
    if-eqz v5, :cond_10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    if-eqz v0, :cond_e

    invoke-static {v5, v6, v7, v8, v0}, Lorg/h2/tools/RunScript;->processRunscript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/h2/tools/RunScript;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    :goto_4
    if-eqz v1, :cond_f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object p1, p0, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Done in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "URL not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
