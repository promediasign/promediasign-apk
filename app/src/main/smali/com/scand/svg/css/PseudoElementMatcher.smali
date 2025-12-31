.class public Lcom/scand/svg/css/PseudoElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field result:Lcom/scand/svg/css/MatchResult;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/PseudoElementSelector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    new-instance p1, Lcom/scand/svg/css/MatchResult;

    invoke-direct {p1, p2}, Lcom/scand/svg/css/MatchResult;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/scand/svg/css/PseudoElementMatcher;->result:Lcom/scand/svg/css/MatchResult;

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 0

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 0

    iget-object p1, p0, Lcom/scand/svg/css/PseudoElementMatcher;->result:Lcom/scand/svg/css/MatchResult;

    return-object p1
.end method
