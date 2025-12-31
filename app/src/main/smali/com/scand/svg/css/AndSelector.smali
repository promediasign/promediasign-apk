.class public Lcom/scand/svg/css/AndSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field first:Lcom/scand/svg/css/Selector;

.field second:Lcom/scand/svg/css/Selector;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/Selector;Lcom/scand/svg/css/Selector;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    iput-object p2, p0, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    check-cast p1, Lcom/scand/svg/css/AndSelector;

    iget-object v1, p1, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    iget-object v2, p0, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    iget-object v1, p0, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 3

    new-instance v0, Lcom/scand/svg/css/AndElementMatcher;

    iget-object v1, p0, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    invoke-virtual {v1}, Lcom/scand/svg/css/Selector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    invoke-virtual {v2}, Lcom/scand/svg/css/Selector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/scand/svg/css/AndElementMatcher;-><init>(Lcom/scand/svg/css/AndSelector;Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/ElementMatcher;)V

    return-object v0
.end method

.method public getSpecificity()I
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0}, Lcom/scand/svg/css/Selector;->getSpecificity()I

    move-result v0

    iget-object v1, p0, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    invoke-virtual {v1}, Lcom/scand/svg/css/Selector;->getSpecificity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/scand/svg/css/Selector;->addSpecificity(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/AndSelector;->first:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/Selector;->serialize(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/scand/svg/css/AndSelector;->second:Lcom/scand/svg/css/Selector;

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/Selector;->serialize(Ljava/io/PrintWriter;)V

    return-void
.end method
