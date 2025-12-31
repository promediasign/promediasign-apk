.class public Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;
.super Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;
.source "SourceFile"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "ftpserver.user."


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private userDataFile:Ljava/io/File;

.field private userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

.field private userUrl:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    const-class p1, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-direct {p0, p2}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromFile(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3, p1}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    const-class p1, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-direct {p0, p2}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromUrl(Ljava/net/URL;)V

    return-void
.end method

.method private getPassword(Lorg/apache/ftpserver/ftplet/User;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-interface {p1, v1}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->doesExist(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-string v1, "ftpserver.user."

    .line 37
    .line 38
    const-string v2, ".userpassword"

    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 45
    .line 46
    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_1
    :goto_0
    return-object p1
.end method

.method private loadFromFile(Ljava/io/File;)V
    .locals 4

    .line 1
    const-string v0, "User data file specified but could not be located, neither on the file system or in the classpath: "

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/apache/ftpserver/util/BaseProperties;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/apache/ftpserver/util/BaseProperties;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    .line 13
    .line 14
    const-string v2, "File configured, will try loading"

    .line 15
    .line 16
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    .line 28
    .line 29
    const-string v1, "File found on file system"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 36
    .line 37
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_3
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    move-object v3, v1

    .line 55
    move-object v1, v0

    .line 56
    move-object v0, v3

    .line 57
    :goto_1
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    .line 62
    .line 63
    const-string v2, "File not found on file system, try loading from classpath"

    .line 64
    .line 65
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    :try_start_4
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    :try_start_5
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_1
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v1, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 119
    :cond_2
    :goto_2
    return-void

    .line 120
    :goto_3
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 121
    .line 122
    const-string v2, "Error loading user data file : "

    .line 123
    .line 124
    invoke-static {p1, v2}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v1, p1, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v1
.end method

.method private loadFromUrl(Ljava/net/URL;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/ftpserver/util/BaseProperties;

    invoke-direct {v0}, Lorg/apache/ftpserver/util/BaseProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "URL configured, will try loading"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userUrl:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading user data resource : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveUserData()V
    .locals 5

    .line 1
    const-string v0, "Failed saving user data"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 36
    .line 37
    const-string v2, "Cannot create directory for user data file : "

    .line 38
    .line 39
    invoke-static {v2, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 48
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 49
    .line 50
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_1
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 56
    .line 57
    const-string v3, "Generated file - don\'t edit (please)"

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object v1, v2

    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    goto :goto_2

    .line 73
    :catch_1
    move-exception v2

    .line 74
    move-object v4, v2

    .line 75
    move-object v2, v1

    .line 76
    move-object v1, v4

    .line 77
    :goto_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    .line 78
    .line 79
    invoke-interface {v3, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Lorg/apache/ftpserver/ftplet/FtpException;

    .line 83
    .line 84
    invoke-direct {v3, v0, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :goto_2
    invoke-static {v1}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/OutputStream;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
    .locals 5

    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    const-string v1, "Authentication failed"

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ftpserver.user."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".userpassword"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of p1, p1, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    if-eqz p1, :cond_6

    const-string p1, "anonymous"

    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Authentication not supported by this user manager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftpserver.user."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->saveUserData()V

    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public doesExist(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "ftpserver.user."

    .line 2
    .line 3
    const-string v1, ".homedirectory"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getAllUserNames()[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ".homedirectory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xe

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    return-object v0
.end method

.method public getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->doesExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ftpserver.user."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "enableflag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/apache/ftpserver/util/BaseProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "homedirectory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {p1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "writepermission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "maxloginnumber"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "maxloginperip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v3

    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    invoke-direct {v5, v2, v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uploadrate"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "downloadrate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result v3

    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    invoke-direct {v5, v3, v2}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "idletime"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/apache/ftpserver/util/BaseProperties;->getInteger(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    return-object v1
.end method

.method public refresh()V
    .locals 4

    const-string v0, "Refreshing user manager using URL: "

    const-string v1, "Refreshing user manager using file: "

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromFile(Ljava/io/File;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userUrl:Ljava/net/URL;

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->loadFromUrl(Ljava/net/URL;)V

    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized save(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 6

    const-string v0, "ftpserver.user."

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "userpassword"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->getPassword(Lorg/apache/ftpserver/ftplet/User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "/"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "homedirectory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "enableflag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "writepermission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>()V

    invoke-interface {p1, v3}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "idletime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v1}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    invoke-interface {p1, v1}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "uploadrate"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "downloadrate"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uploadrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "downloadrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    invoke-direct {v1, v4, v4}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;-><init>(II)V

    invoke-interface {p1, v1}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "maxloginnumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLogins()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "maxloginperip"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLoginsPerIP()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/apache/ftpserver/util/BaseProperties;->setProperty(Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "maxloginnumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->userDataProp:Lorg/apache/ftpserver/util/BaseProperties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "maxloginperip"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-direct {p0}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;->saveUserData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "User name is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method
