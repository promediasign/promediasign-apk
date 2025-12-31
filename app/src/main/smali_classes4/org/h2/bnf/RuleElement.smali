.class public Lorg/h2/bnf/RuleElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/bnf/Rule;


# instance fields
.field private final keyword:Z

.field private link:Lorg/h2/bnf/Rule;

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/h2/bnf/RuleElement;->keyword:Z

    invoke-static {p2}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "function"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p0, Lorg/h2/bnf/RuleElement;->type:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/h2/bnf/BnfVisitor;)V
    .locals 3

    iget-boolean v0, p0, Lorg/h2/bnf/RuleElement;->keyword:Z

    iget-object v1, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/bnf/RuleElement;->link:Lorg/h2/bnf/Rule;

    invoke-interface {p1, v0, v1, v2}, Lorg/h2/bnf/BnfVisitor;->visitRuleElement(ZLjava/lang/String;Lorg/h2/bnf/Rule;)V

    return-void
.end method

.method public autoComplete(Lorg/h2/bnf/Sentence;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->stopIfRequired()V

    iget-boolean v0, p0, Lorg/h2/bnf/RuleElement;->keyword:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/bnf/Sentence;->getQueryUpper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "_"

    iget-object v2, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/h2/bnf/Bnf;->startWithSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/h2/bnf/Sentence;->setQuery(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/h2/bnf/RuleElement;->type:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/h2/bnf/Sentence;->add(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lorg/h2/bnf/RuleElement;->link:Lorg/h2/bnf/Rule;

    invoke-interface {v0, p1}, Lorg/h2/bnf/Rule;->autoComplete(Lorg/h2/bnf/Sentence;)Z

    move-result p1

    return p1
.end method

.method public setLinks(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/bnf/RuleHead;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/h2/bnf/RuleElement;->link:Lorg/h2/bnf/Rule;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/h2/bnf/Rule;->setLinks(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lorg/h2/bnf/RuleElement;->keyword:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/h2/bnf/Bnf;->getRuleMapKey(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/h2/bnf/RuleHead;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/h2/bnf/RuleHead;->getRule()Lorg/h2/bnf/Rule;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lorg/h2/bnf/RuleElement;->link:Lorg/h2/bnf/Rule;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Unknown "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lorg/h2/bnf/RuleElement;->name:Ljava/lang/String;

    .line 58
    .line 59
    const-string v3, "/"

    .line 60
    .line 61
    invoke-static {v1, v2, v3, v0}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method
