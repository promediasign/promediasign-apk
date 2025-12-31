.class public Lcom/scand/svg/css/CascadeEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scand/svg/css/CascadeEngine$MatcherRule;,
        Lcom/scand/svg/css/CascadeEngine$MatcherList;,
        Lcom/scand/svg/css/CascadeEngine$CascadeValue;
    }
.end annotation


# instance fields
.field classMap:Ljava/util/Hashtable;

.field depth:I

.field matcherLists:Ljava/util/Vector;

.field order:I

.field result:Lcom/scand/svg/css/CascadeResult;

.field tagMap:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->matcherLists:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->classMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->tagMap:Ljava/util/Hashtable;

    return-void
.end method

.method public static synthetic access$000(Lcom/scand/svg/css/Selector;)Z
    .locals 0

    invoke-static {p0}, Lcom/scand/svg/css/CascadeEngine;->isClassSelector(Lcom/scand/svg/css/Selector;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/scand/svg/css/Selector;)Z
    .locals 0

    invoke-static {p0}, Lcom/scand/svg/css/CascadeEngine;->isTagSelector(Lcom/scand/svg/css/Selector;)Z

    move-result p0

    return p0
.end method

.method private applyClassRules(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)V
    .locals 9

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/scand/svg/css/ClassElementMatcher;->getClassAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-interface {p3, p2, p1}, Lcom/scand/svg/css/util/SMap;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, " "

    invoke-direct {p2, p1, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/scand/svg/css/CascadeEngine;->classMap:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    iget-object v2, v1, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->matcher:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v2}, Lcom/scand/svg/css/ElementMatcher;->getSelector()Lcom/scand/svg/css/Selector;

    move-result-object v4

    iget v5, v1, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->order:I

    iget-object v6, v1, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->rule:Lcom/scand/svg/css/SelectorRule;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/scand/svg/css/CascadeEngine;->applyRule(Lcom/scand/svg/css/Selector;ILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyRule(IILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V
    .locals 7

    .line 1
    if-eqz p3, :cond_8

    iget-object p3, p3, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    if-nez p3, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/css/CSSValue;

    instance-of v2, v0, Lcom/scand/svg/css/CSSImportant;

    if-nez p5, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/scand/svg/css/CascadeEngine;->result:Lcom/scand/svg/css/CascadeResult;

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/scand/svg/css/CascadeResult;->getProperties()Lcom/scand/svg/css/ElementProperties;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/scand/svg/css/CascadeResult;->getPropertiesForMedia(Ljava/lang/String;)Lcom/scand/svg/css/ElementProperties;

    move-result-object v4

    :goto_2
    if-nez p4, :cond_5

    invoke-virtual {v4}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v4

    goto :goto_3

    :cond_5
    invoke-virtual {v4, p4}, Lcom/scand/svg/css/ElementProperties;->getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v4

    :goto_3
    invoke-virtual {v4, v1}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v5

    check-cast v5, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    new-instance v6, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    invoke-direct {v6, v0, p1, v2, p2}, Lcom/scand/svg/css/CascadeEngine$CascadeValue;-><init>(Lcom/scand/svg/css/CSSValue;III)V

    if-eqz v5, :cond_6

    invoke-virtual {v6, v5}, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->compareSpecificity(Lcom/scand/svg/css/CascadeEngine$CascadeValue;)I

    move-result v5

    if-lez v5, :cond_7

    :cond_6
    invoke-virtual {v4, v1, v6}, Lcom/scand/svg/css/BaseRule;->set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    :cond_7
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method private applyRule(Lcom/scand/svg/css/Selector;ILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Lcom/scand/svg/css/Selector;->getSpecificity()I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/scand/svg/css/CascadeEngine;->applyRule(IILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private applyTagRules(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->tagMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    iget-object v3, v2, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->matcher:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v3}, Lcom/scand/svg/css/ElementMatcher;->getSelector()Lcom/scand/svg/css/Selector;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/scand/svg/css/NamedElementSelector;

    invoke-virtual {v5}, Lcom/scand/svg/css/NamedElementSelector;->hasElementNamespace()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v5}, Lcom/scand/svg/css/NamedElementSelector;->getElementNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v6, v2, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->order:I

    iget-object v7, v2, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->rule:Lcom/scand/svg/css/SelectorRule;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/scand/svg/css/CascadeEngine;->applyRule(Lcom/scand/svg/css/Selector;ILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private collectSimpleSelectors(Lcom/scand/svg/css/SelectorRule;I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/scand/svg/css/SelectorRule;->selectors:[Lcom/scand/svg/css/Selector;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/scand/svg/css/CascadeEngine;->isClassSelector(Lcom/scand/svg/css/Selector;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/scand/svg/css/ClassSelector;

    iget-object v2, p0, Lcom/scand/svg/css/CascadeEngine;->classMap:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Lcom/scand/svg/css/CascadeEngine;->classMap:Ljava/util/Hashtable;

    iget-object v4, v1, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    invoke-virtual {v1}, Lcom/scand/svg/css/ClassSelector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v1

    invoke-direct {v3, v1, p1, p2}, Lcom/scand/svg/css/CascadeEngine$MatcherRule;-><init>(Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/SelectorRule;I)V

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/scand/svg/css/CascadeEngine;->isTagSelector(Lcom/scand/svg/css/Selector;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Lcom/scand/svg/css/NamedElementSelector;

    iget-object v2, p0, Lcom/scand/svg/css/CascadeEngine;->tagMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/scand/svg/css/NamedElementSelector;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, p0, Lcom/scand/svg/css/CascadeEngine;->tagMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/scand/svg/css/NamedElementSelector;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    invoke-virtual {v1}, Lcom/scand/svg/css/NamedElementSelector;->getElementMatcher()Lcom/scand/svg/css/ElementMatcher;

    move-result-object v1

    invoke-direct {v3, v1, p1, p2}, Lcom/scand/svg/css/CascadeEngine$MatcherRule;-><init>(Lcom/scand/svg/css/ElementMatcher;Lcom/scand/svg/css/SelectorRule;I)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static isClassSelector(Lcom/scand/svg/css/Selector;)Z
    .locals 0

    instance-of p0, p0, Lcom/scand/svg/css/ClassSelector;

    return p0
.end method

.method private static isTagSelector(Lcom/scand/svg/css/Selector;)Z
    .locals 0

    instance-of p0, p0, Lcom/scand/svg/css/NamedElementSelector;

    return p0
.end method


# virtual methods
.method public add(Lcom/scand/svg/css/CSSStylesheet;Ljava/util/Set;)V
    .locals 5

    new-instance v0, Lcom/scand/svg/css/CascadeEngine$MatcherList;

    invoke-direct {v0, p1, p2}, Lcom/scand/svg/css/CascadeEngine$MatcherList;-><init>(Lcom/scand/svg/css/CSSStylesheet;Ljava/util/Set;)V

    iget-object p1, p1, Lcom/scand/svg/css/CSSStylesheet;->statements:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/scand/svg/css/SelectorRule;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/scand/svg/css/SelectorRule;

    if-nez p2, :cond_1

    iget v2, p0, Lcom/scand/svg/css/CascadeEngine;->order:I

    invoke-direct {p0, v1, v2}, Lcom/scand/svg/css/CascadeEngine;->collectSimpleSelectors(Lcom/scand/svg/css/SelectorRule;I)V

    :cond_1
    iget v2, p0, Lcom/scand/svg/css/CascadeEngine;->depth:I

    iget v3, p0, Lcom/scand/svg/css/CascadeEngine;->order:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/scand/svg/css/CascadeEngine;->order:I

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scand/svg/css/CascadeEngine$MatcherList;->addSelectorRule(Lcom/scand/svg/css/SelectorRule;IIZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/scand/svg/css/CascadeEngine;->matcherLists:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyInlineRule(Lcom/scand/svg/css/InlineRule;)V
    .locals 6

    iget v2, p0, Lcom/scand/svg/css/CascadeEngine;->order:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v1, 0x7f000000

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/scand/svg/css/CascadeEngine;->applyRule(IILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public getCascadeResult()Lcom/scand/svg/css/CascadeResult;
    .locals 13

    new-instance v0, Lcom/scand/svg/css/CascadeResult;

    invoke-direct {v0}, Lcom/scand/svg/css/CascadeResult;-><init>()V

    iget-object v1, p0, Lcom/scand/svg/css/CascadeEngine;->result:Lcom/scand/svg/css/CascadeResult;

    invoke-virtual {v1}, Lcom/scand/svg/css/CascadeResult;->media()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/scand/svg/css/CascadeEngine;->result:Lcom/scand/svg/css/CascadeResult;

    invoke-virtual {v2}, Lcom/scand/svg/css/CascadeResult;->getProperties()Lcom/scand/svg/css/ElementProperties;

    move-result-object v2

    if-eqz v1, :cond_7

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/scand/svg/css/CascadeEngine;->result:Lcom/scand/svg/css/CascadeResult;

    invoke-virtual {v4, v3}, Lcom/scand/svg/css/CascadeResult;->getPropertiesForMedia(Ljava/lang/String;)Lcom/scand/svg/css/ElementProperties;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scand/svg/css/ElementProperties;->pseudoElements()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/scand/svg/css/ElementProperties;->getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v7

    invoke-virtual {v2, v6}, Lcom/scand/svg/css/ElementProperties;->getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v8

    invoke-virtual {v7}, Lcom/scand/svg/css/BaseRule;->properties()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v11

    check-cast v11, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    invoke-virtual {v8, v10}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v12

    check-cast v12, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    if-eqz v12, :cond_3

    invoke-virtual {v11, v12}, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->compareSpecificity(Lcom/scand/svg/css/CascadeEngine$CascadeValue;)I

    move-result v12

    if-lez v12, :cond_2

    :cond_3
    iget-object v11, v11, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v0, v3}, Lcom/scand/svg/css/CascadeResult;->getPropertiesForMedia(Ljava/lang/String;)Lcom/scand/svg/css/ElementProperties;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/scand/svg/css/ElementProperties;->getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lcom/scand/svg/css/BaseRule;->set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v4

    invoke-virtual {v2}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v5

    invoke-virtual {v4}, Lcom/scand/svg/css/BaseRule;->properties()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v8

    check-cast v8, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    invoke-virtual {v5, v7}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v9

    check-cast v9, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    if-eqz v9, :cond_6

    invoke-virtual {v8, v9}, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->compareSpecificity(Lcom/scand/svg/css/CascadeEngine$CascadeValue;)I

    move-result v9

    if-lez v9, :cond_5

    :cond_6
    iget-object v8, v8, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v0, v3}, Lcom/scand/svg/css/CascadeResult;->getPropertiesForMedia(Ljava/lang/String;)Lcom/scand/svg/css/ElementProperties;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/scand/svg/css/BaseRule;->set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Lcom/scand/svg/css/ElementProperties;->pseudoElements()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/scand/svg/css/ElementProperties;->getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scand/svg/css/BaseRule;->properties()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v7

    check-cast v7, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    invoke-virtual {v0}, Lcom/scand/svg/css/CascadeResult;->getProperties()Lcom/scand/svg/css/ElementProperties;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/scand/svg/css/ElementProperties;->getPropertySetForPseudoElement(Ljava/lang/String;)Lcom/scand/svg/css/InlineRule;

    move-result-object v8

    iget-object v7, v7, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v8, v6, v7}, Lcom/scand/svg/css/BaseRule;->set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scand/svg/css/BaseRule;->properties()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/scand/svg/css/BaseRule;->get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;

    move-result-object v4

    check-cast v4, Lcom/scand/svg/css/CascadeEngine$CascadeValue;

    invoke-virtual {v0}, Lcom/scand/svg/css/CascadeResult;->getProperties()Lcom/scand/svg/css/ElementProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scand/svg/css/ElementProperties;->getPropertySet()Lcom/scand/svg/css/InlineRule;

    move-result-object v5

    iget-object v4, v4, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v5, v3, v4}, Lcom/scand/svg/css/BaseRule;->set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method public popElement()V
    .locals 3

    iget v0, p0, Lcom/scand/svg/css/CascadeEngine;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/scand/svg/css/CascadeEngine;->depth:I

    iget-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->matcherLists:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scand/svg/css/CascadeEngine$MatcherList;

    iget-object v1, v1, Lcom/scand/svg/css/CascadeEngine$MatcherList;->matchers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    iget-object v2, v2, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->matcher:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v2}, Lcom/scand/svg/css/ElementMatcher;->popElement()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)V
    .locals 12

    iget v0, p0, Lcom/scand/svg/css/CascadeEngine;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scand/svg/css/CascadeEngine;->depth:I

    new-instance v0, Lcom/scand/svg/css/CascadeResult;

    invoke-direct {v0}, Lcom/scand/svg/css/CascadeResult;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->result:Lcom/scand/svg/css/CascadeResult;

    invoke-direct {p0, p1, p2}, Lcom/scand/svg/css/CascadeEngine;->applyTagRules(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/scand/svg/css/CascadeEngine;->applyClassRules(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)V

    iget-object v0, p0, Lcom/scand/svg/css/CascadeEngine;->matcherLists:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scand/svg/css/CascadeEngine$MatcherList;

    iget-object v2, v1, Lcom/scand/svg/css/CascadeEngine$MatcherList;->matchers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;

    iget-object v4, v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->matcher:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v4, p1, p2, p3}, Lcom/scand/svg/css/ElementMatcher;->pushElement(Ljava/lang/String;Ljava/lang/String;Lcom/scand/svg/css/util/SMap;)Lcom/scand/svg/css/MatchResult;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->matcher:Lcom/scand/svg/css/ElementMatcher;

    invoke-virtual {v5}, Lcom/scand/svg/css/ElementMatcher;->getSelector()Lcom/scand/svg/css/Selector;

    move-result-object v7

    iget v8, v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->order:I

    iget-object v9, v3, Lcom/scand/svg/css/CascadeEngine$MatcherRule;->rule:Lcom/scand/svg/css/SelectorRule;

    iget-object v10, v4, Lcom/scand/svg/css/MatchResult;->pseudoElement:Ljava/lang/String;

    iget-object v11, v1, Lcom/scand/svg/css/CascadeEngine$MatcherList;->mediaList:Ljava/util/Set;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/scand/svg/css/CascadeEngine;->applyRule(Lcom/scand/svg/css/Selector;ILcom/scand/svg/css/BaseRule;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_2
    return-void
.end method
