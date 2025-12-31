.class public interface abstract Lorg/apache/ftpserver/impl/ServerFtpStatistics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpStatistics;


# virtual methods
.method public abstract resetStatisticsCounters()V
.end method

.method public abstract setCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
.end method

.method public abstract setDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
.end method

.method public abstract setDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
.end method

.method public abstract setFileObserver(Lorg/apache/ftpserver/impl/FileObserver;)V
.end method

.method public abstract setLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V
.end method

.method public abstract setLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V
.end method

.method public abstract setLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V
.end method

.method public abstract setMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
.end method

.method public abstract setObserver(Lorg/apache/ftpserver/impl/StatisticsObserver;)V
.end method

.method public abstract setOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V
.end method

.method public abstract setRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
.end method

.method public abstract setUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
.end method
