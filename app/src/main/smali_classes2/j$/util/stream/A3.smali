.class final Lj$/util/stream/A3;
.super Lj$/util/stream/D3;
.source "SourceFile"

# interfaces
.implements Lj$/util/E;
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field f:D


# virtual methods
.method public final accept(D)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/A3;->f:D

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method protected final c(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/E;

    .line 0
    new-instance v0, Lj$/util/stream/A3;

    .line 0
    invoke-direct {v0, p1, p0}, Lj$/util/stream/G3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/G3;)V

    return-object v0
.end method

.method protected final e(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/function/DoubleConsumer;

    .line 0
    iget-wide v0, p0, Lj$/util/stream/A3;->f:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method protected final f(I)Lj$/util/stream/k3;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/h3;

    invoke-direct {v0, p1}, Lj$/util/stream/h3;-><init>(I)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/d;->a(Lj$/util/E;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/d;->d(Lj$/util/E;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
