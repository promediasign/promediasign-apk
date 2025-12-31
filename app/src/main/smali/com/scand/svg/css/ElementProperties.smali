.class public Lcom/scand/svg/css/ElementProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private byPseudoElement:Ljava/util/Hashtable;

.field private result:Lcom/scand/svg/css/InlineRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/scand/svg/css/InlineRule;

    invoke-direct {v0}, Lcom/scand/svg/css/InlineRule;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/ElementProperties;->result:Lcom/scand/svg/css/InlineRule;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/scand/svg/css/ElementProperties;

    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->result:Lcom/scand/svg/css/InlineRule;

    iget-object v1, p1, Lcom/scand/svg/css/ElementProperties;->result:Lcom/scand/svg/css/InlineRule;

    invoke-virtual {v0, v1}, Lcom/scand/svg/css/InlineRule;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p1, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    return v1

    :cond_6
    if-eq v0, v3, :cond_7

    return v2

    :cond_7
    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    iget-object p1, p1, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPropertySet()Lcom/scand/svg/css/InlineRule;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->result:Lcom/scand/svg/css/InlineRule;

    return-object v0
.end method

.method public getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/css/InlineRule;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/scand/svg/css/InlineRule;

    invoke-direct {v0}, Lcom/scand/svg/css/InlineRule;-><init>()V

    iget-object v1, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->result:Lcom/scand/svg/css/InlineRule;

    invoke-virtual {v0}, Lcom/scand/svg/css/InlineRule;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public pseudoElements()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/ElementProperties;->byPseudoElement:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
