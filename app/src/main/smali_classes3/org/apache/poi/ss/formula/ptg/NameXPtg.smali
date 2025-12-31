.class public final Lorg/apache/poi/ss/formula/ptg/NameXPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;


# static fields
.field public static final sid:S = 0x39s


# instance fields
.field private final _nameNumber:I

.field private final _reserved:I

.field private final _sheetRefIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(III)V

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_reserved:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSheetRefIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    return v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x7

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
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NameXPtg:[sheetRefIndex:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " , nameNumber:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    .line 19
    .line 20
    const-string v2, "]"

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x39

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_sheetRefIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_nameNumber:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
