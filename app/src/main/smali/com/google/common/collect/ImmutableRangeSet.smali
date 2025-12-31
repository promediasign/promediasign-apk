.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static all()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method private intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v2, Lcom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V

    return-object v2

    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public asRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
