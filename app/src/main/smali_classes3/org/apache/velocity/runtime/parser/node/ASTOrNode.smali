.class public Lorg/apache/velocity/runtime/parser/node/ASTOrNode;
.super Lorg/apache/velocity/runtime/parser/node/ASTLogicalOperator;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTLogicalOperator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/ASTLogicalOperator;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getLiteralOperator()Ljava/lang/String;
    .locals 1

    const-string v0, "||"

    return-object v0
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTOrNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/ASTOrNode;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
