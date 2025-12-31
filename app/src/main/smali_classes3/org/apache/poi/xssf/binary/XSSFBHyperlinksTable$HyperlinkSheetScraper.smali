.class Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HyperlinkSheetScraper"
.end annotation


# instance fields
.field private hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field final synthetic this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

.field private final xlWideStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-static {}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->access$100()Ljava/util/BitSet;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;Ljava/util/BitSet;)V

    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    invoke-direct {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 8

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtHLink:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->parse([BILorg/apache/poi/xssf/binary/XSSFBCellRange;)Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {p2, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLNullableWideString([BILjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p2, p1, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p2, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p2, v2, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    iget v0, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstRow:I

    iget v1, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastRow:I

    iget v2, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->firstCol:I

    iget p2, p2, Lorg/apache/poi/xssf/binary/XSSFBCellRange;->lastCol:I

    invoke-direct {v3, v0, v1, v2, p2}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-static {p2}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->access$200(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, p2

    :goto_1
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable$HyperlinkSheetScraper;->this$0:Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;->access$300(Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/xssf/binary/XSSFHyperlinkRecord;-><init>(Lorg/apache/poi/ss/util/CellRangeAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
