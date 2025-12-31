.class public Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private isInitialized:Z

.field private left:Lorg/apache/velocity/runtime/parser/node/ASTReference;

.field private leftReference:Ljava/lang/String;

.field private morePrefix:Ljava/lang/String;

.field private postfix:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private right:Lorg/apache/velocity/runtime/parser/node/Node;

.field protected strictRef:Z

.field protected uberInfo:Lorg/apache/velocity/util/introspection/Info;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->leftReference:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->right:Lorg/apache/velocity/runtime/parser/node/Node;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->left:Lorg/apache/velocity/runtime/parser/node/ASTReference;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->postfix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->morePrefix:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->strictRef:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->leftReference:Ljava/lang/String;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->right:Lorg/apache/velocity/runtime/parser/node/Node;

    iput-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->left:Lorg/apache/velocity/runtime/parser/node/ASTReference;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->postfix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->morePrefix:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->strictRef:Z

    return-void
.end method

.method private getLeftHandSide()Lorg/apache/velocity/runtime/parser/node/ASTReference;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/parser/node/ASTReference;

    return-object v0
.end method

.method private getRightHandSide()Lorg/apache/velocity/runtime/parser/node/Node;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPostfix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->isInitialized:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-lez v1, :cond_1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->morePrefix:Ljava/lang/String;

    :cond_1
    new-instance p1, Lorg/apache/velocity/util/introspection/Info;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v3

    invoke-direct {p1, v1, v2, v3}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->getRightHandSide()Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->right:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->getLeftHandSide()Lorg/apache/velocity/runtime/parser/node/ASTReference;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->left:Lorg/apache/velocity/runtime/parser/node/ASTReference;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "runtime.references.strict"

    invoke-interface {p1, v1, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->strictRef:Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->left:Lorg/apache/velocity/runtime/parser/node/ASTReference;

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->firstImage:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->leftReference:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object p1

    sget-object v2, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->BC:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne p1, v2, :cond_6

    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parent:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parent:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {v2, v0}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v2

    if-ne v2, p0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object p1, v2

    goto :goto_1

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    const-string p1, ""

    :goto_3
    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->prefix:Ljava/lang/String;

    goto :goto_4

    :cond_4
    instance-of v0, p1, Lorg/apache/velocity/runtime/parser/node/ASTText;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/ASTText;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTText;->getCtext()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ \t]*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/apache/velocity/runtime/parser/node/ASTText;->setCtext(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p1, ""

    goto :goto_3

    :cond_6
    :goto_4
    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->isInitialized:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-object p2

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->right:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-boolean v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->strictRef:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->right:Lorg/apache/velocity/runtime/parser/node/Node;

    instance-of v3, v2, Lorg/apache/velocity/runtime/parser/node/ASTExpression;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/velocity/runtime/parser/node/ASTExpression;

    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->lastImage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v4, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->leftReference:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->uberInfo:Lorg/apache/velocity/util/introspection/Info;

    invoke-static {v3, p1, v4, v2, v5}, Lorg/apache/velocity/app/event/EventHandlerUtil;->invalidSetMethod(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    :cond_3
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    sget-object v2, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->postfix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->left:Lorg/apache/velocity/runtime/parser/node/ASTReference;

    invoke-virtual {p2, p1, v1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->setValue(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setPostfix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->postfix:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTSetDirective;->prefix:Ljava/lang/String;

    return-void
.end method
