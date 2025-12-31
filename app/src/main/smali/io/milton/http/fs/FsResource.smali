.class public abstract Lio/milton/http/fs/FsResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/resource/Resource;
.implements Lio/milton/resource/MoveableResource;
.implements Lio/milton/resource/CopyableResource;
.implements Lio/milton/resource/LockableResource;
.implements Lio/milton/resource/DigestResource;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field final factory:Lio/milton/http/fs/FileSystemResourceFactory;

.field file:Ljava/io/File;

.field final host:Ljava/lang/String;

.field ssoPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fs/FsResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fs/FsResource;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/milton/http/fs/FileSystemResourceFactory;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    iput-object p3, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    iput-object p2, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    return-void
.end method


# virtual methods
.method public authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->getSecurityManager()Lio/milton/http/SecurityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/milton/http/SecurityManager;->authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->getSecurityManager()Lio/milton/http/SecurityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/milton/http/SecurityManager;->authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->getSecurityManager()Lio/milton/http/SecurityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p0}, Lio/milton/http/SecurityManager;->authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;Lio/milton/resource/Resource;)Z

    move-result p1

    sget-object p2, Lio/milton/http/fs/FsResource;->log:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "authorise: result="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public copyTo(Lio/milton/resource/CollectionResource;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lio/milton/http/fs/FsDirectoryResource;

    if-eqz v0, :cond_0

    check-cast p1, Lio/milton/http/fs/FsDirectoryResource;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/milton/http/fs/FsResource;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/milton/http/fs/FsResource;->doCopy(Ljava/io/File;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destination is an unknown type. Must be a FsDirectoryResource, is a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public delete()V
    .locals 2

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to delete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract doCopy(Ljava/io/File;)V
.end method

.method public getCreateDate()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLock()Lio/milton/http/LockToken;
    .locals 3

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->getLockManager()Lio/milton/http/LockManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->getLockManager()Lio/milton/http/LockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/milton/http/LockManager;->getCurrentToken(Lio/milton/resource/LockableResource;)Lio/milton/http/LockToken;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lio/milton/http/fs/FsResource;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCurrentLock called, but no lock manager: file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    return-object v0
.end method

.method public getModifiedDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/milton/http/fs/FileSystemResourceFactory;->getRealm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got null realm from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/milton/http/fs/FsResource;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDigestAllowed()Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/fs/FsResource;->factory:Lio/milton/http/fs/FileSystemResourceFactory;

    invoke-virtual {v0}, Lio/milton/http/fs/FileSystemResourceFactory;->isDigestAllowed()Z

    move-result v0

    return v0
.end method

.method public moveTo(Lio/milton/resource/CollectionResource;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lio/milton/http/fs/FsDirectoryResource;

    if-eqz v0, :cond_1

    check-cast p1, Lio/milton/http/fs/FsDirectoryResource;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lio/milton/http/fs/FsResource;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lio/milton/http/fs/FsResource;->file:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to move to: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destination is an unknown type. Must be a FsDirectoryResource, is a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
