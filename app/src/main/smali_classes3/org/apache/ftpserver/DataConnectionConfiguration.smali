.class public interface abstract Lorg/apache/ftpserver/DataConnectionConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActiveLocalAddress()Ljava/lang/String;
.end method

.method public abstract getActiveLocalPort()I
.end method

.method public abstract getIdleTime()I
.end method

.method public abstract getPassiveAddress()Ljava/lang/String;
.end method

.method public abstract getPassiveExernalAddress()Ljava/lang/String;
.end method

.method public abstract getPassivePorts()Ljava/lang/String;
.end method

.method public abstract getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
.end method

.method public abstract isActiveEnabled()Z
.end method

.method public abstract isActiveIpCheck()Z
.end method

.method public abstract isImplicitSsl()Z
.end method

.method public abstract releasePassivePort(I)V
.end method

.method public abstract requestPassivePort()I
.end method
