.class public Lorg/apache/poi/ss/extractor/EmbeddedExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;,
        Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ss/extractor/EmbeddedExtractor;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000([BI[B)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->indexOf([BI[B)I

    move-result p0

    return p0
.end method

.method private static computeFailure([B)[I
    .locals 5

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    :goto_1
    if-lez v1, :cond_0

    aget-byte v3, p0, v1

    aget-byte v4, p0, v2

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_0
    aget-byte v3, p0, v1

    aget-byte v4, p0, v2

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v2, v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-static {v1, v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    throw p0

    :cond_1
    return-void
.end method

.method private static indexOf([BI[B)I
    .locals 5

    invoke-static {p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->computeFailure([B)[I

    move-result-object v0

    array-length v1, p0

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_4

    :goto_1
    if-lez v1, :cond_1

    aget-byte v3, p2, v1

    aget-byte v4, p0, p1

    if-eq v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_1
    aget-byte v3, p2, v1

    aget-byte v4, p0, p1

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    array-length v3, p2

    if-ne v1, v3, :cond_3

    array-length p0, p2

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method


# virtual methods
.method public canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->copyNodes(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "binary/octet-stream"

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p1
.end method

.method public extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public extractAll(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/extractor/EmbeddedData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V

    return-object v0
.end method

.method public extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/ShapeContainer<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/extractor/EmbeddedData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Shape;

    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ObjectData;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ObjectData;

    :try_start_0
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->hasDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getDirectory()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractOne(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v3, "binary/octet-stream"

    instance-of v4, v1, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    if-eqz v4, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFObjectData;->getObjectPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Lorg/apache/poi/ss/extractor/EmbeddedData;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/ObjectData;->getObjectData()[B

    move-result-object v1

    invoke-direct {v4, v5, v1, v3}, Lorg/apache/poi/ss/extractor/EmbeddedData;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_2

    :goto_1
    sget-object v3, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Entry not found / readable - ignoring OLE embedding"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x5

    invoke-virtual {v3, v1, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/Picture;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/Picture;

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractOne(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object v2

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ShapeContainer;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ShapeContainer;

    invoke-virtual {p0, v1, p2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extractAll(Lorg/apache/poi/ss/usermodel/ShapeContainer;Ljava/util/List;)V

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setShape(Lorg/apache/poi/ss/usermodel/Shape;)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/extractor/EmbeddedData;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    :goto_3
    const-string v3, ".bin"

    :goto_4
    const-string v4, ""

    if-eqz v1, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "MBD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "Root Entry"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Shape;->getShapeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2
    invoke-static {v1, v3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    .line 3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "picture_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/ss/extractor/EmbeddedData;->setFilename(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public extractOne(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public extractOne(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->canExtract(Lorg/apache/poi/ss/usermodel/Picture;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor;->extract(Lorg/apache/poi/ss/usermodel/Picture;)Lorg/apache/poi/ss/extractor/EmbeddedData;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/extractor/EmbeddedExtractor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;

    invoke-direct {v0}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$Ole10Extractor;-><init>()V

    new-instance v1, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;

    invoke-direct {v1}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$PdfExtractor;-><init>()V

    new-instance v2, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;

    invoke-direct {v2}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$BiffExtractor;-><init>()V

    new-instance v3, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;

    invoke-direct {v3}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$OOXMLExtractor;-><init>()V

    new-instance v4, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;

    invoke-direct {v4}, Lorg/apache/poi/ss/extractor/EmbeddedExtractor$FsExtractor;-><init>()V

    const/4 v5, 0x5

    new-array v5, v5, [Lorg/apache/poi/ss/extractor/EmbeddedExtractor;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
