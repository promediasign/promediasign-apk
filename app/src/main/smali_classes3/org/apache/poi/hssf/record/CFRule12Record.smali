.class public final Lorg/apache/poi/hssf/record/CFRule12Record;
.super Lorg/apache/poi/hssf/record/CFRuleBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/FutureRecord;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x87as


# instance fields
.field private color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

.field private data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

.field private ext_formatting_data:[B

.field private ext_formatting_length:I

.field private ext_opts:B

.field private filter_data:[B

.field private formula_scale:Lorg/apache/poi/ss/formula/Formula;

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

.field private priority:I

.field private template_param_length:B

.field private template_params:[B

.field private template_type:I


# direct methods
.method private constructor <init>(BB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setDefaults()V

    return-void
.end method

.method private constructor <init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->setDefaults()V

    invoke-static {p5}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;-><init>()V

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

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

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v3, 0x0

    new-array v4, v3, [B

    iput-object v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->readFormatOptions(Lorg/apache/poi/hssf/record/RecordInputStream;)I

    move-result v2

    iget v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    if-ge v2, v4, :cond_1

    sub-int/2addr v4, v2

    new-array v2, v4, [B

    iput-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula1(Lorg/apache/poi/ss/formula/Formula;)V

    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setFormula2(Lorg/apache/poi/ss/formula/Formula;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/apache/poi/hssf/record/CFRuleBase;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CF Rule v12 template params length should be 0 or 16, found "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v4, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    goto :goto_2

    :cond_3
    :goto_1
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    goto :goto_3

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    goto :goto_3

    :cond_5
    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    goto :goto_3

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    :cond_7
    :goto_3
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6

    .line 1
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6

    .line 2
    invoke-static {p2, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-static {p3, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    invoke-static {p4, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 6

    .line 3
    invoke-static {p1, p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/common/ExtendedColor;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 2

    .line 4
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMin(B)V

    const/16 p1, 0x64

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setPercentMax(B)V

    new-instance p1, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MIN:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setType(I)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    new-instance p1, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>()V

    sget-object v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->MAX:Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setType(I)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V

    return-object p0
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 4

    .line 5
    iget p0, p1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, p0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    new-instance v3, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/hssf/record/CFRule12Record;

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V

    return-object p0
.end method

.method public static createColorScale(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 5

    const/4 p0, 0x3

    new-array v0, p0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    new-array v1, p0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    new-instance v4, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>()V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-direct {v3, p0, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/CFRule12Record;->createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setNumControlPoints(I)V

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    return-object v3
.end method

.method private setDefaults()V
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    const/16 v1, 0x87a

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    const/16 v0, 0x10

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->clone()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFRule12Record;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getComparisonOperation()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;-><init>(BB)V

    iget-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setAssociatedRange(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->copyTo(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    iput v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    new-array v2, v1, [B

    iput-object v2, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    iget-object v3, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    if-eqz v1, :cond_3

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRule12Record;->clone()Lorg/apache/poi/hssf/record/CFRule12Record;

    move-result-object v0

    return-object v0
.end method

.method public containsColorGradientBlock()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsDataBarBlock()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsMultiStateBlock()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    return-object v0
.end method

.method public createDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    return-object v0
.end method

.method public createMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->setConditionType(B)V

    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    return-object v0
.end method

.method public getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getAssociatedRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getColorGradientFormatting()Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    return-object v0
.end method

.method public getDataBarFormatting()Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    return-object v0
.end method

.method public getDataSize()I
    .locals 5

    invoke-static {}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getDataSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x6

    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0xc

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormattingBlockSize()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_0
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

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    array-length v0, v0

    const/4 v2, 0x6

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getDataLength()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getDataLength()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getDataLength()I

    move-result v1

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method public getFutureHeader()Lorg/apache/poi/hssf/record/common/FtrHeader;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    return-object v0
.end method

.method public getFutureRecordType()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;->getRecordType()S

    move-result v0

    return v0
.end method

.method public getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    return-object v0
.end method

.method public getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x87a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

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

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFRuleBase;->serializeFormattingBlock(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormulaSize(Lorg/apache/poi/ss/formula/Formula;)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_param_length:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setParsedExpressionScale([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CFRULE12]\n    .condition_type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getConditionType()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    .dxfn12_length =0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_length:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .option_flags  =0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getOptions()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsFontFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsBorderFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->containsPatternFormattingBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRuleBase;->_patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "    .dxfn12_ext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_formatting_data:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .formula_1 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula1()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .formula_2 ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFRuleBase;->getFormula2()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .formula_S ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->formula_scale:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .ext_opts  ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->ext_opts:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    .priority  ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    .template_type  ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    .template_params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->template_params:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    .filter_data    ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->filter_data:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->color_gradient:Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->multistate:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/hssf/record/CFRule12Record;->data_bar:Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "[/CFRULE12]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
