.class public final Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field public static final sid:B = 0x3dt


# instance fields
.field private final field_1_index_extern_sheet:I

.field private final unused1:I

.field private final unused2:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 1

    const/16 v0, 0xb

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
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3d

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->field_1_index_extern_sheet:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;->unused2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
