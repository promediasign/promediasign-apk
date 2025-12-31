.class public Lorg/apache/velocity/runtime/directive/contrib/For;
.super Lorg/apache/velocity/runtime/directive/Foreach;
.source "SourceFile"


# instance fields
.field protected counterInitialValue:I

.field protected counterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/velocity/runtime/directive/Foreach;-><init>()V

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

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Foreach;->checkArgs(Ljava/util/ArrayList;Lorg/apache/velocity/runtime/parser/Token;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Expected a reference after \'index\' in #foreach"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/velocity/runtime/directive/MacroParseException;

    const-string v0, "Expected word \'index\' at argument position 4 in #foreach"

    invoke-direct {p1, v0, p3, p2}, Lorg/apache/velocity/runtime/directive/MacroParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/velocity/runtime/parser/Token;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "for"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Foreach;->init(Lorg/apache/velocity/runtime/RuntimeServices;Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p3}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetNumChildren()I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_0

    invoke-interface {p3, p2}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtGetChild(I)Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/parser/node/ASTReference;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/node/ASTReference;->getRootString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterInitialValue:I

    :cond_0
    return-void
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    iget v2, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterInitialValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Foreach;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1, p3, v0}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    return p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1, p3, v0}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p1, p3}, Lorg/apache/velocity/context/Context;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_1
    throw p2
.end method

.method public renderBlock(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/velocity/context/Context;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/contrib/For;->counterName:Ljava/lang/String;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/velocity/context/Context;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/directive/Foreach;->renderBlock(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;Lorg/apache/velocity/runtime/parser/node/Node;)V

    return-void
.end method
