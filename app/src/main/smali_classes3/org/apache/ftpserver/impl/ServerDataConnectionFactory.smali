.class public interface abstract Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/DataConnectionFactory;


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getInetAddress()Ljava/net/InetAddress;
.end method

.method public abstract getPort()I
.end method

.method public abstract initActiveDataConnection(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract initPassiveDataConnection()Ljava/net/InetSocketAddress;
.end method

.method public abstract isSecure()Z
.end method

.method public abstract isTimeout(J)Z
.end method

.method public abstract isZipMode()Z
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setServerControlAddress(Ljava/net/InetAddress;)V
.end method

.method public abstract setZipMode(Z)V
.end method
