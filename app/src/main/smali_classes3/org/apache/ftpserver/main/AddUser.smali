.class public Lorg/apache/ftpserver/main/AddUser;
.super Lorg/apache/ftpserver/main/CommandLine;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/ftpserver/main/CommandLine;-><init>()V

    return-void
.end method

.method private static askForBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Y"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static askForString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static askForString(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/ftpserver/main/AddUser;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    const-string v0, "User saved to file: "

    new-instance v1, Lorg/apache/ftpserver/main/AddUser;

    invoke-direct {v1}, Lorg/apache/ftpserver/main/AddUser;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/ftpserver/main/CommandLine;->getConfiguration([Ljava/lang/String;)Lorg/apache/ftpserver/FtpServer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object p0

    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Asking for details of the new user"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    const-string v4, "User name:"

    const-string v5, "User name is mandatory"

    invoke-static {v1, v4, v5}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    const-string v4, "Password:"

    invoke-static {v1, v4}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    const-string v4, "Home directory:"

    const-string v5, "Home directory is mandatory"

    invoke-static {v1, v4, v5}, Lorg/apache/ftpserver/main/AddUser;->askForString(Ljava/io/BufferedReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    const-string v4, "Enabled (Y/N):"

    invoke-static {v1, v4}, Lorg/apache/ftpserver/main/AddUser;->askForBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    const-string v4, "Max idle time in seconds (0 for none):"

    invoke-static {v1, v4}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "Write permission (Y/N):"

    invoke-static {v1, v5}, Lorg/apache/ftpserver/main/AddUser;->askForBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v5}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    const-string v5, "Maximum number of concurrent logins (0 for no restriction)"

    invoke-static {v1, v5}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v5

    const-string v6, "Maximum number of concurrent logins per IP (0 for no restriction)"

    invoke-static {v1, v6}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    invoke-direct {v7, v5, v6}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Maximum download rate (0 for no restriction)"

    invoke-static {v1, v5}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v5

    const-string v6, "Maximum upload rate (0 for no restriction)"

    invoke-static {v1, v6}, Lorg/apache/ftpserver/main/AddUser;->askForInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-instance v6, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    invoke-direct {v6, v5, v1}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    invoke-interface {p0, v2}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    instance-of v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    if-eqz v1, :cond_5

    check-cast p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "User manager does not have a file configured, will not save user to file"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p0, "User saved"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method public usage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Usage: java "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-class v2, Lorg/apache/ftpserver/main/AddUser;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " [OPTION] [CONFIGFILE]"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "Starts the user management application, asking for user settings"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    const-string v2, "      --default              use the default configuration, "

    .line 39
    .line 40
    const-string v3, "                             also used if no command line argument is given "

    .line 41
    .line 42
    const-string v4, "  -?, --help                 print this message"

    .line 43
    .line 44
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
