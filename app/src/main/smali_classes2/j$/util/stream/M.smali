.class abstract Lj$/util/stream/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/L3;


# instance fields
.field a:Z

.field b:Ljava/lang/Object;


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/M;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/M;->a:Z

    iput-object p1, p0, Lj$/util/stream/M;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/M;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic k()V
    .locals 0

    return-void
.end method

.method public final synthetic l(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic m(Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/M;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/M;->a:Z

    return v0
.end method

.method public bridge synthetic p(Ljava/lang/Double;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lj$/util/stream/M;->accept(Ljava/lang/Object;)V

    return-void
.end method
