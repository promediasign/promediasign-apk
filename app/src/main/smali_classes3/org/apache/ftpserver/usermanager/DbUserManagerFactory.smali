.class public Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/usermanager/UserManagerFactory;


# instance fields
.field private adminName:Ljava/lang/String;

.field private authenticateStmt:Ljava/lang/String;

.field private dataSource:Ljavax/sql/DataSource;

.field private deleteUserStmt:Ljava/lang/String;

.field private insertUserStmt:Ljava/lang/String;

.field private isAdminStmt:Ljava/lang/String;

.field private passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

.field private selectAllStmt:Ljava/lang/String;

.field private selectUserStmt:Ljava/lang/String;

.field private updateUserStmt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "admin"

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    new-instance v0, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/Md5PasswordEncryptor;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-void
.end method


# virtual methods
.method public createUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 12

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->dataSource:Ljavax/sql/DataSource;

    if-eqz v1, :cond_7

    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->insertUserStmt:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v5, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->updateUserStmt:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->deleteUserStmt:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectUserStmt:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectAllStmt:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v8, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->isAdminStmt:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v7, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->authenticateStmt:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v11, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;

    iget-object v9, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    iget-object v10, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/lang/String;)V

    return-object v11

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required authenticate user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required is admin user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required select all users SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required select user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required delete user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required update user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required insert user SQL statement not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v1, "Required data source not provided"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdminName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-object v0
.end method

.method public getSqlUserAdmin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->isAdminStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserAuthenticate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->authenticateStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserDelete()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->deleteUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserInsert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->insertUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelectAll()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectAllStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserUpdate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->updateUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->adminName:Ljava/lang/String;

    return-void
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->dataSource:Ljavax/sql/DataSource;

    return-void
.end method

.method public setPasswordEncryptor(Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->passwordEncryptor:Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    return-void
.end method

.method public setSqlUserAdmin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->isAdminStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserAuthenticate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->authenticateStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserDelete(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->deleteUserStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserInsert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->insertUserStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserSelect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectUserStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserSelectAll(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->selectAllStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserUpdate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/DbUserManagerFactory;->updateUserStmt:Ljava/lang/String;

    return-void
.end method
