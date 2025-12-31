.class public Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CreationHelper;


# instance fields
.field private final workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method


# virtual methods
.method public createAreaReference(Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createAreaReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public bridge synthetic createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createClientAnchor()Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    invoke-direct {v0}, Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->createDataFormat()Lorg/apache/poi/xssf/usermodel/XSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createExtendedColor()Lorg/apache/poi/ss/usermodel/ExtendedColor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createExtendedColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public createExtendedColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFColor;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/xssf/model/StylesTable;->getIndexedColors()Lorg/apache/poi/xssf/usermodel/IndexedColorMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFColor;-><init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;Lorg/apache/poi/xssf/usermodel/IndexedColorMap;)V

    return-object v0
.end method

.method public bridge synthetic createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public createFormulaEvaluator()Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;-><init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V

    return-object v0
.end method

.method public bridge synthetic createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object p1

    return-object p1
.end method

.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFCreationHelper;->workbook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->setStylesTableReference(Lorg/apache/poi/xssf/model/StylesTable;)V

    return-object v0
.end method
