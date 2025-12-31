.class public final Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;


# instance fields
.field private final _conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getConditionalFormattingTable()Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    return-void
.end method


# virtual methods
.method public addConditionalFormatting(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getCFRecordsAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting(Lorg/apache/poi/ss/usermodel/ConditionalFormatting;)I
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 2

    .line 3
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 2

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 0

    .line 5
    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 0

    .line 6
    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    check-cast p3, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 5

    .line 7
    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    array-length v0, p2

    if-eqz v0, :cond_3

    array-length v0, p2

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    array-length v0, p2

    new-array v0, v0, [Lorg/apache/poi/hssf/record/CFRuleBase;

    :goto_1
    array-length v2, p2

    if-eq v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p2, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {p2, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of rules must not exceed 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cfRules must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cfRules must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "regions must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 3

    .line 8
    instance-of v0, p2, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    if-eqz v0, :cond_0

    check-cast p2, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    goto :goto_0

    :cond_0
    array-length v0, p2

    new-array v1, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result p1

    return p1
.end method

.method public createConditionalFormattingColorScaleRule()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createColorScale(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v1
.end method

.method public bridge synthetic createConditionalFormattingColorScaleRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingColorScaleRule()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object p2
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object p2
.end method

.method public createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;->getExtendedColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/common/ExtendedColor;)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v0
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 0

    .line 5
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/hssf/usermodel/HSSFExtendedColor;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 2

    .line 6
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public getConditionalFormattingAt(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->get(I)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V

    return-object v0
.end method

.method public bridge synthetic getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    move-result-object p1

    return-object p1
.end method

.method public getNumConditionalFormattings()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->size()I

    move-result v0

    return v0
.end method

.method public removeConditionalFormatting(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->remove(I)V

    return-void
.end method
