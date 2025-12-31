.class final Lj$/util/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/v;
.implements Ljava/util/function/IntConsumer;
.implements Lj$/util/Iterator;


# instance fields
.field a:Z

.field b:I

.field final synthetic c:Lj$/util/H;


# direct methods
.method constructor <init>(Lj$/util/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/Q;->c:Lj$/util/H;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/Q;->a:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Q;->a:Z

    iput p1, p0, Lj$/util/Q;->b:I

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Q;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    .line 0
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/Q;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lj$/util/e0;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/s;

    invoke-direct {v0, p1}, Lj$/util/s;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lj$/util/Q;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    :goto_0
    return-void

    :cond_1
    const-class p1, Lj$/util/Q;

    const-string v0, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)"

    invoke-static {p1, v0}, Lj$/util/e0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1

    .line 0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lj$/util/Q;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Q;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/Q;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/Q;->c:Lj$/util/H;

    invoke-interface {v0, p0}, Lj$/util/H;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    :cond_0
    iget-boolean v0, p0, Lj$/util/Q;->a:Z

    return v0
.end method

.method public final next()Ljava/lang/Integer;
    .locals 2

    .line 0
    sget-boolean v0, Lj$/util/e0;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Q;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lj$/util/Q;

    const-string v1, "{0} calling PrimitiveIterator.OfInt.nextInt()"

    invoke-static {v0, v1}, Lj$/util/e0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lj$/util/Q;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final nextInt()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/Q;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/Q;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/Q;->a:Z

    iget v0, p0, Lj$/util/Q;->b:I

    return v0
.end method
