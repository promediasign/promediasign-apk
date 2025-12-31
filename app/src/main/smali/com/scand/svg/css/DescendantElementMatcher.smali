.class public Lcom/scand/svg/css/DescendantElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field private ancestor:Lcom/scand/svg/css/ElementMatcher;

.field private ancestorMatchedDepth:I

.field private descendant:Lcom/scand/svg/css/ElementMatcher;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/DescendantSelector;Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/ElementMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    iput-object p2, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestor:Lcom/scand/svg/css/ElementMatcher;

    iput-object p3, p0, Lcom/scand/svg/css/DescendantElementMatcher;->descendant:Lcom/scand/svg/css/ElementMatcher;

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 1

    iget v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestorMatchedDepth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->descendant:Lcom/scand/svg/css/ElementMatcher;

    :goto_0
    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestor:Lcom/scand/svg/css/ElementMatcher;

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestorMatchedDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestorMatchedDepth:I

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 2

    iget v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestorMatchedDepth:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestorMatchedDepth:I

    iget-object v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->descendant:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestor:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/scand/svg/css/MatchResult;->getPseudoElement()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iput v1, p0, Lcom/scand/svg/css/DescendantElementMatcher;->ancestorMatchedDepth:I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
