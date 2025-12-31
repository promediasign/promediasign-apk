.class public Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PatternFormatting;


# instance fields
.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

.field private final patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-void
.end method


# virtual methods
.method public getFillBackgroundColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillBackgroundColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillBackgroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFillBackgroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillBackgroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillForegroundColor()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillForegroundColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillForegroundColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFillForegroundColorColor()Lorg/apache/poi/ss/usermodel/Color;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->getFillForegroundColorColor()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getFillPattern()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillPattern()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPatternFormattingBlock()Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-object v0
.end method

.method public setFillBackgroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->setFillBackgroundColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setFillBackgroundColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillBackgroundColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternBackgroundColorModified(Z)V

    :cond_0
    return-void
.end method

.method public setFillForegroundColor(Lorg/apache/poi/ss/usermodel/Color;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->setFillForegroundColor(S)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillForegroundColor(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternColorModified(Z)V

    :cond_0
    return-void
.end method

.method public setFillPattern(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillPattern(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternStyleModified(Z)V

    :cond_0
    return-void
.end method
