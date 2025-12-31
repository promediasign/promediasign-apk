.class public final Lorg/apache/poi/ss/formula/function/FunctionMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _index:I

.field private final _maxParams:I

.field private final _minParams:I

.field private final _name:Ljava/lang/String;

.field private final _parameterClassCodes:[B

.field private final _returnClassCode:B


# direct methods
.method public constructor <init>(ILjava/lang/String;IIB[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    iput p3, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    iput p4, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    iput-byte p5, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_returnClassCode:B

    if-nez p6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_parameterClassCodes:[B

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    return v0
.end method

.method public getMaxParams()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    return v0
.end method

.method public getMinParams()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterClassCodes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_parameterClassCodes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReturnClassCode()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_returnClassCode:B

    return v0
.end method

.method public hasFixedArgsLength()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnlimitedVarags()Z
    .locals 2

    const/16 v0, 0x1e

    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, " ["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string v1, " "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "]"

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
