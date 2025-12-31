.class public Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/FtpFile;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private user:Lorg/apache/ftpserver/ftplet/User;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    iput-object p3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileName must be an absolut path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileName can not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "file can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileName can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPhysicalName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v2, "/"

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p2}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_5

    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    move-object p1, v2

    :cond_2
    invoke-static {p1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_4
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3
    invoke-static {p1, v1, v4}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    move-object p1, p0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_6

    .line 5
    invoke-static {p1, v1, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_6
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    const-string v5, ".."

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v5, -0x1

    if-eq p2, v5, :cond_7

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_9
    const-string v5, "~"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7
    invoke-static {p0, v1, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    if-eqz p3, :cond_b

    .line 8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;

    invoke-direct {v6, p2, v1}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_b

    array-length v6, v5

    if-lez v6, :cond_b

    aget-object p2, v5, v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p2, p3, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p0, v0, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_2

    :cond_e
    move-object p0, p1

    :goto_2
    return-object p0
.end method

.method public static final normalizeSeparateChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createInputStream(J)Ljava/io/InputStream;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$3;-><init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No read permission : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createOutputStream(J)Ljava/io/OutputStream;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;-><init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No write permission : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public doesExist()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object p1, p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get the canonical path"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "group"

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    const-string v0, "user"

    return-object v0
.end method

.method public getPhysicalFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public isRemovable()Z
    .locals 5

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->fileName:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    new-instance v4, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-direct {v4, v0}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    invoke-virtual {v0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isWritable()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking authorization for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    new-instance v1, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/usermanager/impl/WriteRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Not authorized"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Checking if file exists"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Checking can write: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Authorized"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public listFiles()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/ftpserver/ftplet/FtpFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    new-instance v1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$1;-><init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/lit8 v2, v2, -0x1

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/16 v3, 0x2f

    .line 43
    .line 44
    if-eq v2, v3, :cond_2

    .line 45
    .line 46
    const-string v2, "/"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_2
    array-length v2, v0

    .line 53
    new-array v2, v2, [Lorg/apache/ftpserver/ftplet/FtpFile;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_0
    array-length v4, v0

    .line 57
    if-ge v3, v4, :cond_3

    .line 58
    .line 59
    aget-object v4, v0, v3

    .line 60
    .line 61
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v6, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    .line 77
    .line 78
    iget-object v7, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->user:Lorg/apache/ftpserver/ftplet/User;

    .line 79
    .line 80
    invoke-direct {v6, v5, v4, v7}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;-><init>(Ljava/lang/String;Ljava/io/File;Lorg/apache/ftpserver/ftplet/User;)V

    .line 81
    .line 82
    .line 83
    aput-object v6, v2, v3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

.method public mkdir()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public move(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iget-object p1, p1, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public setLastModified(J)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->file:Ljava/io/File;

    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    return p1
.end method
