.class public final Lorg/apache/poi/ss/formula/ptg/TblPtg;
.super Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x2s


# instance fields
.field private final field_1_first_row:I

.field private final field_2_first_col:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ControlPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;->field_1_first_row:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;->field_2_first_col:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;->field_2_first_col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;->field_1_first_row:I

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Table and Arrays are not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[Data Table - Parent cell is an interior cell in a data table]\ntop left row = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/TblPtg;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\ntop left col = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/TblPtg;->getColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;->field_1_first_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/TblPtg;->field_2_first_col:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
