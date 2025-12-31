.class public final Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
.super Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
.source "SourceFile"


# static fields
.field public static final SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

.field public static final sid:B = 0x22t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SUM"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-void
.end method

.method private constructor <init>(II[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;-><init>(II[BI)V

    return-void
.end method

.method private static create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    const/16 v1, 0x20

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;-><init>(II[BI)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getReturnClassCode()B

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getParameterClassCodes()[B

    move-result-object v0

    invoke-direct {v1, p1, v2, v0, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;-><init>(II[BI)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupIndex(Ljava/lang/String;)S

    move-result p0

    invoke-static {p1, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 1

    .line 3
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
