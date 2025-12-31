.class public Lcom/dropbox/core/DbxDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final body:Ljava/io/InputStream;

.field private closed:Z

.field private final contentType:Ljava/lang/String;

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/DbxDownloader;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/dropbox/core/DbxDownloader;->body:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/dropbox/core/DbxDownloader;->contentType:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    return-void
.end method

.method private assertOpen()V
    .locals 2

    iget-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This downloader is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->body:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    :cond_0
    return-void
.end method

.method public download(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TR;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->close()V

    iget-object p1, p0, Lcom/dropbox/core/DbxDownloader;->result:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :goto_1
    invoke-virtual {p1}, Lcom/dropbox/core/util/IOUtil$WrappedException;->getCause()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->close()V

    throw p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0}, Lcom/dropbox/core/DbxDownloader;->assertOpen()V

    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->body:Ljava/io/InputStream;

    return-object v0
.end method
