.class public Lcom/scand/svg/css/SiblingSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field private curr:Lcom/scand/svg/css/Selector;

.field private prev:Lcom/scand/svg/css/Selector;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/Selector;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/SiblingSelector;->prev:Lcom/scand/svg/css/Selector;

    iput-object p2, p0, Lcom/scand/svg/css/SiblingSelector;->curr:Lcom/scand/svg/css/Selector;

    return-void
.end method


# virtual methods
.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 3

    new-instance v0, Lcom/scand/svg/css/SiblingElementMatcher;

    iget-object v1, p0, Lcom/scand/svg/css/SiblingSelector;->prev:Lcom/scand/svg/css/Selector;

    invoke-virtual {v1}, Lcom/scand/svg/css/Selector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/scand/svg/css/SiblingSelector;->curr:Lcom/scand/svg/css/Selector;

    invoke-virtual {v2}, Lcom/scand/svg/css/Selector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scand/svg/css/SiblingElementMatcher;-><init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/ElementMatcher;)V

    return-object v0
.end method

.method public getSpecificity()I
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/SiblingSelector;->prev:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0}, Lcom/scand/svg/css/Selector;->getSpecificity()I

    move-result v0

    iget-object v1, p0, Lcom/scand/svg/css/SiblingSelector;->curr:Lcom/scand/svg/css/Selector;

    invoke-virtual {v1}, Lcom/scand/svg/css/Selector;->getSpecificity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/scand/svg/css/Selector;->addSpecificity(II)I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/SiblingSelector;->prev:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/Selector;->serialize(Ljava/io/PrintWriter;)V

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/SiblingSelector;->curr:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/Selector;->serialize(Ljava/io/PrintWriter;)V

    return-void
.end method
