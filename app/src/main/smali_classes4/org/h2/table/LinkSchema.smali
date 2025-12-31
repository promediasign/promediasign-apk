.class public Lorg/h2/table/LinkSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static linkSchema(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 14

    move-object/from16 v0, p6

    const-string v1, ", "

    const-string v2, "CREATE SCHEMA IF NOT EXISTS "

    new-instance v3, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v3}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/h2/tools/SimpleResultSet;->setAutoClose(Z)V

    const/16 v5, 0xc

    const v6, 0x7fffffff

    const-string v7, "TABLE_NAME"

    invoke-virtual {v3, v7, v5, v6, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {p2 .. p5}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v8
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v2, "jdbc:postgresql:"

    move-object/from16 v9, p3

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    const-string v10, "TABLE"

    const-string v11, "LINKED TABLE"

    const-string v12, "VIEW"

    const-string v13, "EXTERNAL"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v5, v0, v5, v10}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v1, v5

    :goto_1
    move-object v5, v6

    goto/16 :goto_3

    :cond_0
    invoke-interface {v6}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v2

    invoke-interface {v2, v5, v0, v5, v5}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    goto :goto_0

    :goto_2
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CREATE LINKED TABLE "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x28

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v3, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_1
    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    invoke-static {v6}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    return-object v3

    :catchall_1
    move-exception v0

    move-object v8, v5

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v5

    move-object v8, v1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v6, v5

    move-object v8, v6

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v8, v1

    :goto_3
    :try_start_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v6, v5

    move-object v5, v1

    :goto_4
    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    invoke-static {v6}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    invoke-static {v8}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw v0
.end method
