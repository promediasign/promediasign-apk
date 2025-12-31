.class public Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/binary/XSSFBSheetHandler$SheetContentsHandler;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

.field private final comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

.field private currentRow:I

.field private final dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

.field private final formulasNotResults:Z

.field private final handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

.field private hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

.field private lastEndedRow:I

.field private lastStartedRow:I

.field private rkBuffer:[B

.field private final stringsTable:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

.field private final styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

.field private xlWideStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->hyperlinkCellRange:Lorg/apache/poi/xssf/binary/XSSFBCellRange;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-direct {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    iput-object p3, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    iput-object p4, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->stringsTable:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    iput-object p5, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    iput-object p6, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    iput-boolean p7, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formulasNotResults:Z

    return-void
.end method

.method private beforeCellValue([B)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->parse([BIILorg/apache/poi/xssf/binary/XSSFBCellHeader;)V

    iget p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getColNum()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(II)V

    return-void
.end method

.method private checkMissedComments(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->getAddresses()Ljava/util/Queue;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    if-eq p1, v1, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v3

    if-ge v3, p1, :cond_3

    :cond_1
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->startRow(I)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkMissedComments(II)V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->getAddresses()Ljava/util/Queue;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-ge v2, p2, :cond_2

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellAddress;

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v2

    if-ne v2, p1, :cond_4

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result v2

    if-le v2, p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v1

    if-le v1, p1, :cond_1

    :cond_5
    return-void
.end method

.method private dumpEmptyCellComment(Lorg/apache/poi/ss/util/CellAddress;Lorg/apache/poi/xssf/binary/XSSFBComment;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method private endRow(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->endRow(I)V

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    return-void
.end method

.method private formatVal(DI)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-virtual {v0, p3}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->styles:Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    invoke-virtual {v1, p3}, Lorg/apache/poi/xssf/binary/XSSFBStylesTable;->getNumberFormatIndex(I)S

    move-result p3

    if-nez v0, :cond_0

    const/4 p3, 0x0

    invoke-static {p3}, Lorg/apache/poi/ss/usermodel/BuiltinFormats;->getBuiltinFormat(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->dataFormatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleBoolean([B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    aget-byte p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "TRUE"

    goto :goto_0

    :cond_0
    const-string p1, "FALSE"

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleBrtCellIsst([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result p1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->stringsTable:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->getEntryAt(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellError([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const-string p1, "ERROR"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellReal([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellRk([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkNumber([BI)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellSt([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleCellValue(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/util/CellAddress;

    iget v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getColNum()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->comments:Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;->get(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/binary/XSSFBComment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellAddress;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1, v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->cell(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/xssf/usermodel/XSSFComment;)V

    return-void
.end method

.method private handleFmlaError([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    const-string p1, "ERROR"

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleFmlaNum([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v0

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->cellBuffer:Lorg/apache/poi/xssf/binary/XSSFBCellHeader;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->getStyleIdx()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->formatVal(DI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleFmlaString([B)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget v0, Lorg/apache/poi/xssf/binary/XSSFBCellHeader;->length:I

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->xlWideStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellValue(Ljava/lang/String;)V

    return-void
.end method

.method private handleHeaderFooter([B)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->parse([B)Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeader()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooter()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeaderEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooterEven()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getHeaderFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooters;->getFooterFirst()Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V

    return-void
.end method

.method private outputHeaderFooter(Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->isHeader()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBHeaderFooter;->getHeaderFooterTypeLabel()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->headerFooter(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rkNumber([BI)D
    .locals 7

    aget-byte v0, p1, p2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    shr-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v3

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iget-object v4, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    const/4 v5, 0x4

    aput-byte v0, v4, v5

    :goto_1
    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    add-int/lit8 v4, v3, 0x4

    add-int v6, p2, v3

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->rkBuffer:[B

    if-eqz v2, :cond_3

    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->getDouble([B)D

    move-result-wide p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result p1

    int-to-double p1, p1

    :goto_2
    if-eqz v1, :cond_4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    :cond_4
    return-wide p1
.end method

.method private startRow(I)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastEndedRow:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->endRow(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handler:Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;

    invoke-interface {v0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;->startRow(I)V

    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleHeaderFooter([B)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    const/4 p1, -0x1

    .line 22
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(I)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->lastStartedRow:I

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->endRow(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaError([B)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaNum([B)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_4
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleFmlaString([B)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_5
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->beforeCellValue([B)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_6
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellError([B)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_7
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleBoolean([B)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_8
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellReal([B)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_9
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellRk([B)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_a
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleCellSt([B)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_b
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->handleBrtCellIsst([B)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_c
    const/4 p1, 0x0

    .line 72
    invoke-static {p2, p1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 73
    .line 74
    .line 75
    move-result-wide p1

    .line 76
    invoke-static {p1, p2}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/high16 p2, 0x100000

    .line 81
    .line 82
    if-gt p1, p2, :cond_0

    .line 83
    .line 84
    iput p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    .line 85
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->checkMissedComments(I)V

    .line 87
    .line 88
    .line 89
    iget p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->currentRow:I

    .line 90
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;->startRow(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance p2, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 96
    .line 97
    const-string v0, "Row number beyond allowable range: "

    .line 98
    .line 99
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p2

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
