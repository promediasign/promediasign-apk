.class public final Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg;


# instance fields
.field private externalWorkbookNumber:I

.field private sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getExternalWorkbookNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    const-string v1, " [workbook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

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

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XSSF-only Ptg, should not be serialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
