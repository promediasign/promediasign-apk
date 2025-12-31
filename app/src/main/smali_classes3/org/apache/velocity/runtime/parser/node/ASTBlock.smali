.class public Lorg/apache/velocity/runtime/parser/node/ASTBlock;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field public endsWithNewline:Z

.field private morePostfix:Ljava/lang/String;

.field private postfix:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->postfix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->endsWithNewline:Z

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->morePostfix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->postfix:Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->endsWithNewline:Z

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->morePostfix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPostfix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->prefix:Ljava/lang/String;

    return-object v0
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

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTBlock;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object v0

    sget-object v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->morePostfix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    sget-object p1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->postfix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->morePostfix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setMorePostfix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->morePostfix:Ljava/lang/String;

    return-void
.end method

.method public setPostfix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->postfix:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTBlock;->prefix:Ljava/lang/String;

    return-void
.end method
