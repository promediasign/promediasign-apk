.class final Lj$/util/stream/Q;
.super Lj$/util/stream/T;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/p2;


# instance fields
.field final b:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/LongConsumer;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lj$/util/stream/T;-><init>(Z)V

    iput-object p1, p0, Lj$/util/stream/Q;->b:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Q;->b:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->j(Lj$/util/stream/p2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/e;

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

.method public final synthetic j(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/z0;->i(Lj$/util/stream/p2;Ljava/lang/Long;)V

    return-void
.end method
