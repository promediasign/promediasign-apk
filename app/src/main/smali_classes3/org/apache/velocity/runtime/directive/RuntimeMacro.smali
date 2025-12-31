.class public Lorg/apache/velocity/runtime/directive/RuntimeMacro;
.super Lorg/apache/velocity/runtime/directive/Directive;
.source "SourceFile"


# instance fields
.field private badArgsErrorMsg:Ljava/lang/String;

.field private literal:Ljava/lang/String;

.field private macroName:Ljava/lang/String;

.field private node:Lorg/apache/velocity/runtime/parser/node/Node;

.field protected strictRef:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Directive;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->node:Lorg/apache/velocity/runtime/parser/node/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->strictRef:Z

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->badArgsErrorMsg:Ljava/lang/String;

    return-void
.end method

.method private getLiteral()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getSpaceGobbling()Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->node:Lorg/apache/velocity/runtime/parser/node/Node;

    check-cast v1, Lorg/apache/velocity/runtime/parser/node/ASTDirective;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->getMorePrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->node:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {v4}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x23

    if-eqz v4, :cond_3

    iget-object v9, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->node:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {v9}, Lorg/apache/velocity/runtime/parser/node/Node;->getLastToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object v9

    if-eq v4, v9, :cond_3

    if-ne v6, v5, :cond_0

    iget-object v6, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    :cond_0
    if-eq v6, v5, :cond_1

    iget-object v8, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->LINES:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    invoke-virtual {v0, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_2

    iget-object v7, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    if-ne v6, v5, :cond_4

    iget-object v6, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    :cond_4
    if-eq v6, v5, :cond_5

    iget-object v4, v4, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/parser/node/ASTDirective;->getPostfix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    sget-object v2, Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;->NONE:Lorg/apache/velocity/runtime/RuntimeConstants$SpaceGobbling;

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->literal:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeName()Ljava/lang/String;
    .locals 1

    const-string v0, "macro"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Ljava/lang/String;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 3

    invoke-super {p0, p1, p3, p4}, Lorg/apache/velocity/runtime/directive/Directive;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-static {p2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {p1}, Lorg/apache/velocity/runtime/RuntimeServices;->useStringInterning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->node:Lorg/apache/velocity/runtime/parser/node/Node;

    invoke-interface {p4}, Lorg/apache/velocity/runtime/parser/node/Node;->getLastToken()Lorg/apache/velocity/runtime/parser/Token;

    move-result-object p1

    iget-object p2, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    const-string p2, "#end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p2, "runtime.references.strict"

    invoke-interface {p1, p2, v0}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->strictRef:Z

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p4}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-interface {p4, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid arg \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in macro #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->badArgsErrorMsg:Ljava/lang/String;

    iget-boolean p2, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->strictRef:Z

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/apache/velocity/exception/TemplateInitException;

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->badArgsErrorMsg:Ljava/lang/String;

    invoke-interface {p3}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0, v0}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->getLiteral()Ljava/lang/String;

    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/Renderable;)Z

    move-result p1

    return p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/Renderable;)Z
    .locals 8

    .line 2
    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentResource()Lorg/apache/velocity/runtime/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/Template;

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getTemplate()Lorg/apache/velocity/Template;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/velocity/runtime/RuntimeServices;->getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getMacroLibraries()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_2

    iget-object v5, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-object v6, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/velocity/Template;

    invoke-interface {v5, v6, v0, v7}, Lorg/apache/velocity/runtime/RuntimeServices;->getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v1, v5

    check-cast v1, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->badArgsErrorMsg:Ljava/lang/String;

    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->preRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/velocity/runtime/directive/VelocimacroProxy;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;Lorg/apache/velocity/runtime/Renderable;)Z

    move-result p2
    :try_end_0
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    return p2

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_4

    :goto_3
    :try_start_1
    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/Directive;->log:Lorg/slf4j/Logger;

    const-string v0, "Exception in macro #{} called at {}"

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    invoke-static {p3}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, v0, v1, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2

    :goto_4
    invoke-virtual {p2, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    return v2

    :cond_3
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/directive/Directive;->postRender(Lorg/apache/velocity/context/InternalContextAdapter;)V

    throw p2

    :cond_4
    new-instance p2, Lorg/apache/velocity/exception/TemplateInitException;

    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->badArgsErrorMsg:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/velocity/context/InternalContextAdapter;->getCurrentTemplateName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result v0

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result p3

    invoke-direct {p2, p4, p1, v0, p3}, Lorg/apache/velocity/exception/TemplateInitException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw p2

    :cond_5
    iget-boolean p1, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->strictRef:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v2

    :cond_6
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Macro \'#"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lorg/apache/velocity/runtime/directive/RuntimeMacro;->macroName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\' is not defined at "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
