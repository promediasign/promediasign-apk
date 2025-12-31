.class public interface abstract Lorg/apache/ftpserver/ftplet/FtpSession;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getClientAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getClientCertificates()[Ljava/security/cert/Certificate;
.end method

.method public abstract getConnectionTime()Ljava/util/Date;
.end method

.method public abstract getDataConnection()Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
.end method

.method public abstract getDataType()Lorg/apache/ftpserver/ftplet/DataType;
.end method

.method public abstract getFailedLogins()I
.end method

.method public abstract getFileOffset()J
.end method

.method public abstract getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLastAccessTime()Ljava/util/Date;
.end method

.method public abstract getLoginTime()Ljava/util/Date;
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;
.end method

.method public abstract getServerAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getSessionId()Ljava/util/UUID;
.end method

.method public abstract getStructure()Lorg/apache/ftpserver/ftplet/Structure;
.end method

.method public abstract getUser()Lorg/apache/ftpserver/ftplet/User;
.end method

.method public abstract getUserArgument()Ljava/lang/String;
.end method

.method public abstract isLoggedIn()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setMaxIdleTime(I)V
.end method

.method public abstract write(Lorg/apache/ftpserver/ftplet/FtpReply;)V
.end method
