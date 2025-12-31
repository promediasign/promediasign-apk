.class Lorg/jdom/FilterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: FilterIterator.java,v $ $Revision: 1.6 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"


# instance fields
.field private filter:Lorg/jdom/filter/Filter;

.field private iterator:Ljava/util/Iterator;

.field private nextObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/jdom/FilterIterator;->filter:Lorg/jdom/filter/Filter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/jdom/FilterIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v0}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/jdom/FilterIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/jdom/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
