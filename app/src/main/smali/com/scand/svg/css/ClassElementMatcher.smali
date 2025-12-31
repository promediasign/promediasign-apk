.class public Lcom/scand/svg/css/ClassElementMatcher;
.super Lcom/scand/svg/css/ElementMatcher;
.source "SourceFile"


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/ClassSelector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/css/ElementMatcher;-><init>(Lcom/scand/svg/css/Selector;)V

    iput-object p2, p0, Lcom/scand/svg/css/ClassElementMatcher;->className:Ljava/lang/String;

    return-void
.end method

.method public static getClassAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.gribuser.ru/xml/fictionbook/2.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "style"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "name"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "class"

    return-object p0
.end method


# virtual methods
.method public popElement()V
    .locals 0

    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;
    .locals 1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/scand/svg/css/ClassElementMatcher;->getClassAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string p2, ""

    invoke-interface {p3, p2, p1}, Lcom/scand/svg/css/util/SMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object p2, p0, Lcom/scand/svg/css/ClassElementMatcher;->className:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/scand/svg/css/AttributeElementMatcher;->isInList(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object v0, Lcom/scand/svg/css/MatchResult;->ALWAYS:Lcom/scand/svg/css/MatchResult;

    :cond_3
    return-object v0
.end method
