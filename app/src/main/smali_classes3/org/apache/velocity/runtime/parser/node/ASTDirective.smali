.class public Lorg/apache/velocity/runtime/parser/node/ASTDirective;
.super Lorg/apache/velocity/runtime/parser/node/SimpleNode;
.source "SourceFile"


# instance fields
.field private directive:Lorg/apache/velocity/runtime/directive/Directive;

.field private directiveName:Ljava/lang/String;

.field private isDirective:Z

.field private isInitialized:Z

.field private morePrefix:Ljava/lang/String;

.field private postfix:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->postfix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Parser;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;-><init>(Lorg/apache/velocity/runtime/parser/Parser;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->postfix:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDirectiveName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectiveType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Directive;->getType()I

    move-result v0

    return v0
.end method

.method public getMorePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPostfix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->postfix:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    invoke-super {p0, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/apache/velocity/runtime/parser/Parser;->isDirective(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isDirective:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/velocity/runtime/parser/Parser;->getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/directive/Directive;

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v0

    iget v2, v0, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_2

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    :cond_2
    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    iget v3, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    iget v0, v0, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lorg/apache/velocity/runtime/directive/Directive;->setLocation(IILorg/apache/velocity/Template;)V

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v0, v2, p1, p0}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    new-instance p2, Lorg/apache/velocity/exception/VelocityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t initialize directive of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->parser:Lorg/apache/velocity/runtime/parser/Parser;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/velocity/runtime/parser/Parser;->getDirective(Ljava/lang/String;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    new-instance v0, Lorg/apache/velocity/runtime/directive/BlockMacro;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/directive/BlockMacro;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/velocity/runtime/directive/Directive;->setLocation(IILorg/apache/velocity/Template;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    check-cast v0, Lorg/apache/velocity/runtime/directive/BlockMacro;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1, p0}, Lorg/apache/velocity/runtime/directive/BlockMacro;->init(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_3
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isDirective:Z

    goto :goto_3

    :catch_2
    move-exception p1

    new-instance p2, Lorg/apache/velocity/exception/TemplateInitException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-virtual {p1}, Lorg/apache/velocity/exception/TemplateInitException;->getTemplateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/velocity/exception/TemplateInitException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Lorg/apache/velocity/exception/TemplateInitException;->getLineNumber()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v0

    add-int v5, p1, v0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;II)V

    throw p2

    :cond_4
    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isDirective:Z

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/velocity/runtime/directive/Directive;->setLocation(IILorg/apache/velocity/Template;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    check-cast v0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v3, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1, p0}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->init(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    :try_end_5
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_6
    iput-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isInitialized:Z

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->saveTokenImages()V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->cleanupParserAndTokens()V

    goto :goto_4

    :catch_3
    move-exception p1

    new-instance p2, Lorg/apache/velocity/exception/TemplateInitException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/velocity/runtime/parser/ParseException;

    invoke-virtual {p1}, Lorg/apache/velocity/exception/TemplateInitException;->getTemplateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/velocity/exception/TemplateInitException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getColumn()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1}, Lorg/apache/velocity/exception/TemplateInitException;->getLineNumber()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->getLine()I

    move-result v0

    add-int v5, p1, v0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;II)V

    throw p2

    :cond_6
    :goto_4
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object p1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->STRUCTURED:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne p1, v0, :cond_7

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isInitialized:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isDirective:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Directive;->getType()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/velocity/runtime/parser/node/NodeUtils;->fixIndentation(Lorg/apache/velocity/runtime/parser/node/SimpleNode;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    monitor-exit p0

    return-object p2

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public jjtAccept(Lorg/apache/velocity/runtime/parser/node/ParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, Lorg/apache/velocity/runtime/parser/node/ParserVisitor;->visit(Lorg/apache/velocity/runtime/parser/node/ASTDirective;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->isDirective:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    invoke-virtual {v1, p1, p2, p0}, Lorg/apache/velocity/runtime/directive/Directive;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    sget-object p1, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne v0, p1, :cond_4

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->postfix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->morePrefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public setDirectiveName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    return-void
.end method

.method public setPostfix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->postfix:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->prefix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ASTDirective ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", directiveName="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->directiveName:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "]"

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
