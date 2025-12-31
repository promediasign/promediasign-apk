.class public final Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x26s


# instance fields
.field private final field_1_reserved:I

.field private final field_2_subex_len:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_1_reserved:I

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_1_reserved:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getLenRefSubexpression()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x7

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
    const-class v1, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

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
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

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

    add-int/lit8 v0, v0, 0x26

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_1_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
