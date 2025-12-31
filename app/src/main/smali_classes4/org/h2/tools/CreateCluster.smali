.class public Lorg/h2/tools/CreateCluster;
.super Lorg/h2/util/Tool;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/h2/tools/CreateCluster;

    invoke-direct {v0}, Lorg/h2/tools/CreateCluster;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/CreateCluster;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const-string v13, "SET EXCLUSIVE FALSE"

    const-string v14, "\'"

    const-string v2, ""

    const-string v3, ";CLUSTER=\'\'"

    const-string v4, "DROP ALL OBJECTS DELETE FILES"

    const-string v15, "SET CLUSTER \'"

    const-string v0, ";IFEXISTS=TRUE;CLUSTER=TRUE"

    const-string v8, "backup.sql"

    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v6
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v6}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    invoke-interface {v6}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v21, v8

    :goto_0
    const/4 v5, 0x0

    :goto_1
    const/16 v16, 0x0

    const/16 v20, 0x0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v21, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    const v5, 0x15f9d

    if-ne v7, v5, :cond_0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v7}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    :try_start_5
    const-string v0, "SET EXCLUSIVE 2"

    invoke-interface {v5, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    :try_start_6
    new-instance v0, Lorg/h2/tools/Script;

    invoke-direct {v0}, Lorg/h2/tools/Script;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    move-object/from16 p1, v5

    :try_start_7
    iget-object v5, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Lorg/h2/util/Tool;->setOut(Ljava/io/PrintStream;)V

    invoke-static {v7, v8, v2, v2}, Lorg/h2/tools/Script;->process(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    :try_start_8
    invoke-interface/range {v17 .. v17}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :try_start_9
    invoke-interface {v6, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    invoke-interface/range {v17 .. v17}, Ljava/sql/Connection;->close()V

    new-instance v2, Lorg/h2/tools/RunScript;

    invoke-direct {v2}, Lorg/h2/tools/RunScript;-><init>()V

    iget-object v0, v1, Lorg/h2/util/Tool;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Lorg/h2/util/Tool;->setOut(Ljava/io/PrintStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v18, p1

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move-object v6, v8

    move-object/from16 v20, v7

    move-object v7, v0

    move-object/from16 v21, v8

    move/from16 v8, v16

    :try_start_a
    invoke-virtual/range {v2 .. v8}, Lorg/h2/tools/RunScript;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    invoke-static/range {p2 .. p4}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-interface {v5}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v3, v18

    :try_start_d
    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-interface {v3, v13}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static/range {v21 .. v21}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static/range {v20 .. v20}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    :goto_4
    move-object v6, v5

    move-object v5, v3

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    :goto_5
    move-object/from16 v16, v2

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v3, v18

    :goto_6
    move-object/from16 v16, v19

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v3, v18

    :goto_7
    move-object/from16 v5, v17

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v5, v17

    :goto_8
    const/16 v16, 0x0

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object/from16 v3, p1

    :goto_9
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object v5, v6

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object v3, v5

    goto :goto_9

    :goto_a
    :try_start_f
    invoke-interface {v3, v13}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_4

    :catchall_c
    move-exception v0

    move-object v3, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    :goto_b
    const/16 v16, 0x0

    goto :goto_c

    :catchall_d
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v5, 0x0

    goto :goto_b

    :cond_0
    move-object/from16 v21, v8

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :catchall_e
    move-exception v0

    goto/16 :goto_0

    :goto_c
    invoke-static/range {v21 .. v21}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static/range {v16 .. v16}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    invoke-static/range {v20 .. v20}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    invoke-static {v6}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/h2/tools/CreateCluster;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v8, v5

    move-object v6, v1

    move-object v7, v6

    :goto_0
    if-eqz p1, :cond_7

    array-length v0, p1

    if-ge v2, v0, :cond_7

    aget-object v0, p1, v2

    const-string v1, "-urlSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v1, "-urlTarget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v1, "-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v6, v0

    goto :goto_1

    :cond_2
    const-string v1, "-password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v7, v0

    goto :goto_1

    :cond_3
    const-string v1, "-serverList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    aget-object v0, p1, v2

    move-object v8, v0

    goto :goto_1

    :cond_4
    const-string v1, "-help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v8, :cond_8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/h2/tools/CreateCluster;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Source URL, target URL, or server list not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
