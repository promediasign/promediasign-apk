.class public Lcom/scand/svg/css/SiblingElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field private curr:Lcom/scand/svg/css/ElementMatcher;

.field private prev:Lcom/scand/svg/css/ElementMatcher;

.field prevMatched:Z

.field private state:Lcom/scand/svg/css/SparseStack;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/ElementMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    new-instance p1, Lcom/scand/svg/css/SparseStack;

    invoke-direct {p1}, Lcom/scand/svg/css/SparseStack;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/SiblingElementMatcher;->state:Lcom/scand/svg/css/SparseStack;

    iput-object p2, p0, Lcom/scand/svg/css/SiblingElementMatcher;->prev:Lcom/scand/svg/css/ElementMatcher;

    iput-object p3, p0, Lcom/scand/svg/css/SiblingElementMatcher;->curr:Lcom/scand/svg/css/ElementMatcher;

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/SiblingElementMatcher;->prev:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    iget-object v0, p0, Lcom/scand/svg/css/SiblingElementMatcher;->curr:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    iget-object v0, p0, Lcom/scand/svg/css/SiblingElementMatcher;->state:Lcom/scand/svg/css/SparseStack;

    invoke-virtual {v0}, Lcom/scand/svg/css/SparseStack;->pop()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/scand/svg/css/SiblingElementMatcher;->prevMatched:Z

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 3

    iget-object v0, p0, Lcom/scand/svg/css/SiblingElementMatcher;->prev:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/scand/svg/css/MatchResult;->getPseudoElement()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/scand/svg/css/SiblingElementMatcher;->state:Lcom/scand/svg/css/SparseStack;

    invoke-virtual {v2, v0}, Lcom/scand/svg/css/SparseStack;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/scand/svg/css/SiblingElementMatcher;->curr:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object p1

    iget-boolean p2, p0, Lcom/scand/svg/css/SiblingElementMatcher;->prevMatched:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/scand/svg/css/SiblingElementMatcher;->prevMatched:Z

    return-object v1
.end method
