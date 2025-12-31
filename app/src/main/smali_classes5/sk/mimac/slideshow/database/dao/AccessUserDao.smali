.class public Lsk/mimac/slideshow/database/dao/AccessUserDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/AccessUserDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/AccessUserDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/AccessUserDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "user"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/AccessUserDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/AccessUserDao;

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/AccessUserDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/AccessUserDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/AccessUserDao;

    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO user (name, username, password, homeDir, role) VALUES (?, ?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const-string v3, ""

    const/4 v4, 0x4

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getRole()Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {v1, v4, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object v3, Lsk/mimac/slideshow/database/dao/AccessUserDao;->LOG:Lorg/slf4j/Logger;

    const-string v4, "User \'{}\' added"

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v0, :cond_3

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method

.method public create(Lsk/mimac/slideshow/database/entity/AccessUser;)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->create(Ljava/util/List;)V

    return-void
.end method

.method public deleteByUsernames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "DELETE FROM user WHERE username = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lsk/mimac/slideshow/database/dao/AccessUserDao;->LOG:Lorg/slf4j/Logger;

    const-string v4, "User \'{}\' was deleted"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v0, :cond_4

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw p1
.end method

.method public doesExist(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id FROM user WHERE username = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception v2

    if-eqz p1, :cond_0

    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_3
    if-eqz v0, :cond_2

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
.end method

.method public get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/AccessUser;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, name, username, password, role FROM user WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lsk/mimac/slideshow/database/entity/AccessUser;

    const-string v3, "id"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>(Ljava/lang/Long;)V

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setName(Ljava/lang/String;)V

    const-string v3, "username"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setUsername(Ljava/lang/String;)V

    const-string v3, "password"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setPassword(Ljava/lang/String;)V

    const-string v3, "role"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/enums/UserRole;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setRole(Lsk/mimac/slideshow/enums/UserRole;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method

.method public getAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, name, username, password, role FROM user"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lsk/mimac/slideshow/database/entity/AccessUser;

    const-string v5, "id"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>(Ljava/lang/Long;)V

    const-string v5, "name"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->setName(Ljava/lang/String;)V

    const-string v5, "username"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->setUsername(Ljava/lang/String;)V

    const-string v5, "password"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->setPassword(Ljava/lang/String;)V

    const-string v5, "role"

    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsk/mimac/slideshow/enums/UserRole;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/entity/AccessUser;->setRole(Lsk/mimac/slideshow/enums/UserRole;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v1
.end method

.method public getAllUserNames()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT username FROM user"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "username"

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v2

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw v1
.end method

.method public getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, name, username, password, role FROM user WHERE username = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lsk/mimac/slideshow/database/entity/AccessUser;

    const-string v3, "id"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>(Ljava/lang/Long;)V

    const-string v3, "name"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setName(Ljava/lang/String;)V

    const-string v3, "username"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setUsername(Ljava/lang/String;)V

    const-string v3, "password"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setPassword(Ljava/lang/String;)V

    const-string v3, "role"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/enums/UserRole;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setRole(Lsk/mimac/slideshow/enums/UserRole;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method

.method public update(Lsk/mimac/slideshow/database/entity/AccessUser;)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE user SET name=?, username=?, password=?, role=? WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getRole()Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object v2, Lsk/mimac/slideshow/database/dao/AccessUserDao;->LOG:Lorg/slf4j/Logger;

    const-string v3, "User \'{}\' modified"

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
.end method
