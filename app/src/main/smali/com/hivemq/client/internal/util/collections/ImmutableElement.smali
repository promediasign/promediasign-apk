.class Lcom/hivemq/client/internal/util/collections/ImmutableElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/util/collections/ImmutableList;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;,
        Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;
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
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100(Lcom/hivemq/client/internal/util/collections/ImmutableElement;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const-string v0, "Immutable list"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/String;)Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/hivemq/client/internal/util/Checks;->elementNotNull(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;-><init>(Ljava/lang/Object;)V

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

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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
            "-TE;>;)V"
        }
    .end annotation

    const-string v0, "Consumer"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->index(II)I

    iget-object p1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
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

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->indexOf(Ljava/lang/Object;)I

    move-result p1

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/util/Checks;->cursorIndex(II)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementIterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;I)V

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
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->listIterator(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

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

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic sort(Ljava/util/Comparator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/collections/b;->t(Lcom/hivemq/client/internal/util/collections/ImmutableList;Ljava/util/Comparator;)V

    return-void
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableElement$ElementSpliterator;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableElement;Lcom/hivemq/client/internal/util/collections/ImmutableElement$1;)V

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->spliterator()Lj$/util/Spliterator;

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
            "TE;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/util/Checks;->indexRange(III)V

    if-ne p2, p1, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->z()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->subList(II)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
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

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/util/collections/ImmutableElement;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trim()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/util/collections/b;->u(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    return-object v0
.end method
