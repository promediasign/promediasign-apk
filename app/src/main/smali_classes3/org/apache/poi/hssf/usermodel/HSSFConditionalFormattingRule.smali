.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;


# instance fields
.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pRuleRecord must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pSheet must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setBorderFormatting(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V

    :cond_1
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object p1
.end method

.method private getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t convert a CF into a CF12 record"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getColorScaleFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    :cond_2
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object p1
.end method

.method private getDataBarFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    :cond_2
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object p1
.end method

.method private getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFontFormatting(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V

    :cond_1
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object p1
.end method

.method private getMultiStateFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    :cond_2
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object p1
.end method

.method private getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;-><init>()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setPatternFormatting(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V

    :cond_1
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleBase;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object p1
.end method

.method public static toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/lang/String;
    .locals 1

    .line 2
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public createBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createColorScaleFormatting()Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getColorScaleFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createDataBarFormatting()Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getDataBarFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createMultiStateFormatting()Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getMultiStateFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    return-object v0
.end method

.method public getColorScaleFormatting()Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getColorScaleFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getColorScaleFormatting()Lorg/apache/poi/ss/usermodel/ColorScaleFormatting;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getColorScaleFormatting()Lorg/apache/poi/hssf/usermodel/HSSFColorScaleFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getComparisonOperation()B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v0

    return v0
.end method

.method public getConditionFilterType()Lorg/apache/poi/ss/usermodel/ConditionFilterType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionFilterType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionFilterType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getConditionType()Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ConditionType;->forId(B)Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object v0

    return-object v0
.end method

.method public getDataBarFormatting()Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getDataBarFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataBarFormatting()Lorg/apache/poi/ss/usermodel/DataBarFormatting;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getDataBarFormatting()Lorg/apache/poi/hssf/usermodel/HSSFDataBarFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getFilterConfiguration()Lorg/apache/poi/ss/usermodel/ConditionFilterData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getMultiStateFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMultiStateFormatting()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getMultiStateFormatting()Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCFRule12Record(Z)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getPriority()I

    move-result v0

    return v0
.end method

.method public getStopIfTrue()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getStripeSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
