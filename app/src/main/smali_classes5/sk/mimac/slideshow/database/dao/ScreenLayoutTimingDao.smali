.class public abstract Lsk/mimac/slideshow/database/dao/ScreenLayoutTimingDao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getForAll(Ljavax/sql/DataSource;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sql/DataSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    const-string v0, "SELECT screen_layout FROM screen_layout_timing ORDER BY day, hour"

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "screen_layout"

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_5
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v0
.end method
