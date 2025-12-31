.class public Lorg/apache/velocity/runtime/parser/node/ASTModNode;
.super Lorg/apache/velocity/runtime/parser/node/ASTMathNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    return-void
.end method


# virtual methods
.method public getLiteralOperator()Ljava/lang/String;
    .locals 1

    const-string v0, "%"

    return-object v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p1
.end method

.method public perform(Ljava/lang/Number;Ljava/lang/Number;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Number;
    .locals 1

    invoke-static {p2}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Right side of modulus operation is zero. Must be non-zero. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLocation(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->strictMode:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance p2, Lorg/apache/velocity/exception/MathException;

    invoke-direct {p2, p1}, Lorg/apache/velocity/exception/MathException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p1, p2}, Lorg/apache/velocity/runtime/parser/node/MathUtils;->modulo(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
