.class public Lorg/apache/ftpserver/main/CommandLine;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addShutdownHook(Lorg/apache/ftpserver/FtpServer;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/main/CommandLine$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/ftpserver/main/CommandLine$1;-><init>(Lorg/apache/ftpserver/main/CommandLine;Lorg/apache/ftpserver/FtpServer;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/apache/ftpserver/main/CommandLine;

    invoke-direct {v0}, Lorg/apache/ftpserver/main/CommandLine;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lorg/apache/ftpserver/main/CommandLine;->getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/apache/ftpserver/FtpServer;->start()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "FtpServer started"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lorg/apache/ftpserver/main/CommandLine;->addShutdownHook(Lorg/apache/ftpserver/FtpServer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;
    .locals 6

    array-length v0, p1

    const-string v1, "Using default configuration"

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {p1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/FtpServerFactory;->createServer()Lorg/apache/ftpserver/FtpServer;

    move-result-object p1

    goto/16 :goto_4

    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    aget-object v0, p1, v3

    const-string v4, "-default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "The -default switch is deprecated, please use --default instead"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {p1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    goto :goto_0

    :cond_1
    array-length v0, p1

    if-ne v0, v2, :cond_2

    aget-object v0, p1, v3

    const-string v4, "--default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lorg/apache/ftpserver/FtpServerFactory;

    invoke-direct {p1}, Lorg/apache/ftpserver/FtpServerFactory;-><init>()V

    goto :goto_0

    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    if-ne v0, v2, :cond_4

    aget-object v0, p1, v3

    const-string v4, "--help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ftpserver/main/CommandLine;->usage()V

    goto :goto_3

    :cond_4
    array-length v0, p1

    if-ne v0, v2, :cond_5

    aget-object v0, p1, v3

    const-string v4, "-?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    array-length v0, p1

    if-ne v0, v2, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using XML configuration file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Lorg/springframework/context/support/FileSystemXmlApplicationContext;

    aget-object p1, p1, v3

    invoke-direct {v4, p1}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;-><init>(Ljava/lang/String;)V

    const-string p1, "server"

    invoke-virtual {v4, p1}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->containsBean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v4, p1}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/FtpServer;

    goto :goto_4

    :cond_6
    const-class p1, Lorg/apache/ftpserver/FtpServer;

    invoke-virtual {v4, p1}, Lorg/springframework/context/support/FileSystemXmlApplicationContext;->getBeanNamesForType(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p1

    array-length v5, p1

    if-ne v5, v2, :cond_7

    aget-object p1, p1, v3

    goto :goto_2

    :cond_7
    array-length v5, p1

    if-le v5, v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using the first server defined in the configuration, named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-object p1, p1, v3

    goto :goto_2

    :cond_8
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "XML configuration does not contain a server configuration"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    move-object p1, v1

    :goto_4
    return-object p1
.end method

.method public usage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Usage: java org.apache.ftpserver.main.CommandLine [OPTION] [CONFIGFILE]"

    .line 4
    .line 5
    const-string v2, "Starts FtpServer using the default configuration of the "

    .line 6
    .line 7
    const-string v3, "configuration file if provided."

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "      --default              use the default configuration, "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "                             also used if no command line argument is given "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "  -?, --help                 print this message"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
