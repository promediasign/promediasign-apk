.class public interface abstract Lorg/apache/ftpserver/impl/StatisticsObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract notifyCloseConnection()V
.end method

.method public abstract notifyDelete()V
.end method

.method public abstract notifyDownload()V
.end method

.method public abstract notifyLogin(Z)V
.end method

.method public abstract notifyLoginFail(Ljava/net/InetAddress;)V
.end method

.method public abstract notifyLogout(Z)V
.end method

.method public abstract notifyMkdir()V
.end method

.method public abstract notifyOpenConnection()V
.end method

.method public abstract notifyRmdir()V
.end method

.method public abstract notifyUpload()V
.end method
