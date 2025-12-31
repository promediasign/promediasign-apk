.class public Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;
.super Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetIterator"
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-void
.end method


# virtual methods
.method public createSheetIteratorFromWB(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;-><init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->getSheets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use getXSSFBSheetComments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSheetRelationships()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->access$100()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getXSSFBSheetComments()Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method
