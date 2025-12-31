.class final Lj$/util/stream/a1;
.super Lj$/util/stream/T2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/F0;
.implements Lj$/util/stream/A0;


# virtual methods
.method public final a()Lj$/util/stream/F0;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/L0;
    .locals 0

    return-object p0
.end method

.method public final accept(D)V
    .locals 0

    invoke-super {p0, p1, p2}, Lj$/util/stream/T2;->accept(D)V

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->f(Lj$/util/stream/n2;Ljava/lang/Object;)V

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
    invoke-virtual {p0, p1}, Lj$/util/stream/a1;->b(I)Lj$/util/stream/K0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [D

    .line 0
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z2;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/Z2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    .line 0
    invoke-super {p0, p1}, Lj$/util/stream/Z2;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/a1;->z(JJLjava/util/function/IntFunction;)Lj$/util/stream/F0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/a1;->y([Ljava/lang/Double;I)V

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

.method public final synthetic p(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->e(Lj$/util/stream/n2;Ljava/lang/Double;)V

    return-void
.end method

.method public final synthetic q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/N;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/T2;->x()Lj$/util/E;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 0
    invoke-super {p0}, Lj$/util/stream/T2;->x()Lj$/util/E;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lj$/util/E;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/T2;->x()Lj$/util/E;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic y([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->n(Lj$/util/stream/F0;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final synthetic z(JJLjava/util/function/IntFunction;)Lj$/util/stream/F0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->t(Lj$/util/stream/F0;JJ)Lj$/util/stream/F0;

    move-result-object p1

    return-object p1
.end method
