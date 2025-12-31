.class public final Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static iconOnly:Lorg/apache/poi/util/BitField;

.field private static log:Lorg/apache/poi/util/POILogger;

.field private static reversed:Lorg/apache/poi/util/BitField;


# instance fields
.field private iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field private options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->log:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->reversed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    iget v0, v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v0, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 6

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->byId(I)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v3, v3, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    if-eq v3, v2, :cond_0

    sget-object v3, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->log:Lorg/apache/poi/util/POILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inconsistent Icon Set defintion, found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " but defined as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v2, v2, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    new-array v2, v2, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-instance v3, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v3, v2, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

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

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/util/BitField;->setByteBoolean(BZ)B

    move-result p1

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getDataLength()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v1, v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object v0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-object v0
.end method

.method public isIconOnly()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    iget v1, v1, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->options:B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconOnly(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconOnly:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->reversed:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setOptionFlag(ZLorg/apache/poi/util/BitField;)V

    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/Threshold;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/cf/Threshold;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "    [Icon Formatting]\n          .icon_set = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->iconSet:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .icon_only= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isIconOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .reversed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isReversed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/Threshold;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "    [/Icon Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
