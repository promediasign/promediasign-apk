.class final Lj$/util/stream/d1;
.super Lj$/util/stream/f1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/J0;


# virtual methods
.method public final synthetic a([Ljava/lang/Long;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/z0;->p(Lj$/util/stream/J0;[Ljava/lang/Long;I)V

    return-void
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
    invoke-virtual {p0, p1}, Lj$/util/stream/d1;->b(I)Lj$/util/stream/K0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Lj$/util/stream/z0;->z()[J

    move-result-object v0

    return-object v0
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->s(Lj$/util/stream/J0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic g(JJLjava/util/function/IntFunction;)Lj$/util/stream/J0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/z0;->v(Lj$/util/stream/J0;JJ)Lj$/util/stream/J0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/d1;->g(JJLjava/util/function/IntFunction;)Lj$/util/stream/J0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/d1;->a([Ljava/lang/Long;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/N;
    .locals 1

    .line 0
    invoke-static {}, Lj$/util/Spliterators;->d()Lj$/util/K;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 0
    invoke-static {}, Lj$/util/Spliterators;->d()Lj$/util/K;

    move-result-object v0

    return-object v0
.end method
