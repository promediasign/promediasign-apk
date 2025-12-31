.class public final Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
.super Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg3D;


# instance fields
.field private externalWorkbookNumber:I

.field private firstSheetName:Ljava/lang/String;

.field private lastSheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p3, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 0

    .line 2
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    instance-of p1, p2, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v0, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V
    .locals 1

    .line 4
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;-><init>(ILorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/util/AreaReference;)V

    return-void
.end method


# virtual methods
.method public format2DRefAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalWorkbookNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getLastSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLastSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    return-void
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->firstSheetName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->formatReferenceAsString()Ljava/lang/String;

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

    const-class v1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    const-string v1, " [workbook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " : sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->lastSheetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
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

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XSSF-only Ptg, should not be serialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
