.class abstract Lj$/util/stream/n1;
.super Lj$/util/stream/p1;
.source "SourceFile"

# interfaces
.implements Lj$/util/N;


# virtual methods
.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/p1;->a:Lj$/util/stream/L0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj$/util/stream/p1;->d:Lj$/util/Spliterator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/p1;->c:Lj$/util/Spliterator;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj$/util/stream/p1;->b()Ljava/util/ArrayDeque;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lj$/util/stream/p1;->a(Ljava/util/ArrayDeque;)Lj$/util/stream/L0;

    move-result-object v1

    check-cast v1, Lj$/util/stream/K0;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lj$/util/stream/K0;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/p1;->a:Lj$/util/stream/L0;

    goto :goto_2

    :cond_2
    check-cast v0, Lj$/util/N;

    invoke-interface {v0, p1}, Lj$/util/N;->forEachRemaining(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lj$/util/stream/p1;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lj$/util/stream/p1;->d:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/N;

    invoke-interface {v0, p1}, Lj$/util/N;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lj$/util/stream/p1;->c:Lj$/util/Spliterator;

    if-nez v1, :cond_1

    iget-object v1, p0, Lj$/util/stream/p1;->e:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lj$/util/stream/p1;->a(Ljava/util/ArrayDeque;)Lj$/util/stream/L0;

    move-result-object v1

    check-cast v1, Lj$/util/stream/K0;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lj$/util/stream/K0;->spliterator()Lj$/util/N;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/p1;->d:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/N;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lj$/util/stream/p1;->a:Lj$/util/stream/L0;

    :cond_2
    return v0
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/n1;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
