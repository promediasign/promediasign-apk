.class public final Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field public static final sid:B = 0x29t


# instance fields
.field private final field_1_len_ref_subexpression:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLenRefSubexpression()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return v0
.end method

.method public getNumberOfOperands()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, " [len="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    .line 23
    .line 24
    const-string v2, "]"

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x29

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
