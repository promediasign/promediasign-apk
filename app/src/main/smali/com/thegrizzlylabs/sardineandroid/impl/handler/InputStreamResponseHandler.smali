.class public Lcom/thegrizzlylabs/sardineandroid/impl/handler/InputStreamResponseHandler;
.super Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler<",
        "Ljava/io/InputStream;",
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
.method public handleResponse(Lokhttp3/Response;)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ValidatingResponseHandler;->validateResponse(Lokhttp3/Response;)V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic handleResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/InputStreamResponseHandler;->handleResponse(Lokhttp3/Response;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
