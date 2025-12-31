.class public Lorg/apache/velocity/runtime/directive/Evaluate;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "evaluate"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p1

    const-string v0, "() requires exactly one argument"

    const-string v1, "#"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-gt p1, v2, :cond_2

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getType()I

    move-result p3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getType()I

    move-result p3

    const/16 v0, 0x14

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/apache/velocity/exception/TemplateInitException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Evaluate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()  argument must be a string literal or reference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result p1

    invoke-direct {p3, v0, p2, v1, p1}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p3

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lorg/apache/velocity/exception/TemplateInitException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Evaluate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result v1

    invoke-interface {p3, v2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result p3

    invoke-direct {p1, v0, p2, v1, p3}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/velocity/exception/TemplateInitException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Evaluate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result v1

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result p3

    invoke-direct {p1, v0, p2, v1, p3}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->value(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v3

    check-cast v3, Lorg/apache/velocity/Template;

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/velocity/Template;

    invoke-direct {v3}, Lorg/apache/velocity/Template;-><init>()V

    invoke-virtual {v3, v2}, Lorg/apache/velocity/runtime/resource/Resource;->setName(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Lorg/apache/velocity/runtime/RuntimeServices;->parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/velocity/runtime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_3

    invoke-interface {p1, v2}, Lorg/apache/velocity/context/InternalContextAdapter;->pushCurrentTemplateName(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v1, p1, v0}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->preRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    invoke-virtual {v1, p1, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    :try_end_2
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/velocity/exception/ParseErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :goto_1
    :try_start_3
    new-instance v0, Lorg/apache/velocity/util/introspection/Info;

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result v1

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result p3

    invoke-direct {v0, v2, v1, p3}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    new-instance p3, Lorg/apache/velocity/exception/ParseErrorException;

    invoke-virtual {p2}, Lorg/apache/velocity/exception/ParseErrorException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    throw p3

    :goto_2
    invoke-virtual {p2, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_2

    :goto_3
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->popCurrentTemplateName()V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :try_start_4
    throw p2

    :catch_2
    move-exception p2

    new-instance v0, Lorg/apache/velocity/util/introspection/Info;

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result v1

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result p3

    invoke-direct {v0, v2, v1, p3}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    new-instance p3, Lorg/apache/velocity/exception/ParseErrorException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->popCurrentTemplateName()V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    throw p2

    :cond_3
    return v0

    :catch_3
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception p1

    :goto_5
    new-instance p2, Lorg/apache/velocity/util/introspection/Info;

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result v0

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result p3

    invoke-direct {p2, v2, v0, p3}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    new-instance p3, Lorg/apache/velocity/exception/ParseErrorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V

    throw p3
.end method
