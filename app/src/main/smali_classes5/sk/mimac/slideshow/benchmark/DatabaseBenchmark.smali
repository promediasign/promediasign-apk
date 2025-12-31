.class public Lsk/mimac/slideshow/benchmark/DatabaseBenchmark;
.super Lsk/mimac/slideshow/benchmark/AbstractBenchmark;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;-><init>()V

    return-void
.end method


# virtual methods
.method public doCalculations()V
    .locals 15

    const-string v0, " CHECKPOINT SYNC"

    new-instance v1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "database-benchmark"

    const-string v3, "mv.db"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/zaxxer/hikari/HikariDataSource;

    invoke-direct {v2}, Lcom/zaxxer/hikari/HikariDataSource;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jdbc:h2:retry:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mv.db"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";FILE_LOCK=FS;PAGE_SIZE=1024;CACHE_SIZE=8192"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setJdbcUrl(Ljava/lang/String;)V

    const-string v3, "org.h2.Driver"

    invoke-virtual {v2, v3}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setDriverClassName(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zaxxer/hikari/AbstractHikariConfig;->setMaximumPoolSize(I)V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v4

    :try_start_0
    const-string v5, "CREATE TABLE test (id bigint PRIMARY KEY AUTO_INCREMENT, text varchar(200) NOT NULL, number int NOT NULL);"

    invoke-interface {v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2a

    :try_start_1
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2b

    :try_start_2
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2a

    invoke-interface {v4}, Ljava/sql/Connection;->close()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x1e

    const-string v7, "Table name is empty"

    if-ge v5, v6, :cond_6

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v6

    :try_start_3
    const-string v8, "SELECT table_name AS Table, sql AS Definition, table_type, table_schema FROM information_schema.tables"

    invoke-interface {v6, v8}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    :try_start_5
    invoke-interface {v9}, Ljava/sql/ResultSet;->next()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "Table"

    invoke-interface {v9, v10}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "table_type"

    invoke-interface {v9, v10}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    invoke-interface {v9}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-interface {v6}, Ljava/sql/Connection;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :goto_2
    if-eqz v9, :cond_3

    :try_start_8
    invoke-interface {v9}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_4
    if-eqz v8, :cond_4

    :try_start_a
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_6
    if-eqz v6, :cond_5

    :try_start_c
    invoke-interface {v6}, Ljava/sql/Connection;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw v0

    :cond_6
    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v5

    :try_start_d
    const-string v8, "INSERT INTO test (text, number) VALUES (?, ?)"

    invoke-interface {v5, v8}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v9, 0x0

    :goto_8
    const/4 v10, 0x2

    const/16 v11, 0x7d0

    if-ge v9, v11, :cond_8

    :try_start_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Longer data line with no. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v12, v9, 0x19

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " ** Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum facilisis tempus ullamcorper. AAA BBB 111 222 333."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v3, v11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v8, v10, v9}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v8}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :catchall_6
    move-exception v0

    if-eqz v8, :cond_7

    :try_start_f
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v1

    :try_start_10
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_8
    move-exception v0

    goto/16 :goto_28

    :cond_7
    :goto_9
    throw v0

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :cond_9
    invoke-interface {v5}, Ljava/sql/Connection;->close()V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v5

    :try_start_11
    invoke-interface {v5, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_25

    :try_start_12
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_26

    :try_start_13
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_25

    invoke-interface {v5}, Ljava/sql/Connection;->close()V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v5

    :try_start_14
    const-string v8, "SELECT COUNT(DISTINCT text) FROM test"

    invoke-interface {v5, v8}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v11, :cond_d

    :try_start_15
    invoke-interface {v8}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v12
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    const/16 v14, 0x19

    if-ne v13, v14, :cond_a

    :try_start_17
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :catchall_9
    move-exception v0

    goto :goto_c

    :cond_a
    :try_start_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count match (expected=25, actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :catchall_a
    move-exception v0

    if-eqz v12, :cond_b

    :try_start_19
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v1

    :try_start_1a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_b
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :goto_c
    if-eqz v8, :cond_c

    :try_start_1b
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v1

    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_d
    move-exception v0

    goto/16 :goto_23

    :cond_c
    :goto_d
    throw v0

    :cond_d
    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    :cond_e
    invoke-interface {v5}, Ljava/sql/Connection;->close()V

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v6, :cond_14

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v8

    :try_start_1d
    const-string v9, "SELECT id, text, number FROM test"

    invoke-interface {v8, v9}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    :try_start_1e
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v12
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :goto_f
    :try_start_1f
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "text"

    invoke-interface {v12, v13}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f

    goto :goto_f

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :catchall_e
    move-exception v0

    goto :goto_10

    :cond_10
    :try_start_20
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :try_start_21
    invoke-interface {v9}, Ljava/sql/Statement;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    invoke-interface {v8}, Ljava/sql/Connection;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catchall_f
    move-exception v0

    goto :goto_14

    :catchall_10
    move-exception v0

    goto :goto_12

    :goto_10
    if-eqz v12, :cond_11

    :try_start_22
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    goto :goto_11

    :catchall_11
    move-exception v1

    :try_start_23
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    :goto_12
    if-eqz v9, :cond_12

    :try_start_24
    invoke-interface {v9}, Ljava/sql/Statement;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    goto :goto_13

    :catchall_12
    move-exception v1

    :try_start_25
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_13
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    :goto_14
    if-eqz v8, :cond_13

    :try_start_26
    invoke-interface {v8}, Ljava/sql/Connection;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_15
    throw v0

    :cond_14
    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v5

    :try_start_27
    const-string v6, "UPDATE test SET text = ? WHERE id = ?"

    invoke-interface {v5, v6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_16

    :goto_16
    if-ge v4, v11, :cond_16

    :try_start_28
    const-string v7, "data"

    invoke-interface {v6, v3, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v6, v10, v4}, Ljava/sql/PreparedStatement;->setInt(II)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :catchall_14
    move-exception v0

    if-eqz v6, :cond_15

    :try_start_29
    invoke-interface {v6}, Ljava/sql/Statement;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v1

    :try_start_2a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_17

    :catchall_16
    move-exception v0

    goto/16 :goto_21

    :cond_15
    :goto_17
    throw v0

    :cond_16
    if-eqz v6, :cond_17

    invoke-interface {v6}, Ljava/sql/Statement;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    :cond_17
    invoke-interface {v5}, Ljava/sql/Connection;->close()V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    :try_start_2b
    invoke-interface {v3, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1f

    :try_start_2c
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_20

    :try_start_2d
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1f

    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    :try_start_2e
    const-string v4, "DELETE FROM test"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1b

    :try_start_2f
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1c

    :try_start_30
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    invoke-interface {v3}, Ljava/sql/Connection;->close()V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/HikariDataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    :try_start_31
    invoke-interface {v2, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_17

    :try_start_32
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    :try_start_33
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_17

    invoke-interface {v2}, Ljava/sql/Connection;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_17
    move-exception v0

    goto :goto_19

    :catchall_18
    move-exception v1

    if-eqz v0, :cond_18

    :try_start_34
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_19

    goto :goto_18

    :catchall_19
    move-exception v0

    :try_start_35
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    throw v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_17

    :goto_19
    if-eqz v2, :cond_19

    :try_start_36
    invoke-interface {v2}, Ljava/sql/Connection;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    goto :goto_1a

    :catchall_1a
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_19
    :goto_1a
    throw v0

    :catchall_1b
    move-exception v0

    goto :goto_1c

    :catchall_1c
    move-exception v0

    if-eqz v4, :cond_1a

    :try_start_37
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1d

    goto :goto_1b

    :catchall_1d
    move-exception v1

    :try_start_38
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1b
    throw v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1b

    :goto_1c
    if-eqz v3, :cond_1b

    :try_start_39
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    goto :goto_1d

    :catchall_1e
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1d
    throw v0

    :catchall_1f
    move-exception v0

    goto :goto_1f

    :catchall_20
    move-exception v0

    if-eqz v4, :cond_1c

    :try_start_3a
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_21

    goto :goto_1e

    :catchall_21
    move-exception v1

    :try_start_3b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1e
    throw v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1f

    :goto_1f
    if-eqz v3, :cond_1d

    :try_start_3c
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_22

    goto :goto_20

    :catchall_22
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_20
    throw v0

    :goto_21
    if-eqz v5, :cond_1e

    :try_start_3d
    invoke-interface {v5}, Ljava/sql/Connection;->close()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_23

    goto :goto_22

    :catchall_23
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_22
    throw v0

    :goto_23
    if-eqz v5, :cond_1f

    :try_start_3e
    invoke-interface {v5}, Ljava/sql/Connection;->close()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_24

    goto :goto_24

    :catchall_24
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_24
    throw v0

    :catchall_25
    move-exception v0

    goto :goto_26

    :catchall_26
    move-exception v0

    if-eqz v8, :cond_20

    :try_start_3f
    invoke-interface {v8}, Ljava/sql/Statement;->close()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_27

    goto :goto_25

    :catchall_27
    move-exception v1

    :try_start_40
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_25
    throw v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_25

    :goto_26
    if-eqz v5, :cond_21

    :try_start_41
    invoke-interface {v5}, Ljava/sql/Connection;->close()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_28

    goto :goto_27

    :catchall_28
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_27
    throw v0

    :goto_28
    if-eqz v5, :cond_22

    :try_start_42
    invoke-interface {v5}, Ljava/sql/Connection;->close()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_29

    goto :goto_29

    :catchall_29
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_29
    throw v0

    :catchall_2a
    move-exception v0

    goto :goto_2b

    :catchall_2b
    move-exception v0

    if-eqz v5, :cond_23

    :try_start_43
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_2c

    goto :goto_2a

    :catchall_2c
    move-exception v1

    :try_start_44
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_23
    :goto_2a
    throw v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2a

    :goto_2b
    if-eqz v4, :cond_24

    :try_start_45
    invoke-interface {v4}, Ljava/sql/Connection;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2d

    goto :goto_2c

    :catchall_2d
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_2c
    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Database operations"

    return-object v0
.end method
