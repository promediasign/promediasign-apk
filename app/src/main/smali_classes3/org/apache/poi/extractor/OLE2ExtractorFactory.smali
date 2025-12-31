.class public Lorg/apache/poi/extractor/OLE2ExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static allPreferEventExtractors:Ljava/lang/Boolean;

.field private static final threadPreferEventExtractors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-instance v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory$1;

    invoke-direct {v0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory$1;-><init>()V

    sput-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/POIOLE2TextExtractor;

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/POIOLE2TextExtractor;

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/POIOLE2TextExtractor;

    return-object p0
.end method

.method public static createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;
    .locals 6

    .line 4
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getOOXMLClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v3, "createExtractor"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/io/InputStream;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/POITextExtractor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error creating Extractor for InputStream"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p0

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Lorg/apache/poi/POIOLE2TextExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;
    .locals 6

    .line 5
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getPreferEventExtractor()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0

    :cond_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    const-string v1, "Book"

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getScratchpadClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "createExtractor"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/POITextExtractor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No supported documents found in the OLE2 stream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error creating Scratchpad Extractor"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    throw p0

    :cond_4
    new-instance p0, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v0, "Old Excel Spreadsheet format (1-95) found. Please call OldExcelExtractor directly for basic text extraction"

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAllThreadsPreferEventExtractors()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static getEmbededDocsTextExtractors(Lorg/apache/poi/POIOLE2TextExtractor;)[Lorg/apache/poi/POITextExtractor;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIOLE2TextExtractor;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v6

    if-eqz v6, :cond_6

    instance-of v7, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntries()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "MBD"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->getScratchpadClass()Ljava/lang/Class;

    move-result-object v6

    :try_start_0
    const-string v7, "identifyEmbeddedResources"

    new-array v8, v1, [Ljava/lang/Class;

    const-class v9, Lorg/apache/poi/POIOLE2TextExtractor;

    aput-object v9, v8, v3

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v2

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object v4, v1, v2

    aput-object v5, v1, v0

    const/4 p0, 0x0

    invoke-virtual {v6, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    new-array p0, v3, [Lorg/apache/poi/POITextExtractor;

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-static {v1}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/POITextExtractor;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    const/4 v4, 0x5

    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->createExtractor(Ljava/io/InputStream;)Lorg/apache/poi/POITextExtractor;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :goto_3
    sget-object v5, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :goto_4
    sget-object v5, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/POITextExtractor;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/POITextExtractor;

    return-object p0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error checking for Scratchpad embedded resources"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The extractor didn\'t know which POIFS it came from!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getOOXMLClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-class v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.apache.poi.extractor.ExtractorFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POI OOXML jar missing"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPreferEventExtractor()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getScratchpadClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-class v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.apache.poi.extractor.OLE2ScratchpadExtractorFactory"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "POI Scratchpad jar missing"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "POI Scratchpad jar missing, required for ExtractorFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getThreadPrefersEventExtractors()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setAllThreadsPreferEventExtractors(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->allPreferEventExtractors:Ljava/lang/Boolean;

    return-void
.end method

.method public static setThreadPrefersEventExtractors(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/extractor/OLE2ExtractorFactory;->threadPreferEventExtractors:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
