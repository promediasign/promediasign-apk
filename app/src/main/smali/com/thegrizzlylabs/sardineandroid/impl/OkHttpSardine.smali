.class public Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/thegrizzlylabs/sardineandroid/Sardine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;
    }
.end annotation


# instance fields
.field private client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private addCustomProperties(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/thegrizzlylabs/sardineandroid/model/Prop;",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;->getAny()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/namespace/QName;

    invoke-static {v0}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->createElement(Ljavax/xml/namespace/QName;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Request;",
            "Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;->handleResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->get(Ljava/lang/String;Lokhttp3/Headers;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lokhttp3/Headers;)Ljava/io/InputStream;
    .locals 1

    .line 3
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/InputStreamResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/InputStreamResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v1, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    invoke-direct {v1}, Lcom/thegrizzlylabs/sardineandroid/model/Prop;-><init>()V

    invoke-direct {p0, v1, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->addCustomProperties(Lcom/thegrizzlylabs/sardineandroid/model/Prop;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    .line 4
    if-eqz p3, :cond_0

    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;

    invoke-direct {p3}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;-><init>()V

    new-instance v0, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;

    invoke-direct {v0}, Lcom/thegrizzlylabs/sardineandroid/model/Allprop;-><init>()V

    invoke-virtual {p3, v0}, Lcom/thegrizzlylabs/sardineandroid/model/Propfind;->setAllprop(Lcom/thegrizzlylabs/sardineandroid/model/Allprop;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->list(Ljava/lang/String;ILjava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public propfind(Ljava/lang/String;ILcom/thegrizzlylabs/sardineandroid/model/Propfind;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/thegrizzlylabs/sardineandroid/model/Propfind;",
            ")",
            "Ljava/util/List<",
            "Lcom/thegrizzlylabs/sardineandroid/DavResource;",
            ">;"
        }
    .end annotation

    const-string v0, "text/xml"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p3}, Lcom/thegrizzlylabs/sardineandroid/util/SardineUtil;->toXml(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-gez p2, :cond_0

    const-string p2, "infinity"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "Depth"

    invoke-virtual {p1, v0, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "PROPFIND"

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    new-instance p2, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;

    invoke-direct {p2}, Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResourcesResponseHandler;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->execute(Lokhttp3/Request;Lcom/thegrizzlylabs/sardineandroid/impl/handler/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;

    invoke-direct {p3, p0, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine$AuthenticationInterceptor;-><init>(Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/thegrizzlylabs/sardineandroid/impl/BasicAuthenticator;

    invoke-direct {p3, p1, p2}, Lcom/thegrizzlylabs/sardineandroid/impl/BasicAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    :goto_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/impl/OkHttpSardine;->client:Lokhttp3/OkHttpClient;

    return-void
.end method
