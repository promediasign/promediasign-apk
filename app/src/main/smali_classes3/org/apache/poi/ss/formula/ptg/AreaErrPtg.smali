.class public final Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "SourceFile"


# static fields
.field public static final sid:B = 0x2bt


# instance fields
.field private final unused1:I

.field private final unused2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->unused1:I

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->unused2:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->unused1:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->unused2:I

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

    const/16 v0, 0x9

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x2b

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->unused1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;->unused2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method
