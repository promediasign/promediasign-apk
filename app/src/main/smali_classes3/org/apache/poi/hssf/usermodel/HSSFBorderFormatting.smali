.class public final Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/BorderFormatting;


# instance fields
.field private final borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    return-void
.end method


# virtual methods
.method public getBorderBottom()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderBottomEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderDiagonal()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderDiagonal()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderDiagonalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderDiagonal()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderFormattingBlock()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    return-object v0
.end method

.method public getBorderHorizontalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderLeftEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderRight()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderRightEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderTop()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderTopEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/BorderStyle;->valueOf(S)Lorg/apache/poi/ss/usermodel/BorderStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBorderVerticalEnum()Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBottomBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBottomBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getBottomBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagonalBorderColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getDiagonalBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getDiagonalBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getDiagonalBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDiagonalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getDiagonalBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalBorderColor()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    return v0
.end method

.method public getHorizontalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getLeftBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLeftBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getLeftBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getRightBorderColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRightBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRightBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getRightBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopBorderColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getTopBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTopBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->getTopBorderColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalBorderColor()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v0

    return v0
.end method

.method public getVerticalBorderColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AUTOMATIC:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public isBackwardDiagonalOn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isBackwardDiagonalOn()Z

    move-result v0

    return v0
.end method

.method public isForwardDiagonalOn()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isForwardDiagonalOn()Z

    move-result v0

    return v0
.end method

.method public setBackwardDiagonalOn(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBackwardDiagonalOn(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    :cond_0
    return-void
.end method

.method public setBorderBottom(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderBottom(S)V

    return-void
.end method

.method public setBorderBottom(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderBottom(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBorderDiagonal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderDiagonal(S)V

    return-void
.end method

.method public setBorderDiagonal(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderDiagonal(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBorderHorizontal(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    return-void
.end method

.method public setBorderLeft(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderLeft(S)V

    return-void
.end method

.method public setBorderLeft(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderLeft(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setLeftBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBorderRight(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderRight(S)V

    return-void
.end method

.method public setBorderRight(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderRight(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setRightBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBorderTop(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/BorderStyle;->getCode()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBorderTop(S)V

    return-void
.end method

.method public setBorderTop(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderTop(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBorderVertical(Lorg/apache/poi/ss/usermodel/BorderStyle;)V
    .locals 0

    return-void
.end method

.method public setBottomBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setBottomBorderColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBottomBorderColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setDiagonalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setDiagonalBorderColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setDiagonalBorderColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setDiagonalBorderColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopLeftBottomRightBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setForwardDiagonalOn(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setForwardDiagonalOn(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBottomLeftTopRightBorderModified(Z)V

    :cond_0
    return-void
.end method

.method public setHorizontalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setHorizontalBorderColor(S)V
    .locals 0

    .line 2
    return-void
.end method

.method public setLeftBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setLeftBorderColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setLeftBorderColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setLeftBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setRightBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setRightBorderColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setRightBorderColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setRightBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setTopBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->setTopBorderColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setTopBorderColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setTopBorderModified(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setVerticalBorderColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVerticalBorderColor(S)V
    .locals 0

    .line 2
    return-void
.end method
