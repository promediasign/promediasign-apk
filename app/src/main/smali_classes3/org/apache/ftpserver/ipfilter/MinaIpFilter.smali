.class public Lorg/apache/ftpserver/ipfilter/MinaIpFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# instance fields
.field private filter:Lorg/apache/ftpserver/ipfilter/IpFilter;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilter;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/MinaIpFilter;->filter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-void
.end method


# virtual methods
.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/MinaIpFilter;->filter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/ipfilter/IpFilter;->accept(Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    :cond_1
    :goto_0
    return-void
.end method
