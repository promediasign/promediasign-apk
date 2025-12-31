.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormatting;


# instance fields
.field private final cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cfAggregate must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sheet must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->addRule(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-void
.end method

.method public addRule(Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->addRule(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V

    return-void
.end method

.method public getCFRecordsAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    return-object v0
.end method

.method public getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfRules()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getNumberOfRules()I

    move-result v0

    return v0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v0
.end method

.method public bridge synthetic getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getRule(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public setFormattingRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRule(ILorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->setRule(ILorg/apache/poi/hssf/record/CFRuleBase;)V

    return-void
.end method

.method public setRule(ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 0

    .line 2
    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->setRule(ILorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
