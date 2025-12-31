.class public final Lorg/apache/poi/ss/formula/ptg/NameXPxg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg;


# instance fields
.field private externalWorkbookNumber:I

.field private nameName:Ljava/lang/String;

.field private sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

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

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    :goto_1
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, " ["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    .line 21
    .line 22
    if-ltz v1, :cond_0

    .line 23
    .line 24
    const-string v1, " [workbook="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    const-string v1, "] "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    :cond_0
    const-string v1, "sheet="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    const-string v1, " ! name="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "]"

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "XSSF-only Ptg, should not be serialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
