.class public Lorg/h2/tools/Script;
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

    new-instance v0, Lorg/h2/tools/Script;

    invoke-direct {v0}, Lorg/h2/tools/Script;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Script;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method public static process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    invoke-static {p0, p1, p2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Lorg/h2/tools/Script;->process(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw p0
.end method

.method public static process(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "SCRIPT "

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TO \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "backup.sql"

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v5

    move-object v8, v6

    move-object v9, v8

    move-object v7, v2

    :goto_0
    if-eqz p1, :cond_b

    array-length v0, p1

    if-ge v3, v0, :cond_b

    aget-object v0, p1, v3

    const-string v1, "-url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p1, v3

    move-object v4, v0

    goto/16 :goto_4

    :cond_0
    const-string v1, "-user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p1, v3

    move-object v5, v0

    goto/16 :goto_4

    :cond_1
    const-string v1, "-password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p1, v3

    move-object v6, v0

    goto/16 :goto_4

    :cond_2
    const-string v1, "-script"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p1, v3

    move-object v7, v0

    goto/16 :goto_4

    :cond_3
    const-string v1, "-options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    array-length v2, p1

    if-ge v3, v2, :cond_7

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "SIMPLE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x20

    if-nez v8, :cond_6

    const-string v8, "NO"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "DROP"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const-string v8, "BLOCKSIZE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    :goto_3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v0

    move-object v9, v1

    goto :goto_4

    :cond_8
    const-string v1, "-help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "-?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v0}, Lorg/h2/util/Tool;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_5
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    return-void

    :cond_b
    if-eqz v4, :cond_c

    invoke-static/range {v4 .. v9}, Lorg/h2/tools/Script;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lorg/h2/util/Tool;->showUsage()V

    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "URL not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
