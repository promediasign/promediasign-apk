.class final Lj$/util/stream/i3;
.super Lj$/util/stream/k3;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field final c:[I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    new-array p1, p1, [I

    iput-object p1, p0, Lj$/util/stream/i3;->c:[I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget v0, p0, Lj$/util/stream/k3;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lj$/util/stream/k3;->b:I

    iget-object v1, p0, Lj$/util/stream/i3;->c:[I

    aput p1, v1, v0

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;J)V
    .locals 4

    check-cast p1, Ljava/util/function/IntConsumer;

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v3, v1, p2

    if-gez v3, :cond_0

    .line 0
    iget-object v1, p0, Lj$/util/stream/i3;->c:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
