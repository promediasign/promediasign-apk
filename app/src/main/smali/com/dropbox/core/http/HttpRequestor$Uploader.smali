.class public abstract Lcom/dropbox/core/http/HttpRequestor$Uploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Uploader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract finish()Lcom/dropbox/core/http/HttpRequestor$Response;
.end method

.method public abstract getBody()Ljava/io/OutputStream;
.end method

.method public upload([B)V
    .locals 1

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p1
.end method
