.class public final Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;
.super Lorg/apache/poi/hssf/record/cf/Threshold;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EQUALS_EXCLUDE:B = 0x0t

.field public static final EQUALS_INCLUDE:B = 0x1t


# instance fields
.field private equals:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->clone()Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>()V

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->copyTo(Lorg/apache/poi/hssf/record/cf/Threshold;)V

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getEquals()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setEquals(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;->equals:B

    return-void
.end method
