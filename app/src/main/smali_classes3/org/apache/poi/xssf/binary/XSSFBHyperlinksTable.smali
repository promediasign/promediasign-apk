.class public Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;,
        Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final RECORDS:Ljava/util/BitSet;


# instance fields
.field private final hyperlinkRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private relIdToHyperlink:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->RECORDS:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->relIdToHyperlink:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->loadUrlsFromSheetRels(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;-><init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/BitSet;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->RECORDS:Ljava/util/BitSet;

    return-object v0
.end method

.method public static synthetic access$200(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->relIdToHyperlink:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    return-object p0
.end method

.method private loadUrlsFromSheetRels(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLRelation;->getRelation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->relIdToHyperlink:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public findHyperlinkRecord(Lorg/apache/poi/ss/util/CellAddress;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/poi/ss/util/CellRangeUtil;->intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getHyperLinks()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$TopLeftCellAddressComparator;-><init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->hyperlinkRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    new-instance v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
