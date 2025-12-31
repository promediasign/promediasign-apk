.class public Lorg/apache/ftpserver/command/impl/SITE_WHO;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/UserManager;->isAdmin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v5, "SITE"

    const/4 v6, 0x0

    const/16 v4, 0x212

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/IoSession;

    invoke-direct {v1, v3, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    const/16 v6, 0x10

    invoke-static {v3, v4, v5, v6}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v5, v6}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLoginTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x14

    invoke-static {v3, v4, v5, v6}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastAccessTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/ftpserver/util/DateUtils;->getISO8601Date(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4, v5, v6}, Lorg/apache/ftpserver/util/StringUtils;->pad(Ljava/lang/String;CZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v0, 0xc8

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
