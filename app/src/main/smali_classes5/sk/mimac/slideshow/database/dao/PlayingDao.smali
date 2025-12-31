.class public abstract Lsk/mimac/slideshow/database/dao/PlayingDao;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getForAll(Ljavax/sql/DataSource;Ljava/lang/Integer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sql/DataSource;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT playlist FROM playing WHERE panel_item_id "

    invoke-interface {p0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "IS NULL"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_0
    const-string v0, "= ?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ORDER BY day, hour"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "playlist"

    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p0}, Ljava/sql/Connection;->close()V

    return-object v1

    :goto_4
    if-eqz p1, :cond_4

    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    if-eqz v0, :cond_5

    :try_start_7
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_8
    if-eqz p0, :cond_6

    :try_start_9
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_9
    throw p1
.end method
