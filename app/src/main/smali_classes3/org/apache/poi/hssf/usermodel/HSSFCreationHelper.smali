.class public Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/CreationHelper;


# instance fields
.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-void
.end method


# virtual methods
.method public createAreaReference(Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createAreaReference(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public createClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createClientAnchor()Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createClientAnchor()Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createDataFormat()Lorg/apache/poi/ss/usermodel/DataFormat;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createDataFormat()Lorg/apache/poi/hssf/usermodel/HSSFDataFormat;

    move-result-object v0

    return-object v0
.end method

.method public createExtendedColor()Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    new-instance v1, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    return-object v0
.end method

.method public bridge synthetic createExtendedColor()Lorg/apache/poi/ss/usermodel/ExtendedColor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createExtendedColor()Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method public createFormulaEvaluator()Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method public bridge synthetic createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createFormulaEvaluator()Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    move-result-object v0

    return-object v0
.end method

.method public createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/common/usermodel/HyperlinkType;)V

    return-object v0
.end method

.method public bridge synthetic createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createHyperlink(Lorg/apache/poi/common/usermodel/HyperlinkType;)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCreationHelper;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object p1

    return-object p1
.end method
