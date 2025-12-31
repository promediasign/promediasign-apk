.class public Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FileSystemView;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private caseInsensitive:Z

.field private currDir:Ljava/lang/String;

.field private rootDir:Ljava/lang/String;

.field private user:Lorg/apache/ftpserver/ftplet/User;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/ftplet/User;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;-><init>(Lorg/apache/ftpserver/ftplet/User;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ftplet/User;Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->LOG:Lorg/slf4j/Logger;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-boolean p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getHomeDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v2, "Native filesystem view created for user \"{}\" with root \"{}\""

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    iput-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User home directory can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "user can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    invoke-static {v0, v1, p1, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    return v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->caseInsensitive:Z

    invoke-static {v0, v1, p1, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    return-object v1
.end method

.method public getHomeDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 4

    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    const-string v3, "/"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    return-object v0
.end method

.method public getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->rootDir:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->currDir:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFileSystemView;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public isRandomAccessible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
