.class public Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler<",
        "Ljava/util/List<",
        "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;->handleResponse(Lokhttp3/Response;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lokhttp3/Response;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/MultiStatusResponseHandler;->handleResponse(Lokhttp3/Response;)Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thegrizzlylabs/sardineandroid/model/Response;

    :try_start_0
    new-instance v2, Lcom/thegrizzlylabs/sardineandroid/DavResource;

    invoke-direct {v2, v1}, Lcom/thegrizzlylabs/sardineandroid/DavResource;-><init>(Lcom/thegrizzlylabs/sardineandroid/model/Response;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Response;->getHref()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignore resource with invalid URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method
