.class final Lj$/util/stream/q;
.super Lj$/util/stream/h2;
.source "SourceFile"


# direct methods
.method static U(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/P0;
    .locals 7

    new-instance v4, Lj$/util/stream/l;

    const/16 v0, 0x16

    .line 0
    invoke-direct {v4, v0}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    new-instance v3, Lj$/util/stream/l;

    const/16 v0, 0x17

    .line 0
    invoke-direct {v3, v0}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    new-instance v2, Lj$/util/stream/l;

    const/16 v0, 0x18

    .line 0
    invoke-direct {v2, v0}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lj$/util/stream/F1;

    sget-object v1, Lj$/util/stream/f3;->REFERENCE:Lj$/util/stream/f3;

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/F1;-><init>(Lj$/util/stream/f3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 0
    invoke-virtual {v6, p0, p1}, Lj$/util/stream/z0;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 0
    new-instance p1, Lj$/util/stream/P0;

    invoke-direct {p1, p0}, Lj$/util/stream/P0;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method final K(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 4

    sget-object v0, Lj$/util/stream/e3;->DISTINCT:Lj$/util/stream/e3;

    invoke-virtual {p1}, Lj$/util/stream/b;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1, p3}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p3, Lj$/util/stream/e3;->ORDERED:Lj$/util/stream/e3;

    invoke-virtual {p1}, Lj$/util/stream/b;->G()I

    move-result v0

    invoke-virtual {p3, v0}, Lj$/util/stream/e3;->s(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/q;->U(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/P0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lj$/util/stream/m;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p3, v0}, Lj$/util/stream/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 0
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lj$/util/stream/S;

    invoke-direct {v3, v2, v1}, Lj$/util/stream/S;-><init>(Ljava/util/function/Consumer;Z)V

    .line 0
    invoke-virtual {v3, p1, p2}, Lj$/util/stream/T;->e(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    .line 0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    .line 0
    :cond_2
    new-instance p2, Lj$/util/stream/P0;

    invoke-direct {p2, p1}, Lj$/util/stream/P0;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method final L(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 0
    sget-object v0, Lj$/util/stream/e3;->DISTINCT:Lj$/util/stream/e3;

    invoke-virtual {p1}, Lj$/util/stream/b;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/util/stream/e3;->ORDERED:Lj$/util/stream/e3;

    invoke-virtual {p1}, Lj$/util/stream/b;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/q;->U(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/P0;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/stream/P0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lj$/util/stream/n3;

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/util/stream/n3;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method final N(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 1

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj$/util/stream/e3;->DISTINCT:Lj$/util/stream/e3;

    invoke-virtual {v0, p1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/e3;->SORTED:Lj$/util/stream/e3;

    invoke-virtual {v0, p1}, Lj$/util/stream/e3;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/o;

    .line 0
    invoke-direct {p1, p2}, Lj$/util/stream/o;-><init>(Lj$/util/stream/q2;)V

    return-object p1

    .line 0
    :cond_1
    new-instance p1, Lj$/util/stream/p;

    .line 0
    invoke-direct {p1, p2}, Lj$/util/stream/p;-><init>(Lj$/util/stream/q2;)V

    return-object p1
.end method
