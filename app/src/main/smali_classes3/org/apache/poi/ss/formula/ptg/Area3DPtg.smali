.class public final Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
.super Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
.implements Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;


# static fields
.field public static final sid:B = 0x3bt


# instance fields
.field private field_1_index_extern_sheet:I


# direct methods
.method public constructor <init>(IIIIZZZZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(IIIIZZZZ)V

    invoke-virtual {p0, p9}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/AreaReference;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->setExternSheetIndex(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->readCoordinates(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public format2DRefAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    return v0
.end method

.method public getSize()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public setExternSheetIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    return-void
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
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;->prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " [sheetIx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->field_1_index_extern_sheet:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->writeCoordinates(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
