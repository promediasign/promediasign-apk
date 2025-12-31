.class final Lj$/util/stream/T3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Lj$/util/Spliterator;


# instance fields
.field final a:Lj$/util/Spliterator;

.field final b:Z

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field d:Z

.field e:I

.field final f:Ljava/util/function/Predicate;

.field g:Ljava/lang/Object;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/T3;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/T3;->h:I

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lj$/util/stream/T3;->d:Z

    iput-object p1, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    iget-boolean p1, p2, Lj$/util/stream/T3;->b:Z

    iput-boolean p1, p0, Lj$/util/stream/T3;->b:Z

    iget-object p1, p2, Lj$/util/stream/T3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lj$/util/stream/T3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 0
    iget-object p1, p2, Lj$/util/stream/T3;->f:Ljava/util/function/Predicate;

    iput-object p1, p0, Lj$/util/stream/T3;->f:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Lj$/util/Spliterator;Ljava/util/function/Predicate;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/T3;->h:I

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lj$/util/stream/T3;->d:Z

    iput-object p1, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/T3;->b:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lj$/util/stream/T3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 0
    iput-object p2, p0, Lj$/util/stream/T3;->f:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget v0, p0, Lj$/util/stream/T3;->e:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lj$/util/stream/T3;->e:I

    iput-object p1, p0, Lj$/util/stream/T3;->g:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/T3;->h:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/stream/T3;

    const/4 v1, 0x1

    .line 0
    invoke-direct {v0, p1, p0, v1}, Lj$/util/stream/T3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/T3;I)V

    return-object v0

    .line 0
    :pswitch_0
    new-instance v0, Lj$/util/stream/T3;

    const/4 v1, 0x0

    .line 0
    invoke-direct {v0, p1, p0, v1}, Lj$/util/stream/T3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/T3;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lj$/util/Spliterator;
    .locals 2

    .line 0
    iget-boolean v0, p0, Lj$/util/stream/T3;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lj$/util/stream/T3;->b(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final characteristics()I
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4041

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .line 0
    iget-object v0, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    .line 0
    :cond_0
    invoke-interface {p0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    .line 0
    iget-object v0, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7

    iget v0, p0, Lj$/util/stream/T3;->h:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lj$/util/stream/T3;->d:Z

    iget-object v1, p0, Lj$/util/stream/T3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 0
    iget v0, p0, Lj$/util/stream/T3;->e:I

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 0
    :cond_0
    iget-object v0, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/T3;->f:Ljava/util/function/Predicate;

    iget-object v3, p0, Lj$/util/stream/T3;->g:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj$/util/stream/T3;->g:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/T3;->d:Z

    if-nez v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 0
    :pswitch_0
    iget-boolean v0, p0, Lj$/util/stream/T3;->d:Z

    iget-object v1, p0, Lj$/util/stream/T3;->a:Lj$/util/Spliterator;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/T3;->d:Z

    :goto_1
    invoke-interface {v1, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    iget-object v3, p0, Lj$/util/stream/T3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 0
    iget v5, p0, Lj$/util/stream/T3;->e:I

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_5

    .line 0
    :cond_4
    iget-object v5, p0, Lj$/util/stream/T3;->f:Ljava/util/function/Predicate;

    iget-object v6, p0, Lj$/util/stream/T3;->g:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    iget-object v0, p0, Lj$/util/stream/T3;->g:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-interface {v1, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v2

    :cond_8
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 1

    iget v0, p0, Lj$/util/stream/T3;->h:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lj$/util/stream/T3;->c()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 0
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/T3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/util/stream/T3;->c()Lj$/util/Spliterator;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
