.class public final Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static background:Lorg/apache/poi/util/BitField;

.field private static clamp:Lorg/apache/poi/util/BitField;

.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

.field private options:B

.field private thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->log:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    new-array v1, v0, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    new-array v0, v0, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v3

    if-eq v2, v3, :cond_0

    sget-object v4, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->log:Lorg/apache/poi/util/POILogger;

    const-string v5, "Inconsistent Color Gradient defintion, found "

    const-string v6, " vs "

    const-string v7, " entries"

    .line 2
    invoke-static {v5, v2, v6, v3, v7}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v1

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v4

    iput-byte v4, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    new-array v2, v2, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    new-instance v5, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {v5, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v5, v4, v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    new-array v2, v3, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    new-instance v3, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v3, v2, v1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getOptionFlag(Lorg/apache/poi/util/BitField;)Z
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

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

.method private updateThresholdPositions()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v4, v1

    if-ge v0, v4, :cond_0

    aget-object v1, v1, v0

    int-to-double v4, v0

    mul-double v4, v4, v2

    invoke-virtual {v1, v4, v5}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->setPosition(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;-><init>()V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iput-object v2, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    iget-object v2, v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getColors()[Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-object v0
.end method

.method public getDataLength()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->getDataLength()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->getDataLength()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v2, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public getNumControlPoints()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v0, v0

    return v0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    return-object v0
.end method

.method public isAppliesToBackground()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->background:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public isClampToCurve()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->clamp:Lorg/apache/poi/util/BitField;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->getOptionFlag(Lorg/apache/poi/util/BitField;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->options:B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    int-to-double v1, v0

    mul-double v1, v1, v3

    invoke-interface {p1, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setColors([Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    return-void
.end method

.method public setNumControlPoints(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array v1, p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    new-array v2, p1, [Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    :cond_0
    return-void
.end method

.method public setThresholds([Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->updateThresholdPositions()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "    [Color Gradient Formatting]\n          .clamp     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->isClampToCurve()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .background= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->isAppliesToBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->thresholds:[Lorg/apache/poi/hssf/record/cf/ColorGradientThreshold;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cf/ColorGradientFormatting;->colors:[Lorg/apache/poi/hssf/record/common/ExtendedColor;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "    [/Color Gradient Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
