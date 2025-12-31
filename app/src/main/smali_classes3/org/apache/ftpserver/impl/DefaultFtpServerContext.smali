.class public Lorg/apache/ftpserver/impl/DefaultFtpServerContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/impl/FtpServerContext;


# static fields
.field private static final ADMIN_AUTHORITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANON_AUTHORITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/Authority;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

.field private connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

.field private fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

.field private ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;"
        }
    .end annotation
.end field

.field private messageResource:Lorg/apache/ftpserver/message/MessageResource;

.field private statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private userManager:Lorg/apache/ftpserver/ftplet/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ADMIN_AUTHORITIES:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ANON_AUTHORITIES:Ljava/util/List;

    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/WritePermission;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/WritePermission;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginPermission;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;

    const/16 v2, 0x12c0

    invoke-direct {v0, v2, v2}, Lorg/apache/ftpserver/usermanager/impl/TransferRatePermission;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lorg/apache/ftpserver/message/MessageResourceFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/message/MessageResourceFactory;->createMessageResource()Lorg/apache/ftpserver/message/MessageResource;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->messageResource:Lorg/apache/ftpserver/message/MessageResource;

    new-instance v0, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/usermanager/PropertiesUserManagerFactory;->createUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->userManager:Lorg/apache/ftpserver/ftplet/UserManager;

    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    new-instance v0, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;

    invoke-direct {v0}, Lorg/apache/ftpserver/ftpletcontainer/impl/DefaultFtpletContainer;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    new-instance v0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;

    invoke-direct {v0}, Lorg/apache/ftpserver/impl/DefaultFtpStatistics;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

    new-instance v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/command/CommandFactoryFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/command/CommandFactoryFactory;->createCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

    new-instance v0, Lorg/apache/ftpserver/ConnectionConfigFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/ConnectionConfigFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/ConnectionConfigFactory;->createConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/apache/ftpserver/listener/ListenerFactory;

    invoke-direct {v1}, Lorg/apache/ftpserver/listener/ListenerFactory;-><init>()V

    invoke-virtual {v1}, Lorg/apache/ftpserver/listener/ListenerFactory;->createListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createDefaultUsers()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/UserManager;->getAdminName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/UserManager;->doesExist(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "./res/home"

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating user : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    sget-object v1, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ADMIN_AUTHORITIES:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    :cond_0
    const-string v1, "anonymous"

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/UserManager;->doesExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Creating user : anonymous"

    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/ftpserver/usermanager/impl/BaseUser;

    invoke-direct {v2}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;-><init>()V

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setName(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setPassword(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ANON_AUTHORITIES:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setAuthorities(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setEnabled(Z)V

    invoke-virtual {v2, v3}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setHomeDirectory(Ljava/lang/String;)V

    const/16 v1, 0x12c

    invoke-virtual {v2, v1}, Lorg/apache/ftpserver/usermanager/impl/BaseUser;->setMaxIdleTime(I)V

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/ftplet/UserManager;->save(Lorg/apache/ftpserver/ftplet/User;)V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplets()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Shutting down the thread pool executor"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method public getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

    return-object v0
.end method

.method public getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    return-object v0
.end method

.method public getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    return-object v0
.end method

.method public getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

    return-object v0
.end method

.method public getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;->getFtplet(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/Ftplet;

    move-result-object p1

    return-object p1
.end method

.method public getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/listener/Listener;

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

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageResource()Lorg/apache/ftpserver/message/MessageResource;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->messageResource:Lorg/apache/ftpserver/message/MessageResource;

    return-object v0
.end method

.method public declared-synchronized getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    invoke-interface {v0}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxThreads()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    invoke-interface {v0}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLogins()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Intializing shared thread pool executor with max threads of {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-direct {v1, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->userManager:Lorg/apache/ftpserver/ftplet/UserManager;

    return-object v0
.end method

.method public removeListener(Ljava/lang/String;)Lorg/apache/ftpserver/listener/Listener;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/listener/Listener;

    return-object p1
.end method

.method public setCommandFactory(Lorg/apache/ftpserver/command/CommandFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->commandFactory:Lorg/apache/ftpserver/command/CommandFactory;

    return-void
.end method

.method public setConnectionConfig(Lorg/apache/ftpserver/ConnectionConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->connectionConfig:Lorg/apache/ftpserver/ConnectionConfig;

    return-void
.end method

.method public setFileSystemManager(Lorg/apache/ftpserver/ftplet/FileSystemFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->fileSystemManager:Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    return-void
.end method

.method public setFtpStatistics(Lorg/apache/ftpserver/ftplet/FtpStatistics;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->statistics:Lorg/apache/ftpserver/ftplet/FtpStatistics;

    return-void
.end method

.method public setFtpletContainer(Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->ftpletContainer:Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    return-void
.end method

.method public setListener(Ljava/lang/String;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListeners(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/listener/Listener;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->listeners:Ljava/util/Map;

    return-void
.end method

.method public setMessageResource(Lorg/apache/ftpserver/message/MessageResource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->messageResource:Lorg/apache/ftpserver/message/MessageResource;

    return-void
.end method

.method public setUserManager(Lorg/apache/ftpserver/ftplet/UserManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpServerContext;->userManager:Lorg/apache/ftpserver/ftplet/UserManager;

    return-void
.end method
