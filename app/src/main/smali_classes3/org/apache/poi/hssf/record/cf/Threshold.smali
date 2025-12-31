.class public abstract Lorg/apache/poi/hssf/record/cf/Threshold;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private formula:Lorg/apache/poi/ss/formula/Formula;

.field private type:B

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->NUMBER:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    :cond_1
    return-void
.end method


# virtual methods
.method public copyTo(Lorg/apache/poi/hssf/record/cf/Threshold;)V
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    iput-byte v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    iput-object v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    iput-object v0, p1, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-void
.end method

.method public getDataLength()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x9

    :cond_0
    return v1
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    return v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    :cond_1
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    :cond_0
    return-void
.end method

.method public setType(B)V
    .locals 2

    .line 1
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v0, v0, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    if-nez p1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 2
    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "    [CF Threshold]\n          .type    = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->type:B

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .formula = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->formula:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .value   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/Threshold;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n    [/CF Threshold]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
