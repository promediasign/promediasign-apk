.class public Lorg/apache/ftpserver/usermanager/impl/DbUserManager;
.super Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private authenticateStmt:Ljava/lang/String;

.field private dataSource:Ljavax/sql/DataSource;

.field private deleteUserStmt:Ljava/lang/String;

.field private insertUserStmt:Ljava/lang/String;

.field private isAdminStmt:Ljava/lang/String;

.field private selectAllStmt:Ljava/lang/String;

.field private selectUserStmt:Ljava/lang/String;

.field private updateUserStmt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Failed to open connection to user database"

    invoke-direct {p0, p10, p9}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;-><init>(Ljava/lang/String;Lorg/apache/ftpserver/usermanager/PasswordEncryptor;)V

    const-class p9, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;

    invoke-static {p9}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p9

    iput-object p9, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    iput-object p2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object p1

    const-string p2, "Database connection opened."

    invoke-interface {p9, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Connection;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    iget-object p3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p3, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p3, Lorg/apache/ftpserver/FtpServerConfigurationException;

    invoke-direct {p3, v0, p2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Connection;)V

    throw p2
.end method

.method private closeQuitely(Ljava/sql/ResultSet;)V
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private closeQuitely(Ljava/sql/Statement;)V
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/sql/Statement;->getConnection()Ljava/sql/Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Connection;)V

    :cond_0
    return-void
.end method

.method private escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    const/16 v3, 0x5c

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0, p1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private selectUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/usermanager/impl/BaseUser;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "userid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    const-string v1, "userpassword"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    const-string v1, "homedirectory"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    const-string v1, "enableflag"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    const-string v1, "idletime"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "writepermission"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    const-string v4, "maxloginnumber"

    invoke-interface {p1, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "maxloginperip"

    invoke-interface {p1, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    const-string v4, "downloadrate"

    invoke-interface {p1, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "uploadrate"

    invoke-interface {p1, v5}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw v0
.end method


# virtual methods
.method public authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;
    .locals 6

    const-string v0, "anonymous"

    instance-of v1, p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    const-string v2, "Authentication failed"

    if-eqz v1, :cond_4

    check-cast p1, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "userid"

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    const-string v3, "userpassword"

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v5

    invoke-interface {v5, p1, v3}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1
    :try_end_2
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance v0, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v0, v2, p1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception p1

    move-object v4, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_1
    :try_start_5
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    const-string v4, "DbUserManager.authenticate()"

    invoke-interface {v3, v4, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v3, v2, p1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    move-object v4, v1

    move-object v1, v0

    :goto_2
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of p1, p1, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    if-eqz p1, :cond_6

    :try_start_6
    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->doesExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    goto :goto_4

    :cond_5
    new-instance p1, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {p1, v2}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Lorg/apache/ftpserver/ftplet/AuthenticationFailedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    new-instance v0, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;

    invoke-direct {v0, v2, p1}, Lorg/apache/ftpserver/ftplet/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Authentication not supported by this user manager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public closeQuitely(Ljava/sql/Connection;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public createConnection()Ljava/sql/Connection;
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DbUserManager.delete()"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "userid"

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v2, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw p1
.end method

.method public doesExist(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "DbUserManager.doesExist()"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "userid"

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v3, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw p1
.end method

.method public getAllUserNames()[Ljava/lang/String;
    .locals 6

    const-string v0, "DbUserManager.getAllUserNames()"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v3

    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "userid"

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v5

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_1
    :try_start_2
    iget-object v4, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v4, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v4, v0, v3}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getSqlUserAdmin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserAuthenticate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserDelete()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserInsert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserSelectAll()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlUserUpdate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    return-object v0
.end method

.method public getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;
    .locals 3

    const-string v0, "DbUserManager.getUserByName()"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return-object p1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v2, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw p1
.end method

.method public isAdmin(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "DbUserManager.isAdmin()"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "userid"

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result p1
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v3, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    invoke-direct {p0, v2}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw p1
.end method

.method public save(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 8

    const-string v0, "DbUserManager.save()"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "userid"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/AbstractUserManager;->getPasswordEncryptor()Lorg/apache/ftpserver/usermanager/PasswordEncryptor;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ftpserver/usermanager/PasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :catch_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :cond_1
    move-object v3, v1

    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    :goto_1
    const-string v4, "userpassword"

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "/"

    :cond_2
    const-string v4, "homedirectory"

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "enableflag"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "writepermission"

    new-instance v4, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-direct {v4}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>()V

    invoke-interface {p1, v4}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "idletime"

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;

    invoke-direct {v3}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;-><init>()V

    invoke-interface {p1, v3}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "downloadrate"

    const-string v6, "uploadrate"

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxUploadRate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/apache/ftpserver/usermanager/impl/TransferRateRequest;->getMaxDownloadRate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :goto_4
    new-instance v3, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    invoke-direct {v3, v5, v5}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;-><init>(II)V

    invoke-interface {p1, v3}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "maxloginperip"

    const-string v6, "maxloginnumber"

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLogins()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;->getMaxConcurrentLoginsPerIP()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :goto_6
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->doesExist(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    :goto_7
    invoke-static {p1, v2}, Lorg/apache/ftpserver/util/StringUtils;->replaceString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_6
    iget-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    goto :goto_7

    :goto_8
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->createConnection()Ljava/sql/Connection;

    move-result-object v2

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    return-void

    :goto_9
    :try_start_5
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/ResultSet;)V

    throw p1
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_a
    :try_start_6
    iget-object v2, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {v2, v0, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_b
    invoke-direct {p0, v1}, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->closeQuitely(Ljava/sql/Statement;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "User name is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljavax/sql/DataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->dataSource:Ljavax/sql/DataSource;

    return-void
.end method

.method public setSqlUserAdmin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->isAdminStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserAuthenticate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->authenticateStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserDelete(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->deleteUserStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserInsert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->insertUserStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserSelect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectUserStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserSelectAll(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->selectAllStmt:Ljava/lang/String;

    return-void
.end method

.method public setSqlUserUpdate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/DbUserManager;->updateUserStmt:Ljava/lang/String;

    return-void
.end method
