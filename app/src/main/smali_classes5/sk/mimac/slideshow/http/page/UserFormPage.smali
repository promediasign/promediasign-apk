.class public Lsk/mimac/slideshow/http/page/UserFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# instance fields
.field private final loggedUser:Lsk/mimac/slideshow/database/entity/AccessUser;

.field private user:Lsk/mimac/slideshow/database/entity/AccessUser;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Lsk/mimac/slideshow/database/entity/AccessUser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lsk/mimac/slideshow/database/entity/AccessUser;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    iput-object p3, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->loggedUser:Lsk/mimac/slideshow/database/entity/AccessUser;

    const-string p1, "user"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object p3

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->get(Ljava/lang/Long;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object p3

    iput-object p3, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User with id \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "\' doesn\'t exist"

    .line 1
    invoke-static {p1, p2, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-direct {p1}, Lsk/mimac/slideshow/database/entity/AccessUser;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    :goto_0
    return-void
.end method

.method private appendRoleOption(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/enums/UserRole;)V
    .locals 2

    const-string v0, "<option value=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getRole()Lsk/mimac/slideshow/enums/UserRole;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const-string v0, "selected"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user_role_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</option>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private fillParams()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "name_empty"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private processPassword()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v3, "again"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "password_different"

    :goto_0
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    const-string v0, "password_too_short"

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    sget-object v1, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->INSTANCE:Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/ftp/ShaPasswordEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processUsername()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "username"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "username_empty"

    :goto_0
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getByUsername(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/AccessUser;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "username_duplicate"

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private saveToDb()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->create(Lsk/mimac/slideshow/database/entity/AccessUser;)V

    const-string v0, "user_add_success"

    :goto_0
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->getInstance()Lsk/mimac/slideshow/database/dao/AccessUserDao;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/dao/AccessUserDao;->update(Lsk/mimac/slideshow/database/entity/AccessUser;)V

    const-string v0, "user_edit_success"

    goto :goto_0

    :goto_1
    return-void
.end method

.method private setUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/AccessUser;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->setUsername(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    iget-object p2, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v0, "role"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lsk/mimac/slideshow/enums/UserRole;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/UserRole;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/AccessUser;->setRole(Lsk/mimac/slideshow/enums/UserRole;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    invoke-virtual {p1, p3}, Lsk/mimac/slideshow/database/entity/AccessUser;->setPassword(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "user_add"

    .line 10
    .line 11
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "user_edit"

    .line 22
    .line 23
    const-string v2, " "

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 29
    .line 30
    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/AccessUser;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public process()V
    .locals 4

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/UserFormPage;->processName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/UserFormPage;->processUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/UserFormPage;->processPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->hasAnyErrors()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0, v1, v2}, Lsk/mimac/slideshow/http/page/UserFormPage;->setUserProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/UserFormPage;->saveToDb()V

    const-string v0, "/users"

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->redirectTo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t edit user"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/UserFormPage;->fillParams()V

    :cond_1
    :goto_0
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1
    const-string v0, "<form method=\'post\'>"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 7
    .line 8
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "\'/>"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "<input type=\'hidden\' name=\'id\' value=\'"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 22
    .line 23
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    const-string v0, "<table>"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "name"

    .line 39
    .line 40
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "text"

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, v3, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "username"

    .line 50
    .line 51
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, p1, v0, v3, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "password"

    .line 59
    .line 60
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v2, "password_help"

    .line 65
    .line 66
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    const-string v4, "password"

    .line 71
    .line 72
    const-string v5, "password"

    .line 73
    .line 74
    move-object v2, p0

    .line 75
    move-object v3, p1

    .line 76
    invoke-virtual/range {v2 .. v7}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "password_again"

    .line 80
    .line 81
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "again"

    .line 86
    .line 87
    invoke-virtual {p0, p1, v3, v0, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "<tr><td>"

    .line 91
    .line 92
    const-string v2, "role"

    .line 93
    .line 94
    const-string v3, ": </td><td><select name=\'role\'>"

    .line 95
    .line 96
    invoke-static {p1, v0, v2, v3}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->loggedUser:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 100
    .line 101
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isAdmin()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    sget-object v0, Lsk/mimac/slideshow/enums/UserRole;->ADMIN:Lsk/mimac/slideshow/enums/UserRole;

    .line 108
    .line 109
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/UserFormPage;->appendRoleOption(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/enums/UserRole;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    sget-object v0, Lsk/mimac/slideshow/enums/UserRole;->MANAGER:Lsk/mimac/slideshow/enums/UserRole;

    .line 113
    .line 114
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/UserFormPage;->appendRoleOption(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/enums/UserRole;)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Lsk/mimac/slideshow/enums/UserRole;->USER:Lsk/mimac/slideshow/enums/UserRole;

    .line 118
    .line 119
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/UserFormPage;->appendRoleOption(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/enums/UserRole;)V

    .line 120
    .line 121
    .line 122
    const-string v0, "</select></td></tr></table><input type=\'submit\' class=\'button\' value=\'"

    .line 123
    .line 124
    const-string v2, "save"

    .line 125
    .line 126
    const-string v3, "\'/><a href=\'/users\' class=\'button\'>"

    .line 127
    .line 128
    const-string v4, "back"

    .line 129
    .line 130
    invoke-static {p1, v0, v2, v3, v4}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v0, "</a></form>"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 139
    .line 140
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->loggedUser:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/database/entity/AccessUser;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 149
    .line 150
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    .line 156
    const-string v0, "<br><form method=\'POST\' action=\'/users\'><input type=\'hidden\' name=\'delete\' value=\'"

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/UserFormPage;->user:Lsk/mimac/slideshow/database/entity/AccessUser;

    .line 162
    .line 163
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/AccessUser;->getId()Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v0, "\'><input type=\'submit\' class=\'button\' value=\'"

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, "remove_user"

    .line 176
    .line 177
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_2
    return-void
.end method
