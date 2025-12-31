.class public abstract Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperationPtg;
.source "SourceFile"


# static fields
.field public static final FUNCTION_NAME_IF:Ljava/lang/String; = "IF"


# instance fields
.field private final _functionIndex:S

.field private final _numberOfArgs:I

.field private final paramClass:[B

.field private final returnClass:B


# direct methods
.method public constructor <init>(II[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_numberOfArgs:I

    .line 5
    .line 6
    const/16 p4, -0x8000

    .line 7
    .line 8
    if-lt p1, p4, :cond_1

    .line 9
    .line 10
    const/16 p4, 0x7fff

    .line 11
    .line 12
    if-gt p1, p4, :cond_1

    .line 13
    .line 14
    int-to-short p1, p1

    .line 15
    iput-short p1, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    .line 16
    .line 17
    const/16 p1, -0x80

    .line 18
    .line 19
    if-lt p2, p1, :cond_0

    .line 20
    .line 21
    const/16 p1, 0x7f

    .line 22
    .line 23
    if-gt p2, p1, :cond_0

    .line 24
    .line 25
    int-to-byte p1, p2

    .line 26
    iput-byte p1, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->returnClass:B

    .line 27
    .line 28
    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->paramClass:[B

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string p3, "pReturnClass "

    .line 34
    .line 35
    const-string p4, " cannot be cast to byte"

    .line 36
    .line 37
    invoke-static {p2, p3, p4}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string p3, "functionIndex "

    .line 48
    .line 49
    const-string p4, " cannot be cast to short"

    .line 50
    .line 51
    invoke-static {p1, p3, p4}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method private static appendArgs(Ljava/lang/StringBuilder;I[Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, p1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-le v0, p1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final isBuiltInFunctionName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->lookupIndexByName(Ljava/lang/String;)S

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lookupIndex(Ljava/lang/String;)S
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->lookupIndexByName(Ljava/lang/String;)S

    move-result p0

    if-gez p0, :cond_0

    const/16 p0, 0xff

    :cond_0
    return p0
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->returnClass:B

    return v0
.end method

.method public final getFunctionIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupName(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNumberOfOperands()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_numberOfArgs:I

    return v0
.end method

.method public final getParameterClass(I)B
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->paramClass:[B

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, v0, p1

    return p1

    :cond_0
    aget-byte p1, v0, p1

    return p1
.end method

.method public abstract getSize()I
.end method

.method public final isBaseToken()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isExternalFunction()Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final lookupName(S)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "#external#"

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    const-string v1, "bad function index ("

    .line 22
    .line 23
    const-string v2, ")"

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final toFormulaString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isExternalFunction()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->appendArgs(Ljava/lang/StringBuilder;I[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2, p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->appendArgs(Ljava/lang/StringBuilder;I[Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " ["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-short v1, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_functionIndex:S

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->lookupName(S)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " nArgs="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->_numberOfArgs:I

    .line 39
    .line 40
    const-string v2, "]"

    .line 41
    .line 42
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
