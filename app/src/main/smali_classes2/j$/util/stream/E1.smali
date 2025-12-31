.class final Lj$/util/stream/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/V1;
.implements Lj$/util/stream/n2;


# instance fields
.field private a:D

.field final synthetic b:D

.field final synthetic c:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/util/stream/E1;->b:D

    iput-object p3, p0, Lj$/util/stream/E1;->c:Ljava/util/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/E1;->c:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Lj$/util/stream/E1;->a:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lj$/util/stream/E1;->a:D

    return-void
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/z0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->f(Lj$/util/stream/n2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/util/stream/V1;)V
    .locals 2

    check-cast p1, Lj$/util/stream/E1;

    .line 0
    iget-wide v0, p1, Lj$/util/stream/E1;->a:D

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/E1;->accept(D)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-wide v0, p0, Lj$/util/stream/E1;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic k()V
    .locals 0

    return-void
.end method

.method public final l(J)V
    .locals 0

    iget-wide p1, p0, Lj$/util/stream/E1;->b:D

    iput-wide p1, p0, Lj$/util/stream/E1;->a:D

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic p(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->e(Lj$/util/stream/n2;Ljava/lang/Double;)V

    return-void
.end method
