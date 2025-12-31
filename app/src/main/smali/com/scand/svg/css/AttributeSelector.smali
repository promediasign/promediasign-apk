.class public Lcom/scand/svg/css/AttributeSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field attr:Ljava/lang/String;

.field ns:Ljava/lang/String;

.field op:Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field value:Lcom/scand/svg/css/CSSValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/scand/svg/css/AttributeSelector;->ns:Ljava/lang/String;

    iput-object p3, p0, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    iput-object p4, p0, Lcom/scand/svg/css/AttributeSelector;->op:Ljava/lang/String;

    iput-object p5, p0, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

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
    check-cast p1, Lcom/scand/svg/css/AttributeSelector;

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p1, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->ns:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/scand/svg/css/AttributeSelector;->ns:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    return v2

    :cond_5
    iget-object v0, p1, Lcom/scand/svg/css/AttributeSelector;->ns:Ljava/lang/String;

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    if-eqz v0, :cond_8

    iget-object v1, p1, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    return v2

    :cond_8
    iget-object v0, p1, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    if-eqz v0, :cond_9

    return v2

    :cond_9
    iget-object v0, p1, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    iget-object v1, p0, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/scand/svg/css/AttributeSelector;->op:Ljava/lang/String;

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->op:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    return v2
.end method

.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 7

    new-instance v6, Lcom/scand/svg/css/AttributeElementMatcher;

    iget-object v2, p0, Lcom/scand/svg/css/AttributeSelector;->ns:Ljava/lang/String;

    iget-object v3, p0, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    iget-object v4, p0, Lcom/scand/svg/css/AttributeSelector;->op:Ljava/lang/String;

    iget-object v5, p0, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/scand/svg/css/AttributeElementMatcher;-><init>(Lcom/scand/svg/css/Selector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6
.end method

.method public getSpecificity()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/scand/svg/css/AttributeSelector;->op:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->ns:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    const-string v1, "|"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->attr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->op:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/AttributeSelector;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/CSSValue;->serialize(Ljava/io/PrintWriter;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
