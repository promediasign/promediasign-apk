.class public Lcom/scand/svg/css/AnyElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/AnyElementSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 0

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 0

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    return-object p1
.end method
