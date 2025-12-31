.class public Lcom/scand/svg/css/ChildElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field private child:Lcom/scand/svg/css/ElementMatcher;

.field private parent:Lcom/scand/svg/css/ElementMatcher;

.field private parentMatched:Z

.field private state:Lcom/scand/svg/css/SparseStack;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/ChildSelector;Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/ElementMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    new-instance p1, Lcom/scand/svg/css/SparseStack;

    invoke-direct {p1}, Lcom/scand/svg/css/SparseStack;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/ChildElementMatcher;->state:Lcom/scand/svg/css/SparseStack;

    iput-object p2, p0, Lcom/scand/svg/css/ChildElementMatcher;->parent:Lcom/scand/svg/css/ElementMatcher;

    iput-object p3, p0, Lcom/scand/svg/css/ChildElementMatcher;->child:Lcom/scand/svg/css/ElementMatcher;

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/ChildElementMatcher;->parent:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    iget-object v0, p0, Lcom/scand/svg/css/ChildElementMatcher;->state:Lcom/scand/svg/css/SparseStack;

    invoke-virtual {v0}, Lcom/scand/svg/css/SparseStack;->pop()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/scand/svg/css/ChildElementMatcher;->parentMatched:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scand/svg/css/ChildElementMatcher;->child:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    :cond_1
    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 4

    iget-boolean v0, p0, Lcom/scand/svg/css/ChildElementMatcher;->parentMatched:Z

    iget-object v1, p0, Lcom/scand/svg/css/ChildElementMatcher;->state:Lcom/scand/svg/css/SparseStack;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/scand/svg/css/SparseStack;->push(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/scand/svg/css/ChildElementMatcher;->parent:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v1, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/scand/svg/css/MatchResult;->getPseudoElement()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/scand/svg/css/ChildElementMatcher;->parentMatched:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scand/svg/css/ChildElementMatcher;->child:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2
.end method
