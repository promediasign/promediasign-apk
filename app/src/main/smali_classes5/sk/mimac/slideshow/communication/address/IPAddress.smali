.class public interface abstract Lsk/mimac/slideshow/communication/address/IPAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract formatIp()Ljava/lang/String;
.end method

.method public abstract getIp()[B
.end method

.method public abstract getPort()I
.end method

.method public abstract toInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract toSocketAddress()Ljava/net/SocketAddress;
.end method
