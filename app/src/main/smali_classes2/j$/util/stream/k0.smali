.class final Lj$/util/stream/k0;
.super Lj$/util/stream/m0;
.source "SourceFile"


# virtual methods
.method final M()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final N(ILj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->P()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/m0;->U(Lj$/util/Spliterator;)Lj$/util/K;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/K;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/m0;->forEach(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->P()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/m0;->U(Lj$/util/Spliterator;)Lj$/util/K;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/K;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/m0;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/p0;
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/h;

    return-object p0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/p0;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/h;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/p0;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/m0;->spliterator()Lj$/util/K;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/h;
    .locals 3

    .line 0
    invoke-virtual {p0}, Lj$/util/stream/b;->H()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/util/stream/y;

    sget v1, Lj$/util/stream/e3;->r:I

    const/4 v2, 0x4

    .line 0
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/y;-><init>(Lj$/util/stream/b;II)V

    :goto_0
    return-object v0
.end method
