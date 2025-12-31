.class public Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.super Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
    }
.end annotation


# static fields
.field private static final WORKSHEET_RELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->log:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->INTL_MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$300()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->log:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method


# virtual methods
.method public getAbsPathMetadata()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;

    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getSheetsData()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V

    return-object v0
.end method

.method public getXSSFBStylesTable()Lorg/apache/poi/xssf/binary/XSSFBStylesTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRelation;->STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method
