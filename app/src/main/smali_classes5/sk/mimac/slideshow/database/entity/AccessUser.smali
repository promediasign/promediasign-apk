.class public Lsk/mimac/slideshow/database/entity/AccessUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/User;


# instance fields
.field private id:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private role:Lsk/mimac/slideshow/enums/UserRole;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->id:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsk/mimac/slideshow/enums/UserRole;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->name:Ljava/lang/String;

    iput-object p2, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->username:Ljava/lang/String;

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->password:Ljava/lang/String;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->role:Lsk/mimac/slideshow/enums/UserRole;

    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/database/entity/AccessUser;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->id:Ljava/lang/Long;

    iget-object p1, p1, Lsk/mimac/slideshow/database/entity/AccessUser;->id:Ljava/lang/Long;

    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getAuthorities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthorities(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/AccessUser;->isNotUser()Z

    move-result v0

    return v0
.end method

.method public getHomeDirectory()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lsk/mimac/slideshow/enums/UserRole;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->role:Lsk/mimac/slideshow/enums/UserRole;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x29

    return v0
.end method

.method public isAdmin()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->role:Lsk/mimac/slideshow/enums/UserRole;

    sget-object v1, Lsk/mimac/slideshow/enums/UserRole;->ADMIN:Lsk/mimac/slideshow/enums/UserRole;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotUser()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->role:Lsk/mimac/slideshow/enums/UserRole;

    sget-object v1, Lsk/mimac/slideshow/enums/UserRole;->USER:Lsk/mimac/slideshow/enums/UserRole;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->password:Ljava/lang/String;

    return-void
.end method

.method public setRole(Lsk/mimac/slideshow/enums/UserRole;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->role:Lsk/mimac/slideshow/enums/UserRole;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->username:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessUser{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/database/entity/AccessUser;->role:Lsk/mimac/slideshow/enums/UserRole;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
