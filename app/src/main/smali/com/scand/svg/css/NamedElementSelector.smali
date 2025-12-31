.class public Lcom/scand/svg/css/NamedElementSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private ns:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/NamedElementSelector;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    iput-object p3, p0, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/scand/svg/css/NamedElementSelector;

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/scand/svg/css/NamedElementSelector;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p1, Lcom/scand/svg/css/NamedElementSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    return v2

    :cond_5
    iget-object v0, p1, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object p1, p1, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 3

    new-instance v0, Lcom/scand/svg/css/NamedElementMatcher;

    iget-object v1, p0, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    iget-object v2, p0, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/scand/svg/css/NamedElementMatcher;-><init>(Lcom/scand/svg/css/NamedElementSelector;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getElementNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasElementNamespace()Z
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/scand/svg/css/NamedElementSelector;->ns:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/scand/svg/css/NamedElementSelector;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/NamedElementSelector;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
