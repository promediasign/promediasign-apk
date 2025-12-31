.class public final Lcom/dropbox/core/http/StandardHttpRequestor$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/StandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor$Config;


# instance fields
.field private final connectTimeoutMillis:J

.field private final proxy:Ljava/net/Proxy;

.field private final readTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->builder()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;->build()Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->DEFAULT_INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->proxy:Ljava/net/Proxy;

    iput-wide p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->connectTimeoutMillis:J

    iput-wide p4, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->readTimeoutMillis:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/StandardHttpRequestor$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method public static builder()Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;
    .locals 2

    new-instance v0, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/http/StandardHttpRequestor$Config$Builder;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor$1;)V

    return-object v0
.end method


# virtual methods
.method public getConnectTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->connectTimeoutMillis:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->readTimeoutMillis:J

    return-wide v0
.end method
