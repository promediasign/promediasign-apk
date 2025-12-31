.class public Lsk/mimac/slideshow/http/webdav/WebdavSecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/SecurityManager;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/webdav/WebdavSecurityManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/webdav/WebdavSecurityManager;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 2
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "__SYSTEM_USER__"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/http/Authenticator;->getSystemUserPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lsk/mimac/slideshow/database/entity/AccessUser;

    const-string v1, "System user"

    const-string v2, "system-user"

    sget-object v3, Lsk/mimac/slideshow/enums/UserRole;->ADMIN:Lsk/mimac/slideshow/enums/UserRole;

    invoke-direct {p2, v1, v2, v0, v3}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/UserRole;)V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getUsername()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/http/webdav/WebdavSecurityManager;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get user \'{}\' from database"

    invoke-interface {v1, v2, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;Lio/milton/resource/Resource;)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getRealm(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "Slideshow"

    return-object p1
.end method

.method public isDigestAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
