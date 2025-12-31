.class Lorg/jdom/DescendantIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DescendantIterator.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:28:58 $ $Name:  $"


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private nextIterator:Ljava/util/Iterator;

.field private stack:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/jdom/Parent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/jdom/Parent;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parent parameter was null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pop()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "empty stack"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(Ljava/util/Iterator;)V
    .locals 1

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private stackHasAnyNext()Z
    .locals 4

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lorg/jdom/DescendantIterator;->stackHasAnyNext()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/DescendantIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-direct {p0, v0}, Lorg/jdom/DescendantIterator;->push(Ljava/util/Iterator;)V

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/jdom/DescendantIterator;->pop()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Somehow we lost our iterator"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/jdom/Element;

    invoke-virtual {v1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/DescendantIterator;->nextIterator:Ljava/util/Iterator;

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/jdom/DescendantIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
