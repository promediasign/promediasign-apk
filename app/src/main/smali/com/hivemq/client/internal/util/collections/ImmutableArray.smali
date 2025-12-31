.class Lcom/hivemq/client/internal/util/collections/ImmutableArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;,
        Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
        "TE;>;",
        "Lj$/util/List;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lcom/hivemq/client/internal/util/collections/ImmutableArray;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method public static of([Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->elementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/b;->a(Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->b(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic addAll(ILjava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/b;->c(Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->d(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic clear()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->e(Lcom/hivemq/client/internal/util/collections/ImmutableList;)V

    return-void
.end method

.method public final synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->f(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic containsAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->g(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v3

    sub-int v4, v3, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    instance-of v4, p1, Ljava/util/RandomAccess;

    if-eqz v4, :cond_4

    :goto_0
    if-ge v1, v3, :cond_6

    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v1, v4, v1

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    move-result p1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFromIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToIndex()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int/2addr v3, v1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic isEmpty()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->h(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->i(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->j(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sub-int/2addr v2, v1

    return v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final synthetic listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->k(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/hivemq/client/internal/util/Checks;->cursorIndex(II)I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$ArrayIterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableArray;I)V

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->l(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic parallelStream()Ljava/util/stream/Stream;
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->m(Lcom/hivemq/client/internal/util/collections/ImmutableList;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->n(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->o(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->p(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final synthetic replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->q(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public final synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->r(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/b;->s(Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final synthetic sort(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->t(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Comparator;)V

    return-void
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    const/16 v3, 0x510

    invoke-static {v0, v1, v2, v3}, Lj$/util/Spliterators;->spliterator([Ljava/lang/Object;III)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic stream()Ljava/util/stream/Stream;
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->indexRange(III)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    sub-int v2, p2, p1

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;

    iget-object v2, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-direct {v0, v2, p1, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableArray$SubArray;-><init>([Ljava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p2, Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    invoke-direct {p2, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    const-string v0, "Array"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getFromIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->getToIndex()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/hivemq/client/internal/util/collections/ImmutableArray;->array:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ne v4, v1, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_0
.end method

.method public synthetic trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->u(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method
