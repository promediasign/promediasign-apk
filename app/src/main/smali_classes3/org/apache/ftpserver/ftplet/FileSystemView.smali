.class public interface abstract Lorg/apache/ftpserver/ftplet/FileSystemView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeWorkingDirectory(Ljava/lang/String;)Z
.end method

.method public abstract dispose()V
.end method

.method public abstract getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;
.end method

.method public abstract getHomeDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
.end method

.method public abstract getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
.end method

.method public abstract isRandomAccessible()Z
.end method
