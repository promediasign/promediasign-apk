.class final Lj$/util/stream/j1;
.super Lj$/util/stream/V2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/H0;
.implements Lj$/util/stream/B0;


# virtual methods
.method public final a()Lj$/util/stream/H0;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/L0;
    .locals 0

    return-object p0
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(I)V
    .locals 0

    invoke-super {p0, p1}, Lj$/util/stream/V2;->accept(I)V

    return-void
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->h(Lj$/util/stream/o2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lj$/util/stream/K0;
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b(I)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/j1;->b(I)Lj$/util/stream/K0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [I

    .line 0
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z2;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/Z2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    .line 0
    invoke-super {p0, p1}, Lj$/util/stream/Z2;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/j1;->z(JJLjava/util/function/IntFunction;)Lj$/util/stream/H0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/j1;->y([Ljava/lang/Integer;I)V

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l(J)V
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/Z2;->clear()V

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Z2;->u(J)V

    return-void
.end method

.method public final synthetic m(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->g(Lj$/util/stream/o2;Ljava/lang/Integer;)V

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->m(Lj$/util/stream/K0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/N;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/V2;->x()Lj$/util/H;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/V2;->x()Lj$/util/H;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lj$/util/H;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/V2;->x()Lj$/util/H;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic y([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->o(Lj$/util/stream/H0;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final synthetic z(JJLjava/util/function/IntFunction;)Lj$/util/stream/H0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->u(Lj$/util/stream/H0;JJ)Lj$/util/stream/H0;

    move-result-object p1

    return-object p1
.end method
