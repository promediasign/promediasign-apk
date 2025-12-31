.class public Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/resource/ResourceManager;


# static fields
.field public static final RESOURCE_CONTENT:I = 0x2

.field public static final RESOURCE_TEMPLATE:I = 0x1


# instance fields
.field protected globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

.field private isInit:Z

.field protected log:Lorg/slf4j/Logger;

.field private logWhenFound:Z

.field protected final resourceLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

.field private final sourceInitializerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/util/ExtProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->resourceLoaders:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->sourceInitializerList:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->isInit:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->logWhenFound:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private assembleResourceLoaderInitializers()V
    .locals 6

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getConfiguration()Lorg/apache/velocity/util/ExtProperties;

    move-result-object v0

    const-string v1, "resource.loader"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v4}, Lorg/apache/velocity/runtime/RuntimeServices;->getConfiguration()Lorg/apache/velocity/util/ExtProperties;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/velocity/util/ExtProperties;->subset(Ljava/lang/String;)Lorg/apache/velocity/util/ExtProperties;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string v5, "ResourceManager : No configuration information found for resource loader named \'{}\' (id is {}). Skipping it..."

    invoke-interface {v4, v5, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v3, "_RESOURCE_LOADER_IDENTIFIER_"

    invoke-virtual {v4, v3, v2}, Lorg/apache/velocity/util/ExtProperties;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->sourceInitializerList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLoaderForResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->resourceLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    invoke-virtual {v1, p1}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public createResource(Ljava/lang/String;I)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/velocity/runtime/resource/ResourceFactory;->getResource(Ljava/lang/String;I)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object p1

    return-object p1
.end method

.method public getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->getLoaderForResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

    invoke-interface {v1, v0}, Lorg/apache/velocity/runtime/resource/ResourceCache;->get(Ljava/lang/Object;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/velocity/runtime/resource/Resource;->requiresChecking()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p3}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->refreshResource(Lorg/apache/velocity/runtime/resource/Resource;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string p3, "ResourceManager.getResource() exception"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

    invoke-interface {v1, v0}, Lorg/apache/velocity/runtime/resource/ResourceCache;->remove(Ljava/lang/Object;)Lorg/apache/velocity/runtime/resource/Resource;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->getResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->loadResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/resource/Resource;->getResourceLoader()Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->isCachingOn()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

    invoke-interface {p2, v0, v1}, Lorg/apache/velocity/runtime/resource/ResourceCache;->put(Ljava/lang/Object;Lorg/apache/velocity/runtime/resource/Resource;)Lorg/apache/velocity/runtime/resource/Resource;
    :try_end_1
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/velocity/exception/ParseErrorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    return-object v1

    :goto_1
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string p3, "ResourceManager.getResource() load exception"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string p3, "ResourceManager: parse exception: {}"

    invoke-virtual {p1}, Lorg/apache/velocity/exception/ParseErrorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :goto_3
    iget-object p3, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "ResourceManager: unable to find resource \'{}\' in any resource loader."

    invoke-interface {p3, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method

.method public declared-synchronized initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->isInit:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "Re-initialization of ResourceLoader attempted and ignored."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "loader"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "ResourceManager initializing: {}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->assembleResourceLoaderInitializers()V

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->sourceInitializerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/util/ExtProperties;

    const-string v1, "class"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "instance"

    invoke-virtual {v0, v2}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-static {v2, v1}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoaderFactory;->getLoader(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    move-result-object v2

    :goto_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v2, v1, v0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->commonInit(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/util/ExtProperties;)V

    invoke-virtual {v2, v0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->init(Lorg/apache/velocity/util/ExtProperties;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->resourceLoaders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_RESOURCE_LOADER_IDENTIFIER_"

    invoke-virtual {v0, v1}, Lorg/apache/velocity/util/ExtProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".resource.loader.class\' specification in configuration. This is a critical value.  Please adjust configuration."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "resource.manager.logwhenfound"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->logWhenFound:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "resource.manager.cache.class"

    invoke-interface {p1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-static {p1}, Lorg/apache/velocity/util/ClassUtils;->getNewInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    instance-of v1, v0, Lorg/apache/velocity/runtime/resource/ResourceCache;

    if-eqz v1, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified resource cache class ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") must implement "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lorg/apache/velocity/runtime/resource/ResourceCache;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified class for ResourceCache ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") does not exist or is not accessible to the current classloader."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v1, p1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/resource/ResourceCacheImpl;-><init>()V

    :cond_6
    check-cast v0, Lorg/apache/velocity/runtime/resource/ResourceCache;

    iput-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/resource/ResourceCache;->initialize(Lorg/apache/velocity/runtime/RuntimeServices;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    const-string v0, "Default ResourceManager initialization complete."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public loadResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->createResource(Ljava/lang/String;I)Lorg/apache/velocity/runtime/resource/Resource;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Lorg/apache/velocity/runtime/resource/Resource;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lorg/apache/velocity/runtime/resource/Resource;->setName(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lorg/apache/velocity/runtime/resource/Resource;->setEncoding(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->resourceLoaders:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lorg/apache/velocity/runtime/resource/Resource;->setResourceLoader(Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->process()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-boolean v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->logWhenFound:Z

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    .line 48
    .line 49
    const-string v2, "ResourceManager: found {} with loader {}"

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getClassName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v1, v2, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    nop

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {v0, p2}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const-wide/16 v0, 0x0

    .line 67
    .line 68
    :goto_2
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2, v0, v1}, Lorg/apache/velocity/runtime/resource/Resource;->setLastModified(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->getResourceLoader()Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getModificationCheckInterval()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    invoke-virtual {p2, v0, v1}, Lorg/apache/velocity/runtime/resource/Resource;->setModificationCheckInterval(J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lorg/apache/velocity/runtime/resource/Resource;->touch()V

    .line 89
    .line 90
    .line 91
    return-object p2

    .line 92
    :cond_3
    new-instance p2, Lorg/apache/velocity/exception/ResourceNotFoundException;

    .line 93
    .line 94
    const-string p3, "Unable to find resource \'"

    .line 95
    .line 96
    const-string v0, "\'"

    .line 97
    .line 98
    invoke-static {p3, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2
.end method

.method public refreshResource(Lorg/apache/velocity/runtime/resource/Resource;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;
    .locals 6

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->touch()V

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getResourceLoader()Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->resourceLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->resourceLoaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->getLoaderForResource(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getType()I

    move-result p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->loadResource(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->isSourceModified()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object p2, v4, v2

    const-string v2, "Declared encoding for template \'{}\' is different on reload. Old = \'{}\' New = \'{}\'"

    invoke-interface {v1, v2, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lorg/apache/velocity/runtime/resource/Resource;->setEncoding(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getLastModified(Lorg/apache/velocity/runtime/resource/Resource;)J

    move-result-wide v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getType()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/velocity/runtime/resource/ResourceFactory;->getResource(Ljava/lang/String;I)Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v3, v4}, Lorg/apache/velocity/runtime/resource/Resource;->setRuntimeServices(Lorg/apache/velocity/runtime/RuntimeServices;)V

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/velocity/runtime/resource/Resource;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/resource/Resource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/velocity/runtime/resource/Resource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/velocity/runtime/resource/Resource;->setResourceLoader(Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;)V

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getModificationCheckInterval()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/velocity/runtime/resource/Resource;->setModificationCheckInterval(J)V

    invoke-virtual {v3}, Lorg/apache/velocity/runtime/resource/Resource;->process()Z

    invoke-virtual {v3, v1, v2}, Lorg/apache/velocity/runtime/resource/Resource;->setLastModified(J)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/resource/ResourceManagerImpl;->globalCache:Lorg/apache/velocity/runtime/resource/ResourceCache;

    invoke-interface {p1, p2, v3}, Lorg/apache/velocity/runtime/resource/ResourceCache;->put(Ljava/lang/Object;Lorg/apache/velocity/runtime/resource/Resource;)Lorg/apache/velocity/runtime/resource/Resource;

    move-object p1, v3

    :cond_2
    return-object p1
.end method
