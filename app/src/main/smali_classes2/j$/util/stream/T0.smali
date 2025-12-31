.class final Lj$/util/stream/T0;
.super Lj$/util/stream/W0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/F0;


# virtual methods
.method public final synthetic a([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->n(Lj$/util/stream/F0;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    .line 0
    new-array p1, p1, [D

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->q(Lj$/util/stream/F0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic g(JJLjava/util/function/IntFunction;)Lj$/util/stream/F0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->t(Lj$/util/stream/F0;JJ)Lj$/util/stream/F0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/T0;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/F0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/T0;->a([Ljava/lang/Double;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/N;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/k1;

    .line 0
    invoke-direct {v0, p0}, Lj$/util/stream/p1;-><init>(Lj$/util/stream/L0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/k1;

    .line 0
    invoke-direct {v0, p0}, Lj$/util/stream/p1;-><init>(Lj$/util/stream/L0;)V

    return-object v0
.end method
