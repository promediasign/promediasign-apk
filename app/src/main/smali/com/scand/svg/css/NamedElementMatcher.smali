.class public Lcom/scand/svg/css/NamedElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private ns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/NamedElementSelector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    iput-object p2, p0, Lcom/scand/svg/css/NamedElementMatcher;->ns:Ljava/lang/String;

    iput-object p3, p0, Lcom/scand/svg/css/NamedElementMatcher;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public popElement()V
    .locals 0

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 0

    iget-object p3, p0, Lcom/scand/svg/css/NamedElementMatcher;->name:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/scand/svg/css/NamedElementMatcher;->ns:Ljava/lang/String;

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    sget-object p1, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
