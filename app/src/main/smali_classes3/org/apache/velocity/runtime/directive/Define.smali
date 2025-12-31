.class public Lorg/apache/velocity/runtime/directive/Define;
.super Lorg/apache/velocity/runtime/directive/Block;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/velocity/runtime/parser/Token;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "The argument to #define is of the wrong type"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "The #define directive requires one argument"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "define"

    return-object v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Block;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getFirstTokenImage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Block;->key:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/velocity/runtime/directive/Directive;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p3, "directive.define.max.depth"

    invoke-interface {p1, p3, p2}, Lorg/apache/velocity/runtime/RuntimeServices;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/Block;->maxDepth:I

    return-void

    :cond_0
    new-instance p1, Lorg/apache/velocity/exception/VelocityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "parameter missing: block name at "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 0

    iget-object p2, p0, Lorg/apache/velocity/runtime/directive/Block;->key:Ljava/lang/String;

    new-instance p3, Lorg/apache/velocity/runtime/directive/Block$Reference;

    invoke-direct {p3, p1, p0}, Lorg/apache/velocity/runtime/directive/Block$Reference;-><init>(Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/directive/Block;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
