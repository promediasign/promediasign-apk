.class final Lj$/util/stream/U0;
.super Lj$/util/stream/W0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/H0;


# virtual methods
.method public final synthetic a([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->o(Lj$/util/stream/H0;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 0

    .line 0
    new-array p1, p1, [I

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->r(Lj$/util/stream/H0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic g(JJLjava/util/function/IntFunction;)Lj$/util/stream/H0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->u(Lj$/util/stream/H0;JJ)Lj$/util/stream/H0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/U0;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/H0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/U0;->a([Ljava/lang/Integer;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/N;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/l1;

    .line 0
    invoke-direct {v0, p0}, Lj$/util/stream/p1;-><init>(Lj$/util/stream/L0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/l1;

    .line 0
    invoke-direct {v0, p0}, Lj$/util/stream/p1;-><init>(Lj$/util/stream/L0;)V

    return-object v0
.end method
