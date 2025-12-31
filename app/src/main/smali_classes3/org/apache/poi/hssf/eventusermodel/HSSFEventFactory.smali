.class public Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;-><init>(Ljava/io/InputStream;Z)V

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->nextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->processRecord(Lorg/apache/poi/hssf/record/Record;)S

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v1
.end method


# virtual methods
.method public abortableProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S

    move-result p1

    return p1
.end method

.method public abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)S
    .locals 1

    .line 1
    const-string v0, "Workbook"

    invoke-virtual {p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->abortableProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    throw p1
.end method

.method public abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)S
    .locals 0

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->abortableProcessWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)S

    move-result p1

    return p1
.end method

.method public processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->genericProcessEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)S
    :try_end_0
    .catch Lorg/apache/poi/hssf/eventusermodel/HSSFUserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntryNames()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    aget-object v5, v0, v3

    :cond_2
    invoke-virtual {p2, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    throw p1
.end method

.method public processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method
