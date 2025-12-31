.class public interface abstract Lorg/apache/ftpserver/impl/FileObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract notifyDelete(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
.end method

.method public abstract notifyDownload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
.end method

.method public abstract notifyMkdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
.end method

.method public abstract notifyRmdir(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;)V
.end method

.method public abstract notifyUpload(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpFile;J)V
.end method
