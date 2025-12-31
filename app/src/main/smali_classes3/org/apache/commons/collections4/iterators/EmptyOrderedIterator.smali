.class public Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/OrderedIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hasNext()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->remove()V

    return-void
.end method
