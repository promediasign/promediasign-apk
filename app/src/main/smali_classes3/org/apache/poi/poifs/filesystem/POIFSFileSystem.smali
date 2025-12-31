.class public Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
.super Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 2

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/File;Z)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p0
.end method

.method public static createNonClosingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/util/CloseIgnoringInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->main([Ljava/lang/String;)V

    return-void
.end method
