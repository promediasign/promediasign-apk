.class public Lorg/apache/ftpserver/usermanager/UserFactory;
.super Ljava/lang/Object;
.source "SourceFile"


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createUser()Lorg/apache/ftpserver/ftplet/User;
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    iget-object v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    iget v1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    invoke-virtual {v0, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    return-object v0
.end method

.method public getAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    return-object v0
.end method

.method public getHomeDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    return v0
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

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->authorities:Ljava/util/List;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->isEnabled:Z

    return-void
.end method

.method public setHomeDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->homeDir:Ljava/lang/String;

    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->maxIdleTimeSec:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->name:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/usermanager/UserFactory;->password:Ljava/lang/String;

    return-void
.end method
