.class public Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/UserManagerFactory;


# instance fields
.field private adminName:Ljava/lang/String;

.field private passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

.field private userDataFile:Ljava/io/File;

.field private userDataURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "admin"

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->adminName:Ljava/lang/String;

    new-instance v0, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-void
.end method


# virtual methods
.method public createUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->userDataURL:Ljava/net/URL;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->adminName:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;-><init>(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/net/URL;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->userDataFile:Ljava/io/File;

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->adminName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ftpserver/usermanager/impl/PropertiesUserManager;-><init>(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAdminName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->adminName:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->userDataFile:Ljava/io/File;

    return-object v0
.end method

.method public getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->userDataURL:Ljava/net/URL;

    return-object v0
.end method

.method public setAdminName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->adminName:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->userDataFile:Ljava/io/File;

    return-void
.end method

.method public setPasswordEncryptor(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->userDataURL:Ljava/net/URL;

    return-void
.end method
