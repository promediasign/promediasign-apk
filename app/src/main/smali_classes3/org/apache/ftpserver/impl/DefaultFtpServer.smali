.class public Lorg/apache/ftpserver/impl/DefaultFtpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/FtpServer;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private started:Z

.field private suspended:Z


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpServerContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/impl/DefaultFtpServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    return-void
.end method


# virtual methods
.method public getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    move-result-object v0

    return-object v0
.end method

.method public getFtplets()Ljava/util/Map;
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

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplets()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;

    move-result-object p1

    return-object p1
.end method

.method public getListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessageResource()Lorg/apache/ftpserver/message/MessageResource;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    return-object v0
.end method

.method public getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    return-object v0
.end method

.method public getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServer;->getServerContext()Lorg/apache/ftpserver/impl/FtpServerContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    return v0
.end method

.method public resume()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Resuming server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/listener/Listener;

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->resume()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Server resumed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/listener/Listener;

    iget-object v3, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v2, v3}, Lorg/apache/ftpserver/listener/Listener;->start(Lorg/apache/ftpserver/impl/FtpServerContext;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1, v2}, Lorg/apache/ftpserver/ftplet/Ftplet;->init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "FTP server started"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ftpserver/listener/Listener;

    invoke-interface {v2}, Lorg/apache/ftpserver/listener/Listener;->stop()V

    goto :goto_2

    :cond_1
    instance-of v0, v1, Lorg/apache/ftpserver/ftplet/FtpException;

    if-eqz v0, :cond_2

    check-cast v1, Lorg/apache/ftpserver/ftplet/FtpException;

    throw v1

    :cond_2
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FtpServer has been stopped. Restart is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/listener/Listener;

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->stop()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/Ftplet;->destroy()V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    return-void
.end method

.method public suspend()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->started:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Suspending server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getListeners()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/listener/Listener;

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->suspend()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->suspended:Z

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Server suspended"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method
