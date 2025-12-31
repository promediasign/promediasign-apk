.class public Lorg/h2/bnf/RuleList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/bnf/Rule;


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/bnf/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private mapSet:Z

.field private final or:Z


# direct methods
.method public constructor <init>(Lorg/h2/bnf/Rule;Lorg/h2/bnf/Rule;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    instance-of v1, p1, Lorg/h2/bnf/RuleList;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/h2/bnf/RuleList;

    iget-boolean v2, v1, Lorg/h2/bnf/RuleList;->or:Z

    if-ne v2, p3, :cond_0

    iget-object p1, v1, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    instance-of p1, p2, Lorg/h2/bnf/RuleList;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/h2/bnf/RuleList;

    iget-boolean v1, p1, Lorg/h2/bnf/RuleList;->or:Z

    if-ne v1, p3, :cond_1

    iget-object p1, p1, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iput-boolean p3, p0, Lorg/h2/bnf/RuleList;->or:Z

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/bnf/RuleList;->or:Z

    iget-object v1, p0, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lorg/h2/bnf/BnfVisitor;->visitRuleList(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->stopIfRequired()V

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/h2/bnf/RuleList;->or:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/bnf/Rule;

    invoke-virtual {p1, v0}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    invoke-interface {v4, p1}, Lorg/h2/bnf/Rule;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_1
    return v2

    :cond_2
    iget-object v1, p0, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/bnf/Rule;

    invoke-interface {v4, p1}, Lorg/h2/bnf/Rule;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v2

    :cond_4
    return v3
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/h2/bnf/RuleList;->mapSet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/bnf/RuleList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/bnf/Rule;

    invoke-interface {v1, p1}, Lorg/h2/bnf/Rule;->setLinks(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/bnf/RuleList;->mapSet:Z

    :cond_1
    return-void
.end method
