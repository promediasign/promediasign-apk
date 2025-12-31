.class public Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FileSystemFactory;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private caseInsensitive:Z

.field private createHome:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public createFileSystemView(Lorg/apache/ftpserver/ftplet/User;)Lorg/apache/ftpserver/ftplet/FileSystemView;
    .locals 7

    const-string v0, "Cannot create user home :: "

    const-string v1, "Cannot create user home :: "

    const-string v2, "Not a directory :: "

    const-string v3, "Not a directory :: "

    monitor-enter p1

    :try_start_0
    iget-boolean v4, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->createHome:Z

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;

    iget-boolean v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->caseInsensitive:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;-><init>(Lorg/apache/ftpserver/ftplet/User;Z)V

    monitor-exit p1

    return-object v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCaseInsensitive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->caseInsensitive:Z

    return v0
.end method

.method public isCreateHome()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->createHome:Z

    return v0
.end method

.method public setCaseInsensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->caseInsensitive:Z

    return-void
.end method

.method public setCreateHome(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/NativeFileSystemFactory;->createHome:Z

    return-void
.end method
