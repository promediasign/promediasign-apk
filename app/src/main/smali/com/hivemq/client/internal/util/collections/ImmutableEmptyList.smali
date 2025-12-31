.class Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;,
        Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
        "Ljava/lang/Object;",
        ">;",
        "Lj$/util/List;"
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/Object;

.field private static final INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->INSTANCE:Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;

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
    .locals 3

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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Empty list"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
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
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final synthetic listIterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->k(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->cursorIndex(II)I

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptyIterator;->of()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic sort(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->t(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Comparator;)V

    return-void
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList$EmptySpliterator;->of()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->spliterator()Lj$/util/Spliterator;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->indexRange(III)V

    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/hivemq/client/internal/util/collections/ImmutableEmptyList;->EMPTY:[Ljava/lang/Object;

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
    .locals 2
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

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method

.method public final synthetic trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->u(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method
