.class public Lorg/apache/ftpserver/impl/DefaultFtpSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpSession;


# instance fields
.field private ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "org.apache.ftpserver."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal lookup of internal attribute"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClientAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getClientCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getCreationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDataConnection()Lorg/apache/ftpserver/ftplet/DataConnectionFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Lorg/apache/ftpserver/ftplet/DataType;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataType()Lorg/apache/ftpserver/ftplet/DataType;

    move-result-object v0

    return-object v0
.end method

.method public getFailedLogins()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFailedLogins()I

    move-result v0

    return v0
.end method

.method public getFileOffset()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLoginTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLoginTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getSessionId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getStructure()Lorg/apache/ftpserver/ftplet/Structure;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getStructure()Lorg/apache/ftpserver/ftplet/Structure;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lorg/apache/ftpserver/ftplet/User;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserArgument()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUserArgument()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public increaseReadDataBytes(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->increaseReadDataBytes(I)V

    return-void
.end method

.method public increaseWrittenDataBytes(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->increaseWrittenDataBytes(I)V

    return-void
.end method

.method public isLoggedIn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->isSecure()Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    const-string v0, "org.apache.ftpserver."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal removal of internal attribute"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "org.apache.ftpserver."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal setting of internal attribute"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxIdleTime(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setMaxIdleTime(I)V

    return-void
.end method

.method public write(Lorg/apache/ftpserver/ftplet/FtpReply;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpSession;->ioSession:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method
