.class public abstract Lorg/apache/velocity/runtime/parser/node/ASTMathNode;
.super Lorg/apache/velocity/runtime/parser/node/ASTBinaryOperator;
.source "SourceFile"


# instance fields
.field protected strictMode:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTBinaryOperator;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->strictMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTBinaryOperator;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->strictMode:Z

    return-void
.end method


# virtual methods
.method public handleSpecial(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTBinaryOperator;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "runtime.strict.math"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->strictMode:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p2
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract perform(Ljava/lang/Number;Ljava/lang/Number;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Number;
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3, p1}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->handleSpecial(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/apache/velocity/util/DuckType;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-static {v3}, Lorg/apache/velocity/util/DuckType;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_2

    instance-of v5, v3, Ljava/lang/Number;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Ljava/lang/Number;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {p0, v1, v3, p1}, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->perform(Ljava/lang/Number;Ljava/lang/Number;Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_5

    const-string v2, "Right"

    goto :goto_4

    :cond_5
    const-string v2, "Left"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " side of math operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6

    const-string v0, "is not a Number. "

    goto :goto_5

    :cond_6
    const-string v0, "has a null value. "

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLocation(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTMathNode;->strictMode:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_7
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/velocity/exception/MathException;

    invoke-direct {v0, p1}, Lorg/apache/velocity/exception/MathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
