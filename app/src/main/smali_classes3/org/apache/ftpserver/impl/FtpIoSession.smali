.class public Lorg/apache/ftpserver/impl/FtpIoSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/session/IoSession;


# static fields
.field private static final ATTRIBUTE_CACHED_REMOTE_ADDRESS:Ljava/lang/String; = "org.apache.ftpserver.cached-remote-address"

.field private static final ATTRIBUTE_DATA_CONNECTION:Ljava/lang/String; = "org.apache.ftpserver.data-connection"

.field private static final ATTRIBUTE_DATA_TYPE:Ljava/lang/String; = "org.apache.ftpserver.data-type"

.field private static final ATTRIBUTE_FAILED_LOGINS:Ljava/lang/String; = "org.apache.ftpserver.failed-logins"

.field private static final ATTRIBUTE_FILE_OFFSET:Ljava/lang/String; = "org.apache.ftpserver.file-offset"

.field private static final ATTRIBUTE_FILE_SYSTEM:Ljava/lang/String; = "org.apache.ftpserver.file-system"

.field private static final ATTRIBUTE_LANGUAGE:Ljava/lang/String; = "org.apache.ftpserver.language"

.field private static final ATTRIBUTE_LAST_ACCESS_TIME:Ljava/lang/String; = "org.apache.ftpserver.last-access-time"

.field private static final ATTRIBUTE_LISTENER:Ljava/lang/String; = "org.apache.ftpserver.listener"

.field private static final ATTRIBUTE_LOGIN_TIME:Ljava/lang/String; = "org.apache.ftpserver.login-time"

.field private static final ATTRIBUTE_MAX_IDLE_TIME:Ljava/lang/String; = "org.apache.ftpserver.max-idle-time"

.field public static final ATTRIBUTE_PREFIX:Ljava/lang/String; = "org.apache.ftpserver."

.field private static final ATTRIBUTE_RENAME_FROM:Ljava/lang/String; = "org.apache.ftpserver.rename-from"

.field private static final ATTRIBUTE_SESSION_ID:Ljava/lang/String; = "org.apache.ftpserver.session-id"

.field private static final ATTRIBUTE_STRUCTURE:Ljava/lang/String; = "org.apache.ftpserver.structure"

.field private static final ATTRIBUTE_USER:Ljava/lang/String; = "org.apache.ftpserver.user"

.field private static final ATTRIBUTE_USER_ARGUMENT:Ljava/lang/String; = "org.apache.ftpserver.user-argument"


# instance fields
.field private context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private lastReply:Lorg/apache/ftpserver/ftplet/FtpReply;

.field private wrappedSession:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->lastReply:Lorg/apache/ftpserver/ftplet/FtpReply;

    iput-object p1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    iput-object p2, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    return-void
.end method


# virtual methods
.method public close()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->close()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Z)Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    return-object p1
.end method

.method public containsAttribute(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttachment()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getAttributeKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBothIdleCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getBothIdleCount()I

    move-result v0

    return v0
.end method

.method public getClientCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-virtual {v0, p0}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSession(Lorg/apache/mina/core/session/IoSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentWriteMessage()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getCurrentWriteMessage()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "org.apache.ftpserver.data-connection"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.apache.ftpserver.data-connection"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    iget-object v1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, v1, p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;-><init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpIoSession;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->setServerControlAddress(Ljava/net/InetAddress;)V

    const-string v1, "org.apache.ftpserver.data-connection"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getDataType()Lorg/apache/ftpserver/ftplet/DataType;
    .locals 2

    const-string v0, "org.apache.ftpserver.data-type"

    sget-object v1, Lorg/apache/ftpserver/ftplet/DataType;->ASCII:Lorg/apache/ftpserver/ftplet/DataType;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/DataType;

    return-object v0
.end method

.method public getFailedLogins()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "org.apache.ftpserver.failed-logins"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFileOffset()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "org.apache.ftpserver.file-offset"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;
    .locals 1

    const-string v0, "org.apache.ftpserver.file-system"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/FileSystemView;

    return-object v0
.end method

.method public getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    return-object v0
.end method

.method public getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;
    .locals 1

    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpSession;

    invoke-direct {v0, p0}, Lorg/apache/ftpserver/impl/DefaultFtpSession;-><init>(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->getIdleCount(Lorg/apache/mina/core/session/IdleStatus;)I

    move-result p1

    return p1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "org.apache.ftpserver.language"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    const-string v0, "org.apache.ftpserver.last-access-time"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getLastBothIdleTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLastBothIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->getLastIdleTime(Lorg/apache/mina/core/session/IdleStatus;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastIoTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLastIoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReadTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLastReadTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReaderIdleTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLastReaderIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReply()Lorg/apache/ftpserver/ftplet/FtpReply;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->lastReply:Lorg/apache/ftpserver/ftplet/FtpReply;

    return-object v0
.end method

.method public getLastWriteTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLastWriteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriterIdleTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLastWriterIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getListener()Lorg/apache/ftpserver/listener/Listener;
    .locals 1

    const-string v0, "org.apache.ftpserver.listener"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/listener/Listener;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLoginTime()Ljava/util/Date;
    .locals 1

    const-string v0, "org.apache.ftpserver.login-time"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "org.apache.ftpserver.max-idle-time"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReadBytes()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getReadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadBytesThroughput()D
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getReadBytesThroughput()D

    move-result-wide v0

    return-wide v0
.end method

.method public getReadMessages()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getReadMessages()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadMessagesThroughput()D
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getReadMessagesThroughput()D

    move-result-wide v0

    return-wide v0
.end method

.method public getReaderIdleCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getReaderIdleCount()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    const-string v1, "org.apache.ftpserver.cached-remote-address"

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getRenameFrom()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 1

    const-string v0, "org.apache.ftpserver.rename-from"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/FtpFile;

    return-object v0
.end method

.method public getScheduledWriteBytes()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getScheduledWriteBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScheduledWriteMessages()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getScheduledWriteMessages()I

    move-result v0

    return v0
.end method

.method public getService()Lorg/apache/mina/core/service/IoService;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    const-string v2, "org.apache.ftpserver.session-id"

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    const-string v2, "org.apache.ftpserver.session-id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    const-string v2, "org.apache.ftpserver.session-id"

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStructure()Lorg/apache/ftpserver/ftplet/Structure;
    .locals 2

    const-string v0, "org.apache.ftpserver.structure"

    sget-object v1, Lorg/apache/ftpserver/ftplet/Structure;->FILE:Lorg/apache/ftpserver/ftplet/Structure;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/Structure;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lorg/apache/ftpserver/ftplet/User;
    .locals 1

    const-string v0, "org.apache.ftpserver.user"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/User;

    return-object v0
.end method

.method public getUserArgument()Ljava/lang/String;
    .locals 1

    const-string v0, "org.apache.ftpserver.user-argument"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public getWriterIdleCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getWriterIdleCount()I

    move-result v0

    return v0
.end method

.method public getWrittenBytes()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getWrittenBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWrittenBytesThroughput()D
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getWrittenBytesThroughput()D

    move-result-wide v0

    return-wide v0
.end method

.method public getWrittenMessages()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getWrittenMessages()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWrittenMessagesThroughput()D
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getWrittenMessagesThroughput()D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized increaseFailedLogins()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "org.apache.ftpserver.failed-logins"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "org.apache.ftpserver.failed-logins"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public increaseReadDataBytes(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    instance-of v1, v0, Lorg/apache/mina/core/session/AbstractIoSession;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    int-to-long v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBytes(JJ)V

    :cond_0
    return-void
.end method

.method public increaseWrittenDataBytes(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    instance-of v1, v0, Lorg/apache/mina/core/session/AbstractIoSession;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseScheduledWriteBytes(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    :cond_0
    return-void
.end method

.method public isBothIdle()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isBothIdle()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->isIdle(Lorg/apache/mina/core/session/IdleStatus;)Z

    move-result p1

    return p1
.end method

.method public isLoggedIn()Z
    .locals 1

    const-string v0, "org.apache.ftpserver.user"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReadSuspended()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isReadSuspended()Z

    move-result v0

    return v0
.end method

.method public isReaderIdle()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isReaderIdle()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isWriteSuspended()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isWriteSuspended()Z

    move-result v0

    return v0
.end method

.method public isWriterIdle()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isWriterIdle()Z

    move-result v0

    return v0
.end method

.method public logoutUser()V
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Statistics login decreased due to user logout"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Statistics not available in session, can not decrease login  count"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public read()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->read()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public reinitialize()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->logoutUser()V

    const-string v0, "org.apache.ftpserver.user"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.user-argument"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.login-time"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.file-system"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.rename-from"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.file-offset"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAttribute(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceAttribute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->replaceAttribute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public resetState()V
    .locals 1

    const-string v0, "org.apache.ftpserver.rename-from"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.file-offset"

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resumeRead()V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->resumeRead()V

    return-void
.end method

.method public resumeWrite()V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->resumeWrite()V

    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttachment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttributeIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public setDataType(Lorg/apache/ftpserver/ftplet/DataType;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.data-type"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFileOffset(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "org.apache.ftpserver.file-offset"

    invoke-virtual {p0, p2, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.language"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListener(Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.listener"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLogin(Lorg/apache/ftpserver/ftplet/FileSystemView;)V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "org.apache.ftpserver.login-time"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "org.apache.ftpserver.file-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "org.apache.ftpserver.max-idle-time"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getIdleTimeout()I

    move-result v0

    if-lez v0, :cond_0

    if-lez p1, :cond_1

    if-ge p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionConfig;->setBothIdleTime(I)V

    :cond_1
    return-void
.end method

.method public setRenameFrom(Lorg/apache/ftpserver/ftplet/FtpFile;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.rename-from"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStructure(Lorg/apache/ftpserver/ftplet/Structure;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.structure"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUser(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.user"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUserArgument(Ljava/lang/String;)V
    .locals 1

    const-string v0, "org.apache.ftpserver.user-argument"

    invoke-virtual {p0, v0, p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public suspendRead()V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->suspendRead()V

    return-void
.end method

.method public suspendWrite()V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->suspendWrite()V

    return-void
.end method

.method public updateLastAccessTime()V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "org.apache.ftpserver.last-access-time"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateThroughput(JZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/core/session/IoSession;->updateThroughput(JZ)V

    return-void
.end method

.method public write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    check-cast p1, Lorg/apache/ftpserver/ftplet/FtpReply;

    iput-object p1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->lastReply:Lorg/apache/ftpserver/ftplet/FtpReply;

    return-object v0
.end method

.method public write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->wrappedSession:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p2

    check-cast p1, Lorg/apache/ftpserver/ftplet/FtpReply;

    iput-object p1, p0, Lorg/apache/ftpserver/impl/FtpIoSession;->lastReply:Lorg/apache/ftpserver/ftplet/FtpReply;

    return-object p2
.end method
