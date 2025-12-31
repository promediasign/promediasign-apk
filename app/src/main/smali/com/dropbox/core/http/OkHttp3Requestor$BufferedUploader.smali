.class Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferedUploader"
.end annotation


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private call:Lokhttp3/Call;

.field private callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

.field private cancelled:Z

.field private closed:Z

.field private final method:Ljava/lang/String;

.field private final request:Lokhttp3/Request$Builder;

.field final synthetic this$0:Lcom/dropbox/core/http/OkHttp3Requestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Lokhttp3/Request$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->closed:Z

    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    return-void
.end method

.method private assertNoBody()V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBody(Lokhttp3/RequestBody;)V
    .locals 2

    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->assertNoBody()V

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    iget-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Lokhttp3/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->closed:Z

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4

    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->upload([B)V

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->getResponse()Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$200(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Lokhttp3/RequestBody;

    instance-of v1, v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    :goto_0
    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;-><init>()V

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Lokhttp3/RequestBody;)V

    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;Lcom/dropbox/core/http/OkHttp3Requestor$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Lokhttp3/Request$Builder;

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method

.method public upload([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Lokhttp3/RequestBody;)V

    return-void
.end method
