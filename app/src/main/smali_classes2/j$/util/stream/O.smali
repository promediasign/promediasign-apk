.class final Lj$/util/stream/O;
.super Lj$/util/stream/T;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/n2;


# instance fields
.field final b:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/DoubleConsumer;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/T;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/O;->b:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/O;->b:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->f(Lj$/util/stream/n2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->a(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/b;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p1, p2, p0}, Lj$/util/stream/b;->R(Lj$/util/Spliterator;Lj$/util/stream/q2;)Lj$/util/stream/q2;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/T;->e(Lj$/util/stream/b;Lj$/util/Spliterator;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic p(Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->e(Lj$/util/stream/n2;Ljava/lang/Double;)V

    return-void
.end method
