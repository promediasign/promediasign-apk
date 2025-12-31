.class Lcom/scand/svg/css/CascadeEngine$MatcherList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scand/svg/css/CascadeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatcherList"
.end annotation


# instance fields
.field matchers:Ljava/util/Vector;

.field mediaList:Ljava/util/Set;

.field stylesheet:Lcom/scand/svg/css/CSSStylesheet;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/CSSStylesheet;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CascadeEngine$MatcherList;->matchers:Ljava/util/Vector;

    iput-object p1, p0, Lcom/scand/svg/css/CascadeEngine$MatcherList;->stylesheet:Lcom/scand/svg/css/CSSStylesheet;

    iput-object p2, p0, Lcom/scand/svg/css/CascadeEngine$MatcherList;->mediaList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addSelectorRule(Lcom/scand/svg/css/SelectorRule;IIZ)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/scand/svg/css/SelectorRule;->selectors:[Lcom/scand/svg/css/Selector;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    if-nez p4, :cond_0

    invoke-static {v1}, Lcom/scand/svg/css/CascadeEngine;->access$000(Lcom/scand/svg/css/Selector;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/scand/svg/css/CascadeEngine;->access$100(Lcom/scand/svg/css/Selector;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/scand/svg/css/Selector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v1

    :goto_1
    if-lez p2, :cond_1

    const-string v2, "*"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/scand/svg/css/CascadeEngine$MatcherList;->matchers:Ljava/util/Vector;

    new-instance v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    invoke-direct {v3, v1, p1, p3}, Lcom/scand/svg/css/CascadeEngine$MatcherRule;-><init>(Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/SelectorRule;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
