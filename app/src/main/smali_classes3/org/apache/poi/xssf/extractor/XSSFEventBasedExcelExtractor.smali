.class public Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;
.super Lorg/apache/poi/POIXMLTextExtractor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;


# instance fields
.field private concatenatePhoneticRuns:Z

.field private container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private formulasNotResults:Z

.field private includeCellComments:Z

.field private includeHeadersFooters:Z

.field private includeSheetNames:Z

.field private includeTextBoxes:Z

.field private locale:Ljava/util/Locale;

.field private properties:Lorg/apache/poi/POIXMLProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIXMLTextExtractor;-><init>(Lorg/apache/poi/POIXMLDocument;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    iput-boolean v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    iput-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    new-instance v0, Lorg/apache/poi/POIXMLProperties;

    invoke-direct {v0, p1}, Lorg/apache/poi/POIXMLProperties;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/POIXMLTextExtractor;->checkMaxTextSize(Ljava/lang/StringBuffer;Ljava/lang/String;)V

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

    const-string v2, "  XSSFEventBasedExcelExtractor <filename.xlsx>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->close()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/POIXMLTextExtractor;->close()V

    return-void
.end method

.method public getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCoreProperties()Lorg/apache/poi/POIXMLProperties$CoreProperties;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getCustomProperties()Lorg/apache/poi/POIXMLProperties$CustomProperties;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->properties:Lorg/apache/poi/POIXMLProperties;

    invoke-virtual {v0}, Lorg/apache/poi/POIXMLProperties;->getExtendedProperties()Lorg/apache/poi/POIXMLProperties$ExtendedProperties;

    move-result-object v0

    return-object v0
.end method

.method public getFormulasNotResults()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    return v0
.end method

.method public getIncludeCellComments()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return v0
.end method

.method public getIncludeHeadersFooters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return v0
.end method

.method public getIncludeSheetNames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    return v0
.end method

.method public getIncludeTextBoxes()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 17

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x5

    const/4 v11, 0x0

    :try_start_0
    new-instance v0, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;

    iget-object v1, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-boolean v2, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Z)V

    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;

    iget-object v2, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-direct {v1, v2}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getStylesTable()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v12

    invoke-virtual {v1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader;->getSheetsData()Ljava/util/Iterator;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;

    invoke-direct {v15, v7}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;-><init>(Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;)V

    :goto_0
    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->next()Ljava/io/InputStream;

    move-result-object v16

    iget-boolean v1, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

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
    iget-boolean v1, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getSheetComments()Lorg/apache/poi/xssf/model/CommentsTable;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    :cond_1
    move-object v4, v11

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v12

    move-object v5, v0

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Ljava/io/InputStream;)V

    iget-boolean v1, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    if-eqz v1, :cond_2

    invoke-virtual {v15, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendHeaderText(Ljava/lang/StringBuffer;)V

    :cond_2
    invoke-virtual {v15, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendCellText(Ljava/lang/StringBuffer;)V

    iget-boolean v1, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    if-eqz v1, :cond_3

    invoke-virtual {v13}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$SheetIterator;->getShapes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->processShapes(Ljava/util/List;Ljava/lang/StringBuffer;)V

    :cond_3
    iget-boolean v1, v7, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    if-eqz v1, :cond_4

    invoke-virtual {v15, v14}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->appendFooterText(Ljava/lang/StringBuffer;)V

    :cond_4
    invoke-virtual {v15}, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor$SheetTextExtractor;->reset()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_5
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v10, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v11

    :goto_4
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v10, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v11

    :goto_5
    sget-object v1, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->LOGGER:Lorg/apache/poi/util/POILogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v8

    invoke-virtual {v1, v10, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v11
.end method

.method public processShapes(Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFShape;

    instance-of v1, v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSimpleShape;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public processSheet(Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Ljava/io/InputStream;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    iget-object v1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/SAXHelper;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p5

    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;

    iget-boolean v8, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    move-object v2, v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler;-><init>(Lorg/apache/poi/xssf/model/StylesTable;Lorg/apache/poi/xssf/model/CommentsTable;Lorg/apache/poi/xssf/eventusermodel/ReadOnlySharedStringsTable;Lorg/apache/poi/xssf/eventusermodel/XSSFSheetXMLHandler$SheetContentsHandler;Lorg/apache/poi/ss/usermodel/DataFormatter;Z)V

    invoke-interface {p5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p5, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "SAX parser appears to be broken - "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setConcatenatePhoneticRuns(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->concatenatePhoneticRuns:Z

    return-void
.end method

.method public setFormulasNotResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->formulasNotResults:Z

    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeCellComments:Z

    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeHeadersFooters:Z

    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeSheetNames:Z

    return-void
.end method

.method public setIncludeTextBoxes(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->includeTextBoxes:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/extractor/XSSFEventBasedExcelExtractor;->locale:Ljava/util/Locale;

    return-void
.end method
