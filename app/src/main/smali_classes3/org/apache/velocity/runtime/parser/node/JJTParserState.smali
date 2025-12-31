.class public Lorg/apache/velocity/runtime/parser/node/JJTParserState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private marks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    return-void
.end method


# virtual methods
.method public clearNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 1

    :goto_0
    iget p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    return-void
.end method

.method public closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtSetParent(Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtAddChild(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->pushNode(Lorg/apache/velocity/runtime/parser/node/Node;)V

    iput-boolean v2, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->node_created:Z

    return-void
.end method

.method public closeNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;Z)V
    .locals 3

    .line 2
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodeArity()I

    move-result p2

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->popNode()Lorg/apache/velocity/runtime/parser/node/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtSetParent(Lorg/apache/velocity/runtime/parser/node/Node;)V

    invoke-interface {p1, p2, v1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtAddChild(Lorg/apache/velocity/runtime/parser/node/Node;I)V

    move p2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->pushNode(Lorg/apache/velocity/runtime/parser/node/Node;)V

    iput-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->node_created:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->node_created:Z

    :goto_1
    return-void
.end method

.method public nodeArity()I
    .locals 2

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public nodeCreated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->node_created:Z

    return v0
.end method

.method public openNodeScope(Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->jjtOpen()V

    return-void
.end method

.method public peekNode()Lorg/apache/velocity/runtime/parser/node/Node;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodes:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/apache/velocity/runtime/parser/node/Node;

    .line 9
    .line 10
    return-object v0
.end method

.method public popNode()Lorg/apache/velocity/runtime/parser/node/Node;
    .locals 2

    iget v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    iget v1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/parser/node/Node;

    return-object v0
.end method

.method public pushNode(Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->marks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->sp:I

    iput v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->mk:I

    return-void
.end method

.method public rootNode()Lorg/apache/velocity/runtime/parser/node/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/node/JJTParserState;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/velocity/runtime/parser/node/Node;

    return-object v0
.end method
