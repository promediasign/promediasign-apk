.class public Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private ftplets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 3

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ftpserver/ftplet/Ftplet;->afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :cond_1
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v2, :cond_0

    :cond_2
    return-object v0
.end method

.method public beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 3

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v0, p1, p2}, Lorg/apache/ftpserver/ftplet/Ftplet;->beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :cond_1
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v2, :cond_0

    :cond_2
    return-object v0
.end method

.method public destroy()V
    .locals 5

    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/Ftplet;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: FtpletHandler.destroy()"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/ftplet/Ftplet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFtplets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/ftplet/Ftplet;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v1, p1}, Lorg/apache/ftpserver/ftplet/Ftplet;->init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 3

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/ftplet/Ftplet;->onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :cond_1
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v2, :cond_0

    :cond_2
    return-object v0
.end method

.method public onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 3

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    iget-object v1, p0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;->ftplets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/ftplet/Ftplet;

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/ftplet/Ftplet;->onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :cond_1
    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DEFAULT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v0, v2, :cond_0

    :cond_2
    return-object v0
.end method
