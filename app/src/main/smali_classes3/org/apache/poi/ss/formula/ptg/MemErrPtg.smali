.class public final Lorg/apache/poi/ss/formula/ptg/MemErrPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x27s


# instance fields
.field private field_1_reserved:I

.field private field_2_subex_len:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    const-string v0, "ERR#"

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_1_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;->field_2_subex_len:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
