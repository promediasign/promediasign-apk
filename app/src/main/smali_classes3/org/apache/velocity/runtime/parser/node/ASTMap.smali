.class public Lorg/apache/velocity/runtime/parser/node/ASTMap;
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
    .locals 2

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v0, "directive.if.emptycheck"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->children:[Lorg/apache/velocity/runtime/parser/node/Node;

    if-eqz p1, :cond_0

    array-length p1, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p1
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move-object v3, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v1
.end method
