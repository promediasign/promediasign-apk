.class public Lorg/apache/velocity/runtime/parser/node/ASTExpression;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    return-void
.end method


# virtual methods
.method public evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result p1

    return p1
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->saveTokenImages()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p1
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTExpression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public literal()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/velocity/runtime/parser/node/Node;->literal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
