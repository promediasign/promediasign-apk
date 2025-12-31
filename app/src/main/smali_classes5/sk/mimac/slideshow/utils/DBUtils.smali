.class public abstract Lsk/mimac/slideshow/utils/DBUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static process(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
.end method
