.class public Lsk/mimac/slideshow/ftp/FtpUserManager;
.super Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "root"

    sget-object v1, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-direct {p0, v0, v1}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
    .locals 3

    instance-of v0, p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    const-string v0, "Wrong username or password"

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    const-string v0, "Can\'t connect to database"

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of p1, p1, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    if-eqz p1, :cond_2

    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    const-string v0, "Anonymous access is not allowed"

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    const-string v0, "No authentication entered"

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v0, "Deleting users is not allowed."

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doesExist(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->doesExist(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllUserNames()[Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getAllUserNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v1, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
    .locals 1

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public save(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 1

    new-instance p1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v0, "Editing users is not allowed"

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
