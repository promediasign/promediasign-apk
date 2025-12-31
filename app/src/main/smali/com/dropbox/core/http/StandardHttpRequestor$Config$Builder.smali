.class public final Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/StandardHttpRequestor$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connectTimeoutMillis:J

.field private proxy:Ljava/net/Proxy;

.field private readTimeoutMillis:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 1
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sget-wide v2, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-wide v4, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->proxy:Ljava/net/Proxy;

    iput-wide p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->connectTimeoutMillis:J

    iput-wide p4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->readTimeoutMillis:J

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/http/StandardHttpRequestor$Config;
    .locals 8

    new-instance v7, Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->proxy:Ljava/net/Proxy;

    iget-wide v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->connectTimeoutMillis:J

    iget-wide v4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->readTimeoutMillis:J

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;-><init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V

    return-object v7
.end method
