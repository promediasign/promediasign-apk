.class public Lorg/apache/ftpserver/main/Daemon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static lock:Ljava/lang/Object;

.field private static server:Lorg/apache/ftpserver/FtpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/ftpserver/main/Daemon;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;
    .locals 5

    const-string v0, "Using default configuration...."

    if-eqz p0, :cond_7

    array-length v1, p0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    array-length v1, p0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    aget-object v1, p0, v3

    const-string v4, "-default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "The -default switch is deprecated, please use --default instead"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {p0}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    array-length v1, p0

    if-ne v1, v2, :cond_2

    aget-object v1, p0, v3

    const-string v4, "--default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {p0}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    goto :goto_0

    :cond_2
    array-length v0, p0

    if-ne v0, v2, :cond_6

    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using xml configuration file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Lorg/springframework/context/support/FileSystemXmlApplicationContext;

    aget-object p0, p0, v3

    invoke-direct {v0, p0}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;-><init>(Ljava/lang/String;)V

    const-string p0, "server"

    invoke-virtual {v0, p0}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->containsBean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, p0}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/ftpserver/FtpServer;

    goto :goto_3

    :cond_3
    const-class p0, Lorg/apache/ftpserver/FtpServer;

    invoke-virtual {v0, p0}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBeanNamesForType(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v3, :cond_4

    aget-object p0, p0, v2

    goto :goto_1

    :cond_4
    array-length v1, p0

    if-le v1, v3, :cond_5

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using the first server defined in the configuration, named "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-object p0, p0, v2

    goto :goto_1

    :cond_5
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "XML configuration does not contain a server configuration"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_3

    :cond_6
    new-instance p0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v0, "Invalid configuration option"

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {p0}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    goto/16 :goto_0

    :goto_3
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/ftpserver/main/Daemon;->getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v0, "No configuration provided"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v0, "No configuration provided"

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "start"

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    :cond_2
    const-string p0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Starting FTP server daemon"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {p0}, Lorg/apache/ftpserver/FtpServer;->start()V

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    :cond_3
    const-string p0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Stopping FTP server daemon"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object p0, Lorg/apache/ftpserver/main/Daemon;->server:Lorg/apache/ftpserver/FtpServer;

    invoke-interface {p0}, Lorg/apache/ftpserver/FtpServer;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    sget-object v0, Lorg/apache/ftpserver/main/Daemon;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Daemon error"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
