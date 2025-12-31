.class public interface abstract Lorg/apache/ftpserver/listener/Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActiveSessions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/ftpserver/impl/FtpIoSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlockedAddresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBlockedSubnets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
.end method

.method public abstract getIdleTimeout()I
.end method

.method public abstract getIpFilter()Lorg/apache/ftpserver/ipfilter/IpFilter;
.end method

.method public abstract getPort()I
.end method

.method public abstract getServerAddress()Ljava/lang/String;
.end method

.method public abstract getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
.end method

.method public abstract isImplicitSsl()Z
.end method

.method public abstract isStopped()Z
.end method

.method public abstract isSuspended()Z
.end method

.method public abstract resume()V
.end method

.method public abstract start(Lorg/apache/ftpserver/impl/FtpServerContext;)V
.end method

.method public abstract stop()V
.end method

.method public abstract suspend()V
.end method
