.class public Lcom/scand/svg/css/AndElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field first:Lcom/scand/svg/css/ElementMatcher;

.field second:Lcom/scand/svg/css/ElementMatcher;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/AndSelector;Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/ElementMatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/scand/svg/css/AndElementMatcher;->first:Lcom/scand/svg/css/ElementMatcher;

    iput-object p3, p0, Lcom/scand/svg/css/AndElementMatcher;->second:Lcom/scand/svg/css/ElementMatcher;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public popElement()V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/AndElementMatcher;->second:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    iget-object v0, p0, Lcom/scand/svg/css/AndElementMatcher;->first:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/AndElementMatcher;->first:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object v0

    iget-object v1, p0, Lcom/scand/svg/css/AndElementMatcher;->second:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v1, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/scand/svg/css/MatchResult;->getPseudoElement()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/scand/svg/css/MatchResult;->getPseudoElement()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p2
.end method
