.class public Lcom/scand/svg/css/AttributeElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field attr:Ljava/lang/String;

.field ns:Ljava/lang/String;

.field op:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/Selector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    iput-object p2, p0, Lcom/scand/svg/css/AttributeElementMatcher;->ns:Ljava/lang/String;

    iput-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->attr:Ljava/lang/String;

    iput-object p4, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    iput-object p5, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    return-void
.end method

.method public static isInList(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    :goto_0
    add-int v6, v5, v2

    if-ne v1, v6, :cond_2

    invoke-virtual {p0, v5, p1, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v5, v1, 0x1

    if-le v5, v3, :cond_3

    return v4

    :cond_3
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public popElement()V
    .locals 0

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/scand/svg/css/AttributeElementMatcher;->ns:Ljava/lang/String;

    iget-object v0, p0, Lcom/scand/svg/css/AttributeElementMatcher;->attr:Ljava/lang/String;

    invoke-interface {p3, p2, v0}, Lcom/scand/svg/css/util/SMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    if-nez p3, :cond_2

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    return-object p1

    :cond_2
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_3
    return-object p1

    :cond_4
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    const-string v0, "~="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/scand/svg/css/AttributeElementMatcher;->isInList(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_5
    return-object p1

    :cond_6
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    const-string v0, "|="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "-"

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_8
    return-object p1

    :cond_9
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    const-string v0, "^="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_a
    return-object p1

    :cond_b
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    const-string v0, "$="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_c
    return-object p1

    :cond_d
    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    const-string v0, "*="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->value:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_e

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_e
    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown op: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/scand/svg/css/AttributeElementMatcher;->op:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
