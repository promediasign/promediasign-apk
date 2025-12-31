.class public Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;
.super Lorg/apache/poi/POIXMLDocument;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Workbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;
    }
.end annotation


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CHARACTER_WIDTH:F = 7.0017f
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation
.end field

.field public static final PICTURE_TYPE_BMP:I = 0xb

.field public static final PICTURE_TYPE_EPS:I = 0xa

.field public static final PICTURE_TYPE_GIF:I = 0x8

.field public static final PICTURE_TYPE_TIFF:I = 0x9

.field public static final PICTURE_TYPE_WPG:I = 0xc

.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

.field private _missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

.field private _udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

.field private calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

.field private externalLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;"
        }
    .end annotation
.end field

.field private formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

.field private mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

.field private namedRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/ListValuedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation
.end field

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPictureData;",
            ">;"
        }
    .end annotation
.end field

.field private pivotCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;",
            ">;"
        }
    .end annotation
.end field

.field private pivotTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation
.end field

.field private sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

.field private sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;"
        }
    .end annotation
.end field

.field private stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

.field private workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/io/File;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 3
    invoke-static {p1}, Lorg/apache/poi/util/PackageHelper;->open(Ljava/io/InputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance p1, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v1, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    sget-object p1, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->beforeDocumentRead()V

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetBookViews()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/apache/poi/POIXMLDocument;->openPackage(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 3

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance p1, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v1, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    sget-object p1, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->beforeDocumentRead()V

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/POIXMLDocument;->load(Lorg/apache/poi/POIXMLFactory;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetBookViews()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V
    .locals 3

    .line 6
    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->newPackage(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocument;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance p1, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/udf/UDFFinder;

    sget-object v1, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->DEFAULT:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;-><init>([Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    sget-object p1, Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;->RETURN_NULL_AND_BLANK:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onWorkbookCreate()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    return-object p0
.end method

.method private static addRelation(Lorg/apache/poi/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/POIXMLDocumentPart;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addRelationship(Ljava/net/URI;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->getInstance(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/poi/POIXMLDocumentPart;->addRelation(Ljava/lang/String;Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLDocumentPart;)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/POIXMLException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t clone sheet - unknown relation type found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addSheet(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->addNewSheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method private containsSheet(Ljava/lang/String;I)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_1

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eq p2, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 3

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFName;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getReferencePrintArea(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 13

    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move/from16 v2, p3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    move-object v8, p0

    move/from16 v9, p4

    move v10, p2

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCellRefParts()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ")"

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v0, 0x1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-static {p1, v5, v4}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    add-int/2addr v4, v5

    .line 35
    :try_start_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    nop

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    nop

    .line 47
    :cond_0
    const/4 v4, 0x2

    .line 48
    :goto_0
    add-int/lit8 v0, v4, 0x1

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/2addr v6, v5

    .line 63
    add-int/2addr v6, v3

    .line 64
    const/16 v5, 0x1f

    .line 65
    .line 66
    if-ge v6, v5, :cond_1

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, " ("

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    rsub-int/lit8 v6, v6, 0x1d

    .line 102
    .line 103
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, "("

    .line 111
    .line 112
    invoke-static {v5, v6, v4, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    const/4 v6, -0x1

    .line 121
    if-ne v5, v6, :cond_2

    .line 122
    .line 123
    return-object v4

    .line 124
    :cond_2
    move v4, v0

    .line 125
    goto :goto_0
.end method

.method public static newPackage(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/io/OutputStream;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/TargetMode;->INTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->addRelationship(Lorg/apache/poi/openxml4j/opc/PackagePartName;Lorg/apache/poi/openxml4j/opc/TargetMode;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageProperties()Lorg/apache/poi/openxml4j/opc/PackageProperties;

    move-result-object p0

    const-string v1, "Apache POI"

    invoke-interface {p0, v1}, Lorg/apache/poi/openxml4j/opc/PackageProperties;->setCreatorProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onSheetDelete(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onSheetDelete()V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->removeSheet(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->isSetLocalSheetId()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v4

    int-to-long v6, p1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getLocalSheetId()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private onWorkbookCreate()V
    .locals 3

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewWorkbookPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->setDate1904(Z)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->addNewWorkbookView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getProperties()Lorg/apache/poi/POIXMLProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties$ExtendedProperties;->getUnderlyingProperties()Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;

    move-result-object v0

    const-string v1, "Apache POI"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/officeDocument/x2006/extendedProperties/CTProperties;->setApplication(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/model/StylesTable;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    return-void
.end method

.method private reprocessNamedRanges()V
    .locals 4

    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->getDefinedNameArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    return-object v0
.end method

.method private saveCalculationChain()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/CalculationChain;->getCTCalcChain()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcChain;->sizeOfCArray()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    :cond_0
    return-void
.end method

.method private saveNamedRanges()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->setDefinedNameArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetDefinedNames()V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->setDefinedNames(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;)V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->reprocessNamedRanges()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetDefinedNames()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetDefinedNames()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateActiveSheetAfterSheetReorder(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    :cond_0
    if-ge v0, p1, :cond_1

    if-lt v0, p2, :cond_4

    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    if-le p2, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private updateNamedRangesAfterSheetReorder(II)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-ne v2, p1, :cond_1

    invoke-virtual {v1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_1
    if-gt p2, v2, :cond_2

    if-ge v2, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setSheetIndex(I)V

    goto :goto_0

    :cond_2
    if-ge p1, v2, :cond_0

    if-gt v2, p2, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private validateSheetIndex(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    if-le p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    const-string v1, "(0.."

    .line 16
    .line 17
    const-string v2, ")"

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, -0x1

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    const-string v1, "(no sheets)"

    .line 27
    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "Sheet index ("

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ") is out of range "

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method private validateSheetName(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->containsSheet(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v1, "The workbook already contains a sheet named \'"

    .line 17
    .line 18
    const-string v2, "\'"

    .line 19
    .line 20
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method private workbookProtectionPresent()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetWorkbookProtection()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addOlePackage([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/xl/embeddings/oleObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "application/vnd.openxmlformats-officedocument.oleObject"

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->createPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    invoke-direct {v2, p2, p3, p4, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    add-int/lit16 p1, p1, 0x1f4

    invoke-direct {p2, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v2, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->writeOut(Ljava/io/OutputStream;)V

    new-instance p1, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p3

    new-instance p4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "\u0001Ole10Native"

    invoke-virtual {p3, p2, p4}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    sget-object p2, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    invoke-virtual {p3, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return v1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string p3, "ole object name not recognized"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addPicture(Ljava/io/InputStream;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object p2, v2, p2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v1, v3}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public addPicture([BI)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllPictures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;->RELATIONS:[Lorg/apache/poi/POIXMLRelation;

    aget-object p2, v2, p2

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v1, v3}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addPivotCache(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetPivotCaches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getPivotCaches()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewPivotCaches()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;->addNewPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getPivotTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->setCacheId(J)V

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;->setId(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addToolPack(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method public beforeDocumentRead()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotCaches:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/XLSBUnsupportedException;

    invoke-direct {v0}, Lorg/apache/poi/xssf/XLSBUnsupportedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic cloneSheet(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public cloneSheet(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public cloneSheet(ILjava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 9

    .line 3
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Failed to clone sheet"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getUniqueSheetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetName(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v6

    instance-of v7, v6, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    if-eqz v7, :cond_1

    move-object v4, v6

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    goto :goto_1

    :cond_1
    invoke-static {v5, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addRelation(Lorg/apache/poi/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/POIXMLDocumentPart;)V

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    if-ne v6, v7, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v8, v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->addExternalRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationship;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_4
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->write(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->read(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetLegacyDrawing()Z

    move-result v3

    const/4 v5, 0x5

    if-eqz v3, :cond_5

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "Cloning sheets with comments is not yet supported."

    aput-object v7, v6, v1

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetLegacyDrawing()V

    :cond_5
    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetPageSetup()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "Cloning sheets with page setup is not yet supported."

    aput-object v6, v0, v1

    invoke-virtual {v3, v5, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetPageSetup()V

    :cond_6
    invoke-virtual {p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    if-eqz v4, :cond_8

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetDrawing()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->unsetDrawing()V

    :cond_7
    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v0

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getCTDrawing()Lorg/openxmlformats/schemas/drawingml/x2006/spreadsheetDrawing/CTDrawing;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-static {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addRelation(Lorg/apache/poi/POIXMLDocumentPart$RelationPart;Lorg/apache/poi/POIXMLDocumentPart;)V

    goto :goto_3

    :cond_8
    return-object p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, v2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Lorg/apache/poi/POIXMLException;

    invoke-direct {p2, v2, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public commit()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->saveNamedRanges()V

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->saveCalculationChain()V

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v1, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "workbook"

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2, v1, v0}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getDefinedNames()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedNames;->addNewDefinedName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setLocalSheetId(J)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/poi/POIXMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Builtin ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") already exists for sheet ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->createCellStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;-><init>(Lorg/apache/poi/xssf/model/StylesTable;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->formatter:Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    return-object v0
.end method

.method public createDialogsheet(Ljava/lang/String;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;)Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;

    invoke-direct {p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    return-object p2
.end method

.method public bridge synthetic createFont()Lorg/apache/poi/ss/usermodel/Font;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v0

    return-object v0
.end method

.method public createFont()Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFont;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFFont;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFont;->registerTo(Lorg/apache/poi/xssf/model/StylesTable;)J

    return-object v0
.end method

.method public bridge synthetic createName()Lorg/apache/poi/ss/usermodel/Name;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createName()Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public createName()Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 2

    .line 2
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->setName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createAndStoreName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public createSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sheet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-static {v2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 8

    .line 9
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->addSheet(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v4, v4, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    int-to-long v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v3, v2}, Lorg/apache/poi/POIXMLRelation;->getFileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/POIXMLDocumentPart;

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;IZ)Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput-object p1, v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setId(Ljava/lang/String;)V

    int-to-long v1, v2

    invoke-interface {p1, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setSheetId(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v3, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sheetName must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p1

    return-object p1
.end method

.method public findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 10

    .line 2
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/apache/poi/xssf/model/StylesTable;->findFont(ZSSLjava/lang/String;ZZSB)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object v1

    return-object v1
.end method

.method public getActiveSheetIndex()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->getActiveTab()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getAllEmbedds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v4}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v2}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getAllNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPictures()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPictureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v0

    const-string v1, "/xl/media/.*?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByName(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    invoke-direct {v3, v1}, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    return-object v0
.end method

.method public getCalculationChain()Lorg/apache/poi/xssf/model/CalculationChain;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    return-object v0
.end method

.method public bridge synthetic getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getCellStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getCreationHelper()Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_creationHelper:Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;

    return-object v0
.end method

.method public getCustomXMLMappings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/xssf/usermodel/XSSFMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/MapInfo;->getAllXSSFMaps()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getExternalLinksTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/model/ExternalLinksTable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    return-object v0
.end method

.method public getFirstVisibleTab()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->getFirstSheet()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public bridge synthetic getFontAt(S)Lorg/apache/poi/ss/usermodel/Font;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getFontAt(S)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p1

    return-object p1
.end method

.method public getFontAt(S)Lorg/apache/poi/xssf/usermodel/XSSFFont;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->getFontAt(I)Lorg/apache/poi/xssf/usermodel/XSSFFont;

    move-result-object p1

    return-object p1
.end method

.method public getForceFormulaRecalculation()Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMapInfo()Lorg/apache/poi/xssf/model/MapInfo;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    return-object v0
.end method

.method public getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-object v0
.end method

.method public bridge synthetic getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    return-object p1
.end method

.method public bridge synthetic getNameAt(I)Lorg/apache/poi/ss/usermodel/Name;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    return-object p1
.end method

.method public getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    return-object p1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Specified name index "

    const-string v4, " is outside the allowable range (0.."

    .line 2
    invoke-static {p1, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There are no defined names in this workbook"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getName(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNumCellStyles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v0

    return v0
.end method

.method public getNumberOfFonts()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getFonts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumberOfNames()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPivotTables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    return-object v0
.end method

.method public getPrintArea(I)Ljava/lang/String;
    .locals 1

    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSharedStringSource()Lorg/apache/poi/xssf/model/SharedStringsTable;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    return-object v0
.end method

.method public bridge synthetic getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheet(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object p1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetVisibility(I)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p1

    :cond_0
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p1

    :cond_1
    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p1, v0, :cond_2

    sget-object p1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This should never happen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    return-object v0
.end method

.method public getTable(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFTable;
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTheme()Lorg/apache/poi/xssf/model/ThemesTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getTheme()Lorg/apache/poi/xssf/model/ThemesTable;

    move-result-object v0

    return-object v0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_udfFinder:Lorg/apache/poi/ss/formula/udf/IndexedUDFFinder;

    return-object v0
.end method

.method public getWorkbookType()Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSX:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    :goto_0
    return-object v0
.end method

.method public isDate1904()Z
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookPr;->getDate1904()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHidden()Z
    .locals 2
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMacroEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRevisionLocked()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockRevision()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheetHidden(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSheetVeryHidden(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isStructureLocked()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockStructure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWindowsLocked()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->getLockWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not Implemented - see bug #57184"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lockRevision()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockRevision(Z)V

    return-void
.end method

.method public lockStructure()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockStructure(Z)V

    return-void
.end method

.method public lockWindows()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockWindows(Z)V

    return-void
.end method

.method public onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/xssf/model/CalculationChain;->removeItem(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDocumentRead()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/WorkbookDocument;->getWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationParts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getDocumentPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v7

    instance-of v8, v7, Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-eqz v8, :cond_1

    check-cast v7, Lorg/apache/poi/xssf/model/SharedStringsTable;

    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    instance-of v8, v7, Lorg/apache/poi/xssf/model/StylesTable;

    if-eqz v8, :cond_2

    check-cast v7, Lorg/apache/poi/xssf/model/StylesTable;

    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_0

    :cond_2
    instance-of v8, v7, Lorg/apache/poi/xssf/model/ThemesTable;

    if-eqz v8, :cond_3

    check-cast v7, Lorg/apache/poi/xssf/model/ThemesTable;

    move-object v5, v7

    goto :goto_0

    :cond_3
    instance-of v8, v7, Lorg/apache/poi/xssf/model/CalculationChain;

    if-eqz v8, :cond_4

    check-cast v7, Lorg/apache/poi/xssf/model/CalculationChain;

    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->calcChain:Lorg/apache/poi/xssf/model/CalculationChain;

    goto :goto_0

    :cond_4
    instance-of v8, v7, Lorg/apache/poi/xssf/model/MapInfo;

    if-eqz v8, :cond_5

    check-cast v7, Lorg/apache/poi/xssf/model/MapInfo;

    iput-object v7, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->mapInfo:Lorg/apache/poi/xssf/model/MapInfo;

    goto :goto_0

    :cond_5
    instance-of v8, v7, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v7, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    instance-of v8, v7, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lorg/apache/poi/POIXMLDocumentPart$RelationPart;->getRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v7, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPackageAccess()Lorg/apache/poi/openxml4j/opc/PackageAccess;

    move-result-object v4

    sget-object v6, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    if-ne v4, v6, :cond_8

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    if-nez v6, :cond_a

    if-eqz v4, :cond_9

    new-instance v6, Lorg/apache/poi/xssf/model/StylesTable;

    invoke-direct {v6}, Lorg/apache/poi/xssf/model/StylesTable;-><init>()V

    :goto_2
    iput-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_3

    :cond_9
    sget-object v6, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/xssf/model/StylesTable;

    goto :goto_2

    :cond_a
    :goto_3
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6, p0}, Lorg/apache/poi/xssf/model/StylesTable;->setWorkbook(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->stylesSource:Lorg/apache/poi/xssf/model/StylesTable;

    invoke-virtual {v6, v5}, Lorg/apache/poi/xssf/model/StylesTable;->setTheme(Lorg/apache/poi/xssf/model/ThemesTable;)V

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    if-nez v5, :cond_c

    if-eqz v4, :cond_b

    new-instance v4, Lorg/apache/poi/xssf/model/SharedStringsTable;

    invoke-direct {v4}, Lorg/apache/poi/xssf/model/SharedStringsTable;-><init>()V

    :goto_4
    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sharedStringSource:Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_5

    :cond_b
    sget-object v4, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/model/SharedStringsTable;

    goto :goto_4

    :cond_c
    :goto_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v4

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_d

    aget-object v7, v4, v6

    invoke-virtual {p0, v2, v7}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->parseSheet(Ljava/util/Map;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V

    add-int/2addr v6, v1

    goto :goto_6

    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetExternalReferences()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getExternalReferences()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReferences;->getExternalReferenceArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_f

    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    if-nez v7, :cond_e

    sget-object v7, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExternalLinksTable with r:id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalReference;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " was defined, but didn\'t exist in package, skipping"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v0

    const/4 v6, 0x5

    invoke-virtual {v7, v6, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    iget-object v6, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->externalLinks:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v5, v1

    goto :goto_7

    :cond_f
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->reprocessNamedRanges()V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_9
    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseSheet(Ljava/util/Map;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFSheet;",
            ">;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sheet with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and r:id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was defined, but didn\'t exist in package, skipping"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p2, p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onDocumentRead()V

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeName(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNameAt(I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    return-void
.end method

.method public removeName(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/collections4/ListValuedMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/usermodel/Name;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Named range was not found: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeName(Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name was not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePrintArea(I)V
    .locals 1

    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    :cond_0
    return-void
.end method

.method public removeSheetAt(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onSheetDelete(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/POIXMLDocumentPart;->removeRelation(Lorg/apache/poi/POIXMLDocumentPart;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getActiveSheetIndex()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    goto :goto_1

    :cond_2
    if-le v1, p1, :cond_3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setActiveSheet(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setActiveSheet(I)V
    .locals 6

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setActiveTab(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getBookViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookViews;->getWorkbookViewArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBookView;->setFirstSheet(J)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCTWorkbook()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->isSetCalcPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->addNewCalcPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    move-result-object v0

    :goto_0
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcId(J)V

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    move-result-object p1

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->MANUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    if-ne p1, v1, :cond_1

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;->AUTO:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V

    :cond_1
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->_missingCellPolicy:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    return-void
.end method

.method public setPivotTables(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->pivotTables:Ljava/util/List;

    return-void
.end method

.method public setPrintArea(IIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getReferencePrintArea(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setPrintArea(ILjava/lang/String;)V

    return-void
.end method

.method public setPrintArea(ILjava/lang/String;)V
    .locals 4

    .line 2
    const-string v0, "_xlnm.Print_Area"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createBuiltInName(Ljava/lang/String;I)Lorg/apache/poi/xssf/usermodel/XSSFName;

    move-result-object v1

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    return-void
.end method

.method public setRevisionsPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string v1, "revisions"

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedTab(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSheetHidden(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetState(I)V

    invoke-static {}, Lorg/apache/poi/ss/usermodel/SheetVisibility;->values()[Lorg/apache/poi/ss/usermodel/SheetVisibility;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setSheetHidden(IZ)V
    .locals 0

    .line 2
    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V

    return-void
.end method

.method public setSheetName(ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->containsSheet(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;

    invoke-direct {v1, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    invoke-virtual {v1, p1, v0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateSheetName(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setName(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The workbook already contains a sheet of this name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sheetName must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSheetOrder(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->getSheets()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->removeSheet(I)V

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->insertNewSheet(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheets;->getSheetArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    aget-object v3, v0, v1

    iput-object v3, v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateNamedRangesAfterSheetReorder(II)V

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->updateActiveSheetAfterSheetReorder(II)V

    return-void
.end method

.method public setSheetVisibility(ILorg/apache/poi/ss/usermodel/SheetVisibility;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->validateSheetIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->sheets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object p1, p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$1;->$SwitchMap$org$apache$poi$ss$usermodel$SheetVisibility:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VERY_HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    :goto_0
    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->setState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This should never happen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->HIDDEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState;->VISIBLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSheetState$Enum;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setVBAProject(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->XLSM:Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setWorkbookType(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V

    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLRelation;->getDefaultFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocument;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->containPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lorg/apache/poi/xssf/usermodel/XSSFFactory;->getInstance()Lorg/apache/poi/xssf/usermodel/XSSFFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/POIXMLDocumentPart;->createRelationship(Lorg/apache/poi/POIXMLRelation;Lorg/apache/poi/POIXMLFactory;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setVBAProject(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocument;->getCorePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/POIXMLRelation;->getContents(Lorg/apache/poi/openxml4j/opc/PackagePart;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->setVBAProject(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method

.method public setWorkbookPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string v1, "workbook"

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->setPassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;Ljava/lang/String;)V

    return-void
.end method

.method public setWorkbookType(Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbookType;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/POIXMLException;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sheetIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook$SheetIterator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0
.end method

.method public unLock()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbook:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbook;->unsetWorkbookProtection()V

    :cond_0
    return-void
.end method

.method public unLockRevision()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockRevision(Z)V

    return-void
.end method

.method public unLockStructure()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockStructure(Z)V

    return-void
.end method

.method public unLockWindows()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;->setLockWindows(Z)V

    return-void
.end method

.method public updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->namedRangesByName:Lorg/apache/commons/collections4/ListValuedMap;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name was not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public validateRevisionsPassword(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string v1, "revisions"

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public validateWorkbookPassword(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->workbookProtectionPresent()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->safeGetWorkbookProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorkbookProtection;

    move-result-object v0

    const-string v1, "workbook"

    invoke-static {v0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFPasswordHelper;->validatePassword(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
