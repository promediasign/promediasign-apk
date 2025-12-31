.class public Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;
.super Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field public static final SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;


# instance fields
.field private handleHyperlinksInCells:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->SUPPORTED_TYPES:[Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

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

    const-string v2, "  XSSFBEventBasedExcelExtractor <filename.xlsb>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->close()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 17

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->getXSSFBStylesTable()Lorg/apache/poi/xssf/binary/XSSFBStylesTable;

    move-result-object v12

    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;

    invoke-direct {v15, v7}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;-><init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V

    :goto_0
    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeSheetNames()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_0
    :goto_1
    iget-boolean v1, v7, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetPart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/binary/XSSFBHyperlinksTable;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeCellComments()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetIterator;->getXSSFBSheetComments()Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, v11

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v12

    move-object v5, v0

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeHeadersFooters()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v15, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderText(Ljava/lang/StringBuffer;)V

    :cond_3
    invoke-virtual {v15, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendCellText(Ljava/lang/StringBuffer;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeTextBoxes()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processShapes(Ljava/util/List;Ljava/lang/StringBuffer;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getIncludeHeadersFooters()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v15, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendFooterText(Ljava/lang/StringBuffer;)V

    :cond_5
    invoke-virtual {v15}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->reset()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_6
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v10, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v11

    :goto_4
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v10, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v11

    :goto_5
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v10, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v11
.end method

.method public processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getFormulasNotResults()Z

    move-result v9

    move-object v2, v0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/xssf/binary/XSSFBSheetHandler;-><init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/binary/XSSFBStylesTable;Lorg/apache/poi/xssf/binary/XSSFBCommentsTable;Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;->parse()V

    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not currently supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHandleHyperlinksInCells(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFBEventBasedExcelExtractor;->handleHyperlinksInCells:Z

    return-void
.end method
