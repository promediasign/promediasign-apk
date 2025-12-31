.class public Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;
.super Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler<",
        "Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultistatus(Ljava/io/InputStream;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;
    .locals 1

    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    invoke-static {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->unmarshal(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    return-object p1
.end method

.method public handleResponse(Lokhttp3/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;->validateResponse(Lokhttp3/Response;)V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;->getMultistatus(Ljava/io/InputStream;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    const-string v2, "No entity found in response"

    invoke-direct {v0, v2, v1, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/SardineException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic handleResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;->handleResponse(Lokhttp3/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    move-result-object p1

    return-object p1
.end method
