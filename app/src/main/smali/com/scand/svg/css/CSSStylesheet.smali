.class public Lcom/scand/svg/css/CSSStylesheet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field rulesBySelector:Ljava/util/Hashtable;

.field statements:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CSSStylesheet;->statements:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/CSSStylesheet;->rulesBySelector:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/scand/svg/css/SelectorRule;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/scand/svg/css/SelectorRule;

    iget-object v0, v0, Lcom/scand/svg/css/SelectorRule;->selectors:[Lcom/scand/svg/css/Selector;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/scand/svg/css/CSSStylesheet;->rulesBySelector:Ljava/util/Hashtable;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/CSSStylesheet;->statements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
