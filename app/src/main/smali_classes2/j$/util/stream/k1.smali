.class final Lj$/util/stream/k1;
.super Lj$/util/stream/n1;
.source "SourceFile"

# interfaces
.implements Lj$/util/E;


# virtual methods
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
