.class public Lorg/mozilla/javascript/ast/ArrayComprehension;
.super Lorg/mozilla/javascript/ast/Scope;
.source "SourceFile"


# instance fields
.field private filter:Lorg/mozilla/javascript/ast/AstNode;

.field private ifPosition:I

.field private loops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;",
            ">;"
        }
    .end annotation
.end field

.field private lp:I

.field private result:Lorg/mozilla/javascript/ast/AstNode;

.field private rp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    iput v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    const/16 v0, 0x9e

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    const/16 p1, 0x9e

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Scope;-><init>(II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    const/16 p1, 0x9e

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public addLoop(Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public getFilter()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getFilterLp()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    return v0
.end method

.method public getFilterRp()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    return v0
.end method

.method public getIfPosition()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    return v0
.end method

.method public getLoops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setFilter(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setFilterLp(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->lp:I

    return-void
.end method

.method public setFilterRp(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->rp:I

    return-void
.end method

.method public setIfPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->ifPosition:I

    return-void
.end method

.method public setLoops(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ArrayComprehension;->addLoop(Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setResult(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 p1, 0xfa

    .line 2
    .line 3
    const-string v0, "["

    .line 4
    .line 5
    invoke-static {p1, v0}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->toSource(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string v0, " if ("

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ")"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    const-string v0, "]"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 2

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->result:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->loops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ArrayComprehension;->filter:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_2
    return-void
.end method
