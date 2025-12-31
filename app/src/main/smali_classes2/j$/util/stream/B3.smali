.class final Lj$/util/stream/B3;
.super Lj$/util/stream/D3;
.source "SourceFile"

# interfaces
.implements Lj$/util/H;
.implements Ljava/util/function/IntConsumer;


# instance fields
.field f:I


# virtual methods
.method public final accept(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/B3;->f:I

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method protected final c(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/H;

    .line 0
    new-instance v0, Lj$/util/stream/B3;

    .line 0
    invoke-direct {v0, p1, p0}, Lj$/util/stream/G3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/G3;)V

    return-object v0
.end method

.method protected final e(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/function/IntConsumer;

    .line 0
    iget v0, p0, Lj$/util/stream/B3;->f:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method protected final f(I)Lj$/util/stream/k3;
    .locals 1

    .line 0
    new-instance v0, Lj$/util/stream/i3;

    invoke-direct {v0, p1}, Lj$/util/stream/i3;-><init>(I)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/d;->b(Lj$/util/H;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/d;->e(Lj$/util/H;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
