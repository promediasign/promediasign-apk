.class public final Lio/milton/http/fs/FileSystemResourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ResourceFactory;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field allowDirectoryBrowsing:Z

.field private contentService:Lio/milton/http/fs/FileContentService;

.field contextPath:Ljava/lang/String;

.field defaultPage:Ljava/lang/String;

.field digestAllowed:Z

.field lockManager:Lio/milton/http/LockManager;

.field maxAgeSeconds:Ljava/lang/Long;

.field root:Ljava/io/File;

.field securityManager:Lio/milton/http/SecurityManager;

.field private ssoPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/milton/http/SecurityManager;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/http/fs/SimpleFileContentService;

    invoke-direct {v0}, Lio/milton/http/fs/SimpleFileContentService;-><init>()V

    iput-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contentService:Lio/milton/http/fs/FileContentService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->digestAllowed:Z

    invoke-virtual {p0, p1}, Lio/milton/http/fs/FileSystemResourceFactory;->setRoot(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lio/milton/http/fs/FileSystemResourceFactory;->setSecurityManager(Lio/milton/http/SecurityManager;)V

    invoke-virtual {p0, p3}, Lio/milton/http/fs/FileSystemResourceFactory;->setContextPath(Ljava/lang/String;)V

    return-void
.end method

.method private stripContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contextPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contextPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stripped context: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getDefaultPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->defaultPage:Ljava/lang/String;

    return-object v0
.end method

.method public getLockManager()Lio/milton/http/LockManager;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->lockManager:Lio/milton/http/LockManager;

    return-object v0
.end method

.method public getRealm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->securityManager:Lio/milton/http/SecurityManager;

    invoke-interface {v0, p1}, Lio/milton/http/SecurityManager;->getRealm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got null realm from securityManager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/fs/FileSystemResourceFactory;->securityManager:Lio/milton/http/SecurityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 3

    sget-object v0, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getResource: host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lio/milton/http/fs/FileSystemResourceFactory;->stripContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->root:Ljava/io/File;

    invoke-virtual {p0, v0, p2}, Lio/milton/http/fs/FileSystemResourceFactory;->resolvePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/milton/http/fs/FileSystemResourceFactory;->resolveFile(Ljava/lang/String;Ljava/io/File;)Lio/milton/http/fs/FsResource;

    move-result-object p1

    return-object p1
.end method

.method public getRoot()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->root:Ljava/io/File;

    return-object v0
.end method

.method public getSecurityManager()Lio/milton/http/SecurityManager;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->securityManager:Lio/milton/http/SecurityManager;

    return-object v0
.end method

.method public isDigestAllowed()Z
    .locals 4

    iget-boolean v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->digestAllowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/http/fs/FileSystemResourceFactory;->securityManager:Lio/milton/http/SecurityManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/milton/http/SecurityManager;->isDigestAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDigestAllowed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public maxAgeSeconds(Lio/milton/http/fs/FsResource;)Ljava/lang/Long;
    .locals 0

    iget-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->maxAgeSeconds:Ljava/lang/Long;

    return-object p1
.end method

.method public resolveFile(Ljava/lang/String;Ljava/io/File;)Lio/milton/http/fs/FsResource;
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/milton/http/fs/FsDirectoryResource;

    iget-object v1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contentService:Lio/milton/http/fs/FileContentService;

    invoke-direct {v0, p1, p0, p2, v1}, Lio/milton/http/fs/FsDirectoryResource;-><init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;Lio/milton/http/fs/FileContentService;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/milton/http/fs/FsFileResource;

    iget-object v1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contentService:Lio/milton/http/fs/FileContentService;

    invoke-direct {v0, p1, p0, p2, v1}, Lio/milton/http/fs/FsFileResource;-><init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;Lio/milton/http/fs/FileContentService;)V

    :goto_0
    iget-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->ssoPrefix:Ljava/lang/String;

    iput-object p1, v0, Lio/milton/http/fs/FsResource;->ssoPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public resolvePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    invoke-static {p2}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object p2

    invoke-virtual {p2}, Lio/milton/common/Path;->getParts()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public setAllowDirectoryBrowsing(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->allowDirectoryBrowsing:Z

    return-void
.end method

.method public setContentService(Lio/milton/http/fs/FileContentService;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contentService:Lio/milton/http/fs/FileContentService;

    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->contextPath:Ljava/lang/String;

    return-void
.end method

.method public setLockManager(Lio/milton/http/LockManager;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->lockManager:Lio/milton/http/LockManager;

    return-void
.end method

.method public final setRoot(Ljava/io/File;)V
    .locals 3

    sget-object v0, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "root: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iput-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->root:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root folder does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root exists but is not a directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSecurityManager(Lio/milton/http/SecurityManager;)V
    .locals 3

    sget-object v0, Lio/milton/http/fs/FileSystemResourceFactory;->log:Lorg/slf4j/Logger;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "securityManager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Setting null FsSecurityManager. This WILL cause null pointer exceptions"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lio/milton/http/fs/FileSystemResourceFactory;->securityManager:Lio/milton/http/SecurityManager;

    return-void
.end method
