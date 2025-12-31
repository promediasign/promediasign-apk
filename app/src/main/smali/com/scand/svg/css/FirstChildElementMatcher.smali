.class public Lcom/scand/svg/css/FirstChildElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field private firstChild:Z


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/PseudoClassSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scand/svg/css/FirstChildElementMatcher;->firstChild:Z

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 0

    iget-boolean p1, p0, Lcom/scand/svg/css/FirstChildElementMatcher;->firstChild:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/scand/svg/css/FirstChildElementMatcher;->firstChild:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
