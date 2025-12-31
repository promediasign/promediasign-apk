.class public abstract Lcom/hivemq/client/internal/util/InetSocketAddressUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 2

    invoke-static {p0}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    invoke-static {p0, p1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p0

    return-object p0
.end method
