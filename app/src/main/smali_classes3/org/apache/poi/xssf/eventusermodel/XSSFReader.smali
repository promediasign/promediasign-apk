.class public Lorg/apache/poi/xssf/eventusermodel/XSSFReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XMLSheetRefReader;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;,
        Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static final WORKSHEET_RELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field protected workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->WORKSHEET_RELS:Ljava/util/Set;

    const-class v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v0, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v1, "http://purl.oclc.org/ooxml/officeDocument/relationships/officeDocument"

    invoke-virtual {p1, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->getRelationship(I)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "Strict OOXML isn\'t currently supported, please see bug #57699"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/apache/poi/POIXMLException;

    const-string v0, "OOXML file structure broken/invalid - no core document found!"

    invoke-direct {p1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->WORKSHEET_RELS:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$200()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method


# virtual methods
.method public getSharedStringsData()Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, v1}, Lorg/apache/poi/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSharedStringsTable()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/poi/xssf/model/SharedStringsTable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getSheet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationship(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/net/URI;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "No data found for Sheet with r:id "

    .line 33
    .line 34
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v1, "No Sheet found with r:id "

    .line 45
    .line 46
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public getSheetsData()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    return-object v0
.end method

.method public getStylesData()Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, v1}, Lorg/apache/poi/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStylesTable()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

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
    new-instance v1, Lorg/apache/poi/xssf/model/StylesTable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v1, v0}, Lorg/apache/poi/xssf/model/StylesTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/poi/xssf/model/ThemesTable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-direct {v3, v0}, Lorg/apache/poi/xssf/model/ThemesTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    :cond_1
    return-object v1
.end method

.method public getThemesData()Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    iget-object v1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0, v1}, Lorg/apache/poi/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getWorkbookData()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->workbookPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
