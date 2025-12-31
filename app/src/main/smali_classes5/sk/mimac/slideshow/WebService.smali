.class public abstract Lsk/mimac/slideshow/WebService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static actualFtpPort:Ljava/lang/String;

.field private static ftpServer:Lorg/apache/ftpserver/FtpServer;

.field private static internalFtpPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/WebService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static getActualFtpPort()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/WebService;->actualFtpPort:Ljava/lang/String;

    return-object v0
.end method

.method public static getNextFreePort(I)I
    .locals 6

    move v0, p0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    if-eq v0, p0, :cond_0

    sget-object v2, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Port {} is already used, using port {} instead"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static redirectPorts()V
    .locals 6

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Redirecting ports"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->FTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x400

    if-gt v2, v3, :cond_0

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    sget v4, Lsk/mimac/slideshow/WebService;->internalFtpPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->HTTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v3, :cond_1

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->HTTPS_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v3, :cond_2

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpsPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iptables -t nat -A PREROUTING -p 6 --dport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -j REDIRECT --to-port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v3, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t redirect port {}, returned {}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpPort()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ":"

    const-string v5, ""

    if-ne v2, v3, :cond_6

    :try_start_1
    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Lsk/mimac/slideshow/http/HttpServer;->setActualHttpPort(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getInternalHttpsPort()I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1bb

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v5}, Lsk/mimac/slideshow/http/HttpServer;->setActualHttpsPort(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lsk/mimac/slideshow/WebService;->internalFtpPort:I

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    sput-object v5, Lsk/mimac/slideshow/WebService;->actualFtpPort:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :goto_5
    sget-object v1, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t redirect ports"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public static start()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DISABLE_NON_SSL_INTERFACES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/WebService;->startFtpServer()V

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/WebService;->redirectPorts()V

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->start()V

    invoke-static {}, Lsk/mimac/slideshow/osc/OscService;->getInstance()Lsk/mimac/slideshow/osc/OscService;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService;->start()V

    return-void
.end method

.method private static startFtpServer()V
    .locals 5

    const-string v0, ":"

    sget-object v1, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Starting FTP server"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v2, Lsk/mimac/slideshow/WebService;->ftpServer:Lorg/apache/ftpserver/FtpServer;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/ftpserver/FtpServer;->isStopped()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "FTP server is already running"

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    new-instance v2, Lorg/apache/ftpserver/listener/ListenerFactory;

    invoke-direct {v2}, Lorg/apache/ftpserver/listener/ListenerFactory;-><init>()V

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->FTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsk/mimac/slideshow/WebService;->internalFtpPort:I

    const/16 v4, 0x400

    if-gt v3, v4, :cond_1

    const/16 v3, 0x1f55

    :cond_1
    invoke-static {v3}, Lsk/mimac/slideshow/WebService;->getNextFreePort(I)I

    move-result v3

    sput v3, Lsk/mimac/slideshow/WebService;->internalFtpPort:I

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/listener/ListenerFactory;->setPort(I)V

    const-string v3, "default"

    invoke-virtual {v2}, Lorg/apache/ftpserver/listener/ListenerFactory;->createListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/ftpserver/FtpServerFactory;->addListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V

    new-instance v2, Lsk/mimac/slideshow/ftp/FtpUserManager;

    invoke-direct {v2}, Lsk/mimac/slideshow/ftp/FtpUserManager;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/ftpserver/FtpServerFactory;->setUserManager(Lorg/apache/ftpserver/ftplet/UserManager;)V

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->getFtplets()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ftplet"

    new-instance v4, Lsk/mimac/slideshow/WebService$1;

    invoke-direct {v4}, Lsk/mimac/slideshow/WebService$1;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/WebService;->ftpServer:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lsk/mimac/slideshow/WebService;->internalFtpPort:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/WebService;->actualFtpPort:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t start FTP server"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static stop()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/WebService;->stopFtpServer()V

    invoke-static {}, Lsk/mimac/slideshow/osc/OscService;->getInstance()Lsk/mimac/slideshow/osc/OscService;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/osc/OscService;->stop()V

    invoke-static {}, Lsk/mimac/slideshow/communication/CommunicationService;->stop()V

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->stopServer()V

    return-void
.end method

.method private static stopFtpServer()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping FTP server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/WebService;->ftpServer:Lorg/apache/ftpserver/FtpServer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/ftpserver/FtpServer;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/WebService;->ftpServer:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {v0}, Lorg/apache/ftpserver/FtpServer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/WebService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t stop FTP server"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v1, "FTP server is not running"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
