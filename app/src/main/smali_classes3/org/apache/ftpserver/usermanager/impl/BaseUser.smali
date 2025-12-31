.class public Lorg/apache/ftpserver/usermanager/impl/BaseUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/User;


# instance fields
.field private authorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private homeDir:Ljava/lang/String;

.field private isEnabled:Z

.field private maxIdleTimeSec:I

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getAuthorities()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;
    .locals 5

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ftpserver/ftplet/Authority;

    invoke-interface {v3, p1}, Lorg/apache/ftpserver/ftplet/Authority;->canAuthorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1}, Lorg/apache/ftpserver/ftplet/Authority;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return-object p1

    :cond_4
    return-object v1
.end method

.method public getAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthorities(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/ftplet/Authority;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    return v0
.end method

.method public getHomeDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->authorities:Ljava/util/List;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->isEnabled:Z

    return-void
.end method

.method public setHomeDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->homeDir:Ljava/lang/String;

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->maxIdleTimeSec:I

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->password:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->name:Ljava/lang/String;

    return-object v0
.end method
