.class public final Lorg/apache/poi/ss/formula/FormulaShifter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    }
.end annotation


# instance fields
.field private final _amountToMove:I

.field private final _dstSheetIndex:I

.field private final _externSheetIndex:I

.field private final _firstMovedIndex:I

.field private final _lastMovedIndex:I

.field private final _mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field private final _sheetName:Ljava/lang/String;

.field private final _srcSheetIndex:I

.field private final _version:Lorg/apache/poi/ss/SpreadsheetVersion;


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    sget-object p1, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->SheetMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-gt p3, p4, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iput p5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    iput-object p6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object p7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstMovedIndex, lastMovedIndex out of order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "amountToMove must not be zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p2, 0x3

    if-ne v0, p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToSheetMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported shift mode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1
.end method

.method private adjustPtgDueToRowCopy(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    iget p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    if-eq p2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result p2

    if-gtz p2, :cond_5

    iget-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_7

    return-object p1

    :cond_7
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz p2, :cond_a

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    iget p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    if-eq p2, v0, :cond_9

    return-object v1

    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_a
    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p2, :cond_c

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result p2

    if-gtz p2, :cond_c

    iget-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_1

    :cond_b
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_1
    return-object v1
.end method

.method private adjustPtgDueToSheetMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    if-ge v0, v2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ge v0, v3, :cond_0

    return-object v1

    :cond_0
    if-le v0, v2, :cond_1

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-le v0, v3, :cond_1

    return-object v1

    :cond_1
    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    return-object p1

    :cond_2
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ge v3, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-le v3, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>()V

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(I)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_2

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>()V

    return-object p0

    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(I)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected ref ptg class ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9

    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowCopy:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 9

    new-instance v8, Lorg/apache/poi/ss/formula/FormulaShifter;

    sget-object v6, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->RowMove:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;IIILorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v8
.end method

.method public static createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(II)V

    return-object v0
.end method

.method private rowCopyAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isFirstRowRelative()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v2

    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->isLastRowRelative()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_4

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    if-ge v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->sortTopLeftToBottomRight()V

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    return-object p1
.end method

.method private rowCopyRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    .line 10
    .line 11
    if-gt v2, v0, :cond_0

    .line 12
    .line 13
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 14
    .line 15
    if-gt v1, v3, :cond_0

    .line 16
    .line 17
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 18
    .line 19
    add-int/2addr v0, v2

    .line 20
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 31
    .line 32
    add-int v4, v2, v3

    .line 33
    .line 34
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 35
    .line 36
    add-int v6, v5, v3

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    if-ge v0, v2, :cond_3

    .line 40
    .line 41
    if-ge v5, v1, :cond_3

    .line 42
    .line 43
    if-ge v4, v0, :cond_1

    .line 44
    .line 45
    if-gt v0, v6, :cond_1

    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_1
    if-gt v4, v1, :cond_2

    .line 54
    .line 55
    if-ge v1, v6, :cond_2

    .line 56
    .line 57
    add-int/lit8 v4, v4, -0x1

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_2
    return-object v7

    .line 64
    :cond_3
    if-gt v2, v0, :cond_8

    .line 65
    .line 66
    if-gt v0, v5, :cond_8

    .line 67
    .line 68
    if-gez v3, :cond_4

    .line 69
    .line 70
    add-int/2addr v0, v3

    .line 71
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_4
    if-le v4, v1, :cond_5

    .line 76
    .line 77
    return-object v7

    .line 78
    :cond_5
    add-int/2addr v0, v3

    .line 79
    if-ge v6, v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    if-le v4, v5, :cond_7

    .line 88
    .line 89
    move v0, v5

    .line 90
    :cond_7
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_8
    if-gt v2, v1, :cond_d

    .line 102
    .line 103
    if-gt v1, v5, :cond_d

    .line 104
    .line 105
    if-lez v3, :cond_9

    .line 106
    .line 107
    add-int/2addr v1, v3

    .line 108
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_9
    if-ge v6, v0, :cond_a

    .line 113
    .line 114
    return-object v7

    .line 115
    :cond_a
    add-int/2addr v1, v3

    .line 116
    if-le v4, v0, :cond_b

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 123
    .line 124
    if-ge v6, v2, :cond_c

    .line 125
    .line 126
    move v1, v2

    .line 127
    :cond_c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_d
    if-lt v6, v0, :cond_13

    .line 139
    .line 140
    if-ge v1, v4, :cond_e

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_e
    if-gt v4, v0, :cond_f

    .line 144
    .line 145
    if-gt v1, v6, :cond_f

    .line 146
    .line 147
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_f
    if-gt v0, v4, :cond_10

    .line 153
    .line 154
    if-gt v6, v1, :cond_10

    .line 155
    .line 156
    return-object v7

    .line 157
    :cond_10
    if-ge v4, v0, :cond_11

    .line 158
    .line 159
    if-gt v0, v6, :cond_11

    .line 160
    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_11
    if-gt v4, v1, :cond_12

    .line 168
    .line 169
    if-ge v1, v6, :cond_12

    .line 170
    .line 171
    add-int/lit8 v4, v4, -0x1

    .line 172
    .line 173
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 174
    .line 175
    .line 176
    return-object p1

    .line 177
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Situation not covered: ("

    .line 182
    .line 183
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v3, ", "

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 205
    .line 206
    invoke-static {v2, v4, v3, v0, v3}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v0, ")"

    .line 210
    .line 211
    invoke-static {v0, v1, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1

    .line 219
    :cond_13
    :goto_0
    return-object v7
.end method

.method private rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    .line 6
    .line 7
    if-gt v1, v0, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 10
    .line 11
    if-gt v0, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 24
    .line 25
    add-int/2addr v3, v2

    .line 26
    if-lt v3, v0, :cond_3

    .line 27
    .line 28
    if-ge v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-gt v1, v0, :cond_2

    .line 32
    .line 33
    if-gt v0, v3, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Situation not covered: ("

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 68
    .line 69
    invoke-static {v1, v3, v2, v0, v2}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, ")"

    .line 73
    .line 74
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 83
    return-object p1
.end method


# virtual methods
.method public adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    if-eqz v2, :cond_0

    aput-object v2, p1, v0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
