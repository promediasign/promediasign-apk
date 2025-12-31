.class public interface abstract Lorg/apache/ftpserver/ftplet/FtpStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentAnonymousLoginNumber()I
.end method

.method public abstract getCurrentConnectionNumber()I
.end method

.method public abstract getCurrentLoginNumber()I
.end method

.method public abstract getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;)I
.end method

.method public abstract getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;Ljava/net/InetAddress;)I
.end method

.method public abstract getStartTime()Ljava/util/Date;
.end method

.method public abstract getTotalAnonymousLoginNumber()I
.end method

.method public abstract getTotalConnectionNumber()I
.end method

.method public abstract getTotalDeleteNumber()I
.end method

.method public abstract getTotalDirectoryCreated()I
.end method

.method public abstract getTotalDirectoryRemoved()I
.end method

.method public abstract getTotalDownloadNumber()I
.end method

.method public abstract getTotalDownloadSize()J
.end method

.method public abstract getTotalFailedLoginNumber()I
.end method

.method public abstract getTotalLoginNumber()I
.end method

.method public abstract getTotalUploadNumber()I
.end method

.method public abstract getTotalUploadSize()J
.end method
