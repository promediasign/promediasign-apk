.class public abstract Lorg/apache/ftpserver/listener/nio/AbstractListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/listener/Listener;


# instance fields
.field private blockedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blockedSubnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field

.field private dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

.field private idleTimeout:I

.field private implicitSsl:Z

.field private ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

.field private port:I

.field private serverAddress:Ljava/lang/String;

.field private ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lorg/apache/ftpserver/ssl/SslConfiguration;",
            "Lorg/apache/ftpserver/DataConnectionConfiguration;",
            "I",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    move-object v8, p0

    invoke-static/range {p7 .. p8}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->createBlackListFilter(Ljava/util/List;Ljava/util/List;)Lorg/apache/ftpserver/ipfilter/IpFilter;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/ftpserver/listener/nio/AbstractListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/IpFilter;)V

    move-object/from16 v0, p7

    iput-object v0, v8, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedAddresses:Ljava/util/List;

    move-object/from16 v0, p8

    iput-object v0, v8, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedSubnets:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/IpFilter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->serverAddress:Ljava/lang/String;

    iput p2, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    iput-boolean p3, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->implicitSsl:Z

    iput-object p5, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    iput-object p4, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iput p6, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->idleTimeout:I

    iput-object p7, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-void
.end method

.method private static createBlackListFilter(Ljava/util/List;Ljava/util/List;)Lorg/apache/ftpserver/ipfilter/IpFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)",
            "Lorg/apache/ftpserver/ipfilter/IpFilter;"
        }
    .end annotation

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;

    sget-object v1, Lorg/apache/ftpserver/ipfilter/IpFilterType;->DENY:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    new-instance v1, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v2, 0x20

    invoke-direct {v1, p1, v2}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getBlockedAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getBlockedSubnets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->blockedSubnets:Ljava/util/List;

    return-object v0
.end method

.method public getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    return-object v0
.end method

.method public getIdleTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->idleTimeout:I

    return v0
.end method

.method public getIpFilter()Lorg/apache/ftpserver/ipfilter/IpFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->implicitSsl:Z

    return v0
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/listener/nio/AbstractListener;->port:I

    return-void
.end method
