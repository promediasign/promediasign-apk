.class public final Lorg/apache/poi/hssf/record/CFRuleRecord;
.super Lorg/apache/poi/hssf/record/CFRuleBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1b1s


# direct methods
.method private constructor <init>(BB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setDefaults()V

    return-void
.end method

.method private constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setDefaults()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setComparisonOperation(B)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->readFormatOptions(Lorg/apache/poi/hssf/record/RecordInputStream;)I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula1(Lorg/apache/poi/ss/formula/Formula;)V

    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula2(Lorg/apache/poi/ss/formula/Formula;)V

    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 1

    .line 1
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p2

    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    new-instance p3, Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1, p2, p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p3
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 3

    .line 2
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0, p0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1
.end method

.method private setDefaults()V
    .locals 3

    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->modificationBits:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleBase;->fmtBlockBits:Lorg/apache/poi/util/BitField;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    sget-object v1, Lorg/apache/poi/hssf/record/CFRuleBase;->undocumented:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_options:I

    const/16 v0, -0x7ffe

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->formatting_not_used:S

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->clone()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->clone()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 3

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;-><init>(BB)V

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->copyTo(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v0
.end method

.method public getDataSize()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormattingBlockSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1b1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->serializeFormattingBlock(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CFRULE]\n    .condition_type   ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    OPTION FLAGS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "    Formula 1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    Formula 2 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/CFRULE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
