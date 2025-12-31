.class public abstract Landroidx/media3/datasource/DataSourceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static closeQuietly(Landroidx/media3/datasource/DataSource;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
