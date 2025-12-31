.class public interface abstract Lorg/apache/ftpserver/ftplet/FtpletContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;
.end method

.method public abstract getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;
.end method

.method public abstract getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;
.end method

.method public abstract getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
.end method
