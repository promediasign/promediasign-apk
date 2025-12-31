.class Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PipedRequestBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field private final stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    return-void
.end method

.method public static synthetic access$300(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;)Lcom/dropbox/core/util/IOUtil$ProgressListener;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1

    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody$CountingSink;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->close()V

    return-void
.end method
