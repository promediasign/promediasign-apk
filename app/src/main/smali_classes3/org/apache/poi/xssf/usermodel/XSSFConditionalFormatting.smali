.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormatting;


# instance fields
.field private final _cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

.field private final _sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-void
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->addNewCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public getCTConditionalFormatting()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    return-object v0
.end method

.method public getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getSqref()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method public getNumberOfRules()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->sizeOfCfRuleArray()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->getRule(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    move-result-object p1

    return-object p1
.end method

.method public getRule(I)Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;)V

    return-object v0
.end method

.method public setFormattingRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 7

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    if-nez v3, :cond_0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cellRanges must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRule(ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 1

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingRule;->getCTCfRule()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormatting;->_cf:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
