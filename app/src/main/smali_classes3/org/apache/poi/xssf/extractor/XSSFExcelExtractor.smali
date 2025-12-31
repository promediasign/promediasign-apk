.class public Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# static fields
.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;


# instance fields
.field private formulasNotResults:Z

.field private includeCellComments:Z

.field private includeHeadersFooters:Z

.field private includeSheetNames:Z

.field private includeTextBoxes:Z

.field private locale:Ljava/util/Locale;

.field private workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method

.method private extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleNonStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V
    .locals 3

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result p2

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v2, p2, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRawValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method private handleStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 0

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "  XSSFExcelExtractor <filename.xlsx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->create(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    :try_start_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    throw p0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast v3, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    const-string v5, "\n"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getEvenHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v6}, Lorg/apache/poi/ss/usermodel/Row;->cellIterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v9, v10, :cond_7

    iget-boolean v9, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->formulasNotResults:Z

    if-eqz v9, :cond_5

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v1, v9}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v9, v10, :cond_6

    :goto_4
    invoke-direct {p0, v1, v8}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;)V

    goto :goto_5

    :cond_6
    invoke-direct {p0, v1, v8, v0}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->handleNonStringCell(Ljava/lang/StringBuffer;Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/DataFormatter;)V

    goto :goto_5

    :cond_7
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v9

    sget-object v10, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v9, v10, :cond_6

    goto :goto_4

    :goto_5
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Cell;->getCellComment()Lorg/apache/poi/ss/usermodel/Comment;

    move-result-object v8

    iget-boolean v9, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeCellComments:Z

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Comment;->getString()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v1, v9}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v10, " Comment by "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Comment;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "\t"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_a
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    instance-of v6, v5, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    if-eqz v6, :cond_b

    check-cast v5, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {v5}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_c
    iget-boolean v4, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFirstFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getOddFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getEvenFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->formulasNotResults:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeCellComments:Z

    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeHeadersFooters:Z

    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeSheetNames:Z

    return-void
.end method

.method public setIncludeTextBoxes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->includeTextBoxes:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFExcelExtractor;->locale:Ljava/util/Locale;

    return-void
.end method
