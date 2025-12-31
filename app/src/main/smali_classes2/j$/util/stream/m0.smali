.class abstract Lj$/util/stream/m0;
.super Lj$/util/stream/b;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/p0;


# direct methods
.method static bridge synthetic U(Lj$/util/Spliterator;)Lj$/util/K;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/m0;->V(Lj$/util/Spliterator;)Lj$/util/K;

    move-result-object p0

    return-object p0
.end method

.method private static V(Lj$/util/Spliterator;)Lj$/util/K;
    .locals 1

    instance-of v0, p0, Lj$/util/K;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/K;

    return-object p0

    :cond_0
    sget-boolean p0, Lj$/util/stream/N3;->a:Z

    if-eqz p0, :cond_1

    const-class p0, Lj$/util/stream/b;

    const-string v0, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {p0, v0}, Lj$/util/stream/N3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final B(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Lj$/util/stream/z0;->H(Lj$/util/stream/b;Lj$/util/Spliterator;Z)Lj$/util/stream/J0;

    move-result-object p1

    return-object p1
.end method

.method final D(Lj$/util/Spliterator;Lj$/util/stream/q2;)Z
    .locals 3

    invoke-static {p1}, Lj$/util/stream/m0;->V(Lj$/util/Spliterator;)Lj$/util/K;

    move-result-object p1

    .line 0
    instance-of v0, p2, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/function/LongConsumer;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/N3;->a:Z

    if-nez v0, :cond_3

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/e0;

    invoke-direct {v0, p2}, Lj$/util/stream/e0;-><init>(Lj$/util/stream/q2;)V

    .line 0
    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/q2;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/K;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    .line 0
    :cond_3
    const-class p1, Lj$/util/stream/b;

    const-string p2, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {p1, p2}, Lj$/util/stream/N3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method final E()Lj$/util/stream/f3;
    .locals 1

    sget-object v0, Lj$/util/stream/f3;->LONG_VALUE:Lj$/util/stream/f3;

    return-object v0
.end method

.method final J(JLjava/util/function/IntFunction;)Lj$/util/stream/D0;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/z0;->V(J)Lj$/util/stream/C0;

    move-result-object p1

    return-object p1
.end method

.method final Q(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/t3;

    .line 0
    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/g3;-><init>(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method

.method public final a()Lj$/util/stream/p0;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/y;

    sget v1, Lj$/util/stream/e3;->t:I

    const/4 v2, 0x5

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/y;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final asDoubleStream()Lj$/util/stream/G;
    .locals 3

    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/e3;->n:I

    const/4 v2, 0x5

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final average()Lj$/util/l;
    .locals 6

    new-instance v0, Lj$/util/stream/s;

    const/16 v1, 0x1a

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    new-instance v1, Lj$/util/stream/s;

    const/16 v2, 0x1b

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    new-instance v2, Lj$/util/stream/s;

    const/16 v3, 0x1c

    .line 0
    invoke-direct {v2, v3}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/m0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    long-to-double v3, v3

    long-to-double v0, v1

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Lj$/util/l;->d(D)Lj$/util/l;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/l;->a()Lj$/util/l;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final b()Lj$/util/stream/p0;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/y;

    sget v1, Lj$/util/stream/e3;->p:I

    sget v2, Lj$/util/stream/e3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/y;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 4

    new-instance v0, Lj$/util/stream/s;

    const/16 v1, 0x19

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    new-instance v1, Lj$/util/stream/v;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v0, v3}, Lj$/util/stream/v;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final c(Lj$/util/stream/a;)Lj$/util/stream/p0;
    .locals 3

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/j0;

    sget v1, Lj$/util/stream/e3;->p:I

    sget v2, Lj$/util/stream/e3;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/e3;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/j0;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/stream/t;

    const/4 v0, 0x2

    invoke-direct {v2, p3, v0}, Lj$/util/stream/t;-><init>(Ljava/util/function/BiConsumer;I)V

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lj$/util/stream/F1;

    sget-object v1, Lj$/util/stream/f3;->LONG_VALUE:Lj$/util/stream/f3;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/F1;-><init>(Lj$/util/stream/f3;Ljava/util/function/BinaryOperator;Ljava/lang/Object;Ljava/util/function/Supplier;I)V

    .line 0
    invoke-virtual {p0, p3}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    .line 0
    new-instance v0, Lj$/util/stream/H1;

    const/4 v1, 0x0

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/H1;-><init>(I)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Lj$/util/stream/p0;
    .locals 3

    invoke-virtual {p0}, Lj$/util/stream/m0;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/i2;

    invoke-virtual {v0}, Lj$/util/stream/i2;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/s;

    const/16 v2, 0x16

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    check-cast v0, Lj$/util/stream/i2;

    invoke-virtual {v0, v1}, Lj$/util/stream/i2;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/p0;

    move-result-object v0

    return-object v0
.end method

.method public final findAny()Lj$/util/n;
    .locals 1

    .line 0
    sget-object v0, Lj$/util/stream/K;->d:Lj$/util/stream/H;

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/n;

    return-object v0
.end method

.method public final findFirst()Lj$/util/n;
    .locals 1

    .line 0
    sget-object v0, Lj$/util/stream/K;->c:Lj$/util/stream/H;

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/n;

    return-object v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/Q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/Q;-><init>(Ljava/util/function/LongConsumer;Z)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 2

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/Q;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/Q;-><init>(Ljava/util/function/LongConsumer;Z)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    return-void
.end method

.method public final h()Lj$/util/stream/G;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/e3;->p:I

    sget v2, Lj$/util/stream/e3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x6

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final iterator()Lj$/util/z;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/m0;->spliterator()Lj$/util/K;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->h(Lj$/util/K;)Lj$/util/z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/m0;->iterator()Lj$/util/z;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 0
    sget-object v0, Lj$/util/stream/w0;->NONE:Lj$/util/stream/w0;

    invoke-static {v0}, Lj$/util/stream/z0;->c0(Lj$/util/stream/w0;)Lj$/util/stream/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final limit(J)Lj$/util/stream/p0;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/z0;->b0(Lj$/util/stream/b;JJ)Lj$/util/stream/p0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lj$/util/stream/e3;->p:I

    sget v1, Lj$/util/stream/e3;->n:I

    or-int/2addr v0, v1

    .line 0
    new-instance v1, Lj$/util/stream/v;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, p1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final max()Lj$/util/n;
    .locals 2

    new-instance v0, Lj$/util/stream/s;

    const/16 v1, 0x1d

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/m0;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/n;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/n;
    .locals 2

    new-instance v0, Lj$/util/stream/s;

    const/16 v1, 0x15

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/m0;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/n;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 0
    sget-object v0, Lj$/util/stream/w0;->ALL:Lj$/util/stream/w0;

    invoke-static {v0}, Lj$/util/stream/z0;->c0(Lj$/util/stream/w0;)Lj$/util/stream/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/p0;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/j0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/j0;-><init>(Lj$/util/stream/b;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 2

    .line 0
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/B1;

    sget-object v1, Lj$/util/stream/f3;->LONG_VALUE:Lj$/util/stream/f3;

    invoke-direct {v0, v1, p3, p1, p2}, Lj$/util/stream/B1;-><init>(Lj$/util/stream/f3;Ljava/util/function/LongBinaryOperator;J)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/n;
    .locals 3

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/D1;

    sget-object v1, Lj$/util/stream/f3;->LONG_VALUE:Lj$/util/stream/f3;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/D1;-><init>(Lj$/util/stream/f3;Ljava/lang/Object;I)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/n;

    return-object p1
.end method

.method public final s()Z
    .locals 1

    .line 0
    sget-object v0, Lj$/util/stream/w0;->ANY:Lj$/util/stream/w0;

    invoke-static {v0}, Lj$/util/stream/z0;->c0(Lj$/util/stream/w0;)Lj$/util/stream/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->z(Lj$/util/stream/K3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final skip(J)Lj$/util/stream/p0;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/z0;->b0(Lj$/util/stream/b;JJ)Lj$/util/stream/p0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/p0;
    .locals 3

    .line 0
    new-instance v0, Lj$/util/stream/K2;

    .line 0
    sget v1, Lj$/util/stream/e3;->q:I

    sget v2, Lj$/util/stream/e3;->o:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/l0;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/K;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/m0;->V(Lj$/util/Spliterator;)Lj$/util/K;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    new-instance v0, Lj$/util/stream/f0;

    const/4 v1, 0x0

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/f0;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 0
    invoke-virtual {p0, v1, v2, v0}, Lj$/util/stream/m0;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Lj$/util/k;
    .locals 4

    new-instance v0, Lj$/util/stream/l;

    const/16 v1, 0x14

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    new-instance v1, Lj$/util/stream/s;

    const/16 v2, 0x14

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    new-instance v2, Lj$/util/stream/s;

    const/16 v3, 0x17

    .line 0
    invoke-direct {v2, v3}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/m0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/k;

    return-object v0
.end method

.method public final t()Lj$/util/stream/IntStream;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/x;

    sget v1, Lj$/util/stream/e3;->p:I

    sget v2, Lj$/util/stream/e3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x4

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/x;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final toArray()[J
    .locals 2

    new-instance v0, Lj$/util/stream/s;

    const/16 v1, 0x18

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->A(Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object v0

    check-cast v0, Lj$/util/stream/J0;

    invoke-static {v0}, Lj$/util/stream/z0;->Q(Lj$/util/stream/J0;)Lj$/util/stream/J0;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/K0;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method
