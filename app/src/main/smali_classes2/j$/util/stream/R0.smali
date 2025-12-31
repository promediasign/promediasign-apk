.class public final synthetic Lj$/util/stream/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongFunction;
.implements Ljava/util/function/IntFunction;


# instance fields
.field public a:Ljava/util/function/IntFunction;


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/R0;->a:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 0
    :cond_0
    instance-of v1, p1, Lj$/util/stream/IntStream;

    if-eqz v1, :cond_1

    check-cast p1, Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/util/stream/IntStream;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "java.util.stream.IntStream"

    invoke-static {v1, p1}, Lj$/util/g;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    throw v0
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/stream/R0;->a:Ljava/util/function/IntFunction;

    invoke-static {p1, p2, v0}, Lj$/util/stream/z0;->D(JLjava/util/function/IntFunction;)Lj$/util/stream/D0;

    move-result-object p1

    return-object p1
.end method
