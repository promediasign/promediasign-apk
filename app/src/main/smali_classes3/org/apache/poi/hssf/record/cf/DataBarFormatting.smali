.class public final Lorg/apache/poi/hssf/record/cf/DataBarFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static iconOnly:Lorg/apache/poi/util/BitField;

.field private static log:Lorg/apache/poi/util/POILogger;

.field private static reversed:Lorg/apache/poi/util/BitField;


# instance fields
.field private color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private options:B

.field private percentMax:B

.field private percentMin:B

.field private thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

.field private thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->log:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->reversed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 8

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    const-string v3, "Inconsistent Minimum Percentage found "

    const/4 v4, 0x5

    const/16 v5, 0x64

    if-ltz v2, :cond_0

    if-le v2, v5, :cond_1

    :cond_0
    sget-object v2, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->log:Lorg/apache/poi/util/POILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v7, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-virtual {v2, v4, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    if-ltz v2, :cond_2

    if-le v2, v5, :cond_3

    :cond_2
    sget-object v2, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->log:Lorg/apache/poi/util/POILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {v2, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_3
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private setOptionFlag(ZLorg/apache/poi/util/BitField;)V
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;-><init>()V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/DataBarThreshold;->clone()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object v0
.end method

.method public getColor()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object v0
.end method

.method public getDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getPercentMax()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return v0
.end method

.method public getPercentMin()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return v0
.end method

.method public getThresholdMax()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object v0
.end method

.method public getThresholdMin()Lorg/apache/poi/hssf/record/cf/DataBarThreshold;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-object v0
.end method

.method public isIconOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method

.method public setColor(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setPercentMax(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMax:B

    return-void
.end method

.method public setPercentMin(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->percentMin:B

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setThresholdMax(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public setThresholdMin(Lorg/apache/poi/hssf/record/cf/DataBarThreshold;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "    [Data Bar Formatting]\n          .icon_only= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->isIconOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .reversed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->isReversed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->color:Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMin:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/DataBarFormatting;->thresholdMax:Lorg/apache/poi/hssf/record/cf/DataBarThreshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "    [/Data Bar Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
