.class public Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-direct {p0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->createDefaultValues()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->readFrom(Ljava/io/InputStream;)V

    return-void
.end method

.method private createDefaultValues()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setCreatedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setMinRefreshableVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedVersion(S)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const-string v1, "Apache POI"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedBy(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshedDate(D)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->setRefreshOnLoad(Z)V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v2, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pivotCacheDefinition"

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v2, v0, v1}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public createCacheFields(Lorg/apache/poi/ss/usermodel/Sheet;)V
    .locals 6

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getFirstCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/AreaReference;->getLastCell()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->addNewCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;

    move-result-object v1

    :goto_0
    if-gt v2, v0, :cond_2

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->addNewCacheField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;

    move-result-object v3

    if-ne v2, v0, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->sizeOfCacheFieldArray()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;->setCount(J)V

    :cond_1
    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->setNumFmtId(J)V

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {v4, v5}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->setName(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheField;->addNewSharedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCTPivotCacheDefinition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    return-object v0
.end method

.method public getPivotArea(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->getCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;->getWorksheetSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getRef()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Pivot cache must reference an area, named range, or table."

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 33
    .line 34
    new-instance p1, Lorg/apache/poi/ss/util/AreaReference;

    .line 35
    .line 36
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 37
    .line 38
    invoke-direct {p1, v1, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Name;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    new-instance p1, Lorg/apache/poi/ss/util/AreaReference;

    .line 49
    .line 50
    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Name;->getRefersToFormula()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 55
    .line 56
    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_3
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->getSheet()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTables()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    new-instance p1, Lorg/apache/poi/ss/util/AreaReference;

    .line 101
    .line 102
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getStartCellReference()Lorg/apache/poi/ss/util/CellReference;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFTable;->getEndCellReference()Lorg/apache/poi/ss/util/CellReference;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 111
    .line 112
    invoke-direct {p1, v1, v0, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    const-string v0, "Name \'"

    .line 119
    .line 120
    const-string v1, "\' was not found."

    .line 121
    .line 122
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    sget-object v1, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setLoadReplaceDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;->ctPivotCacheDefinition:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
