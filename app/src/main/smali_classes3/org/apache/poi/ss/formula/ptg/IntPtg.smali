.class public final Lorg/apache/poi/ss/formula/ptg/IntPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "SourceFile"


# static fields
.field public static final SIZE:I = 0x3

.field public static final sid:B = 0x1et


# instance fields
.field private final field_1_value:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;->field_1_value:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is out of range: "

    .line 1
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 7
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    return-void
.end method

.method public static isInRange(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;->field_1_value:I

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
