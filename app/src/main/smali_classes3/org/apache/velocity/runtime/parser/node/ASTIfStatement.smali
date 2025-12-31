.class public Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private morePrefix:Ljava/lang/String;

.field private postfix:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->postfix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->morePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->postfix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->morePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPostfix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eqz p2, :cond_0

    iget-object v1, p2, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object p2, p2, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-lez v1, :cond_1

    iget-object p2, p2, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->morePrefix:Ljava/lang/String;

    :cond_1
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object p2

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->STRUCTURED:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->postfix:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->prefix:Ljava/lang/String;

    invoke-static {p0, p2}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->fixIndentation(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    return-object p1
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/ParserVisitor;)V
    .locals 0

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->morePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    :goto_0
    invoke-interface {v1, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    const/4 v3, 0x2

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->evaluate(Lorg/apache/velocity/context/InternalContextAdapter;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->morePrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_5

    sget-object p1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne v0, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->postfix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_6
    return v2
.end method

.method public setPostfix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->postfix:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTIfStatement;->prefix:Ljava/lang/String;

    return-void
.end method
