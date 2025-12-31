.class public final Lorg/apache/poi/ss/formula/ptg/NamePtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field public static final sid:S = 0x23s


# instance fields
.field private field_1_label_index:I

.field private field_2_zero:S


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_2_zero:S

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3D references need a workbook to determine formula text"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getNameText(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x23

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_1_label_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/NamePtg;->field_2_zero:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
