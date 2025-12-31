.class public abstract Lorg/apache/mina/proxy/handlers/ProxyRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private endpointAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    return-void
.end method


# virtual methods
.method public getEndpointAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method
