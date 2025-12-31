.class public Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;
.super Lorg/apache/poi/POIDocument;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/POIDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    return-void
.end method

.method private write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    new-instance v1, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    new-instance v2, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/filesystem/EntryUtils;->copyNodes(Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;Lorg/apache/poi/poifs/filesystem/FilteringDirectoryNode;)V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->validateInPlaceWritePossible()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIDocument;->writeProperties(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem()V

    return-void
.end method

.method public write(Ljava/io/File;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->create(Ljava/io/File;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>()V

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;->write(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p1
.end method
