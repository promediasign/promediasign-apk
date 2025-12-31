.class abstract Lj$/util/stream/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/h;


# instance fields
.field private final a:Lj$/util/stream/b;

.field private final b:Lj$/util/stream/b;

.field protected final c:I

.field private d:Lj$/util/stream/b;

.field private e:I

.field private f:I

.field private g:Lj$/util/Spliterator;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:Z


# direct methods
.method constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 0
    iput-object v0, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    iput-object p0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    sget p1, Lj$/util/stream/e3;->g:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->c:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Lj$/util/stream/e3;->l:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/b;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/b;->e:I

    iput-boolean p3, p0, Lj$/util/stream/b;->k:Z

    return-void
.end method

.method constructor <init>(Lj$/util/stream/b;I)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 0
    iget-boolean v0, p1, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/stream/b;->h:Z

    iput-object p0, p1, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    iput-object p1, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    sget v1, Lj$/util/stream/e3;->h:I

    and-int/2addr v1, p2

    iput v1, p0, Lj$/util/stream/b;->c:I

    iget v1, p1, Lj$/util/stream/b;->f:I

    invoke-static {p2, v1}, Lj$/util/stream/e3;->n(II)I

    move-result p2

    iput p2, p0, Lj$/util/stream/b;->f:I

    iget-object p2, p1, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iput-object p2, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    invoke-virtual {p0}, Lj$/util/stream/b;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p2, Lj$/util/stream/b;->i:Z

    :cond_0
    iget p1, p1, Lj$/util/stream/b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lj$/util/stream/b;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream has already been operated upon or closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private O(I)Lj$/util/Spliterator;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    .line 0
    iget-boolean v2, v0, Lj$/util/stream/b;->k:Z

    if-eqz v2, :cond_3

    .line 0
    iget-boolean v2, v0, Lj$/util/stream/b;->i:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    const/4 v3, 0x1

    :goto_0
    if-eq v0, p0, :cond_3

    iget v4, v2, Lj$/util/stream/b;->c:I

    invoke-virtual {v2}, Lj$/util/stream/b;->M()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lj$/util/stream/e3;->SHORT_CIRCUIT:Lj$/util/stream/e3;

    invoke-virtual {v3, v4}, Lj$/util/stream/e3;->s(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lj$/util/stream/e3;->u:I

    not-int v3, v3

    and-int/2addr v4, v3

    :cond_0
    invoke-virtual {v2, v0, v1}, Lj$/util/stream/b;->L(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    const/16 v3, 0x40

    invoke-interface {v1, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lj$/util/stream/e3;->t:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/e3;->s:I

    :goto_1
    or-int/2addr v3, v4

    move v4, v3

    goto :goto_2

    :cond_1
    sget v3, Lj$/util/stream/e3;->s:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/e3;->t:I

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v5, v3, 0x1

    iput v3, v2, Lj$/util/stream/b;->e:I

    iget v0, v0, Lj$/util/stream/b;->f:I

    invoke-static {v4, v0}, Lj$/util/stream/e3;->n(II)I

    move-result v0

    iput v0, v2, Lj$/util/stream/b;->f:I

    iget-object v0, v2, Lj$/util/stream/b;->d:Lj$/util/stream/b;

    move v3, v5

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lj$/util/stream/b;->f:I

    invoke-static {p1, v0}, Lj$/util/stream/e3;->n(II)I

    move-result p1

    iput p1, p0, Lj$/util/stream/b;->f:I

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final A(Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 4

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    .line 0
    iget-object v1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v1, v1, Lj$/util/stream/b;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 0
    iget-object v1, p0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/b;->M()Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lj$/util/stream/b;->e:I

    invoke-direct {v1, v2}, Lj$/util/stream/b;->O(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/b;->K(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, v2}, Lj$/util/stream/b;->O(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/b;->y(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract B(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;
.end method

.method final C(Lj$/util/Spliterator;)J
    .locals 2

    sget-object v0, Lj$/util/stream/e3;->SIZED:Lj$/util/stream/e3;

    .line 0
    iget v1, p0, Lj$/util/stream/b;->f:I

    .line 0
    invoke-virtual {v0, v1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method abstract D(Lj$/util/Spliterator;Lj$/util/stream/q2;)Z
.end method

.method abstract E()Lj$/util/stream/f3;
.end method

.method final F()Lj$/util/stream/f3;
    .locals 2

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj$/util/stream/b;->E()Lj$/util/stream/f3;

    move-result-object v0

    return-object v0
.end method

.method final G()I
    .locals 1

    iget v0, p0, Lj$/util/stream/b;->f:I

    return v0
.end method

.method final H()Z
    .locals 2

    sget-object v0, Lj$/util/stream/e3;->ORDERED:Lj$/util/stream/e3;

    iget v1, p0, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    return v0
.end method

.method final synthetic I()Lj$/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->O(I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method abstract J(JLjava/util/function/IntFunction;)Lj$/util/stream/D0;
.end method

.method K(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 0

    .line 0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parallel evaluation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method L(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    new-instance v0, Lj$/util/stream/l;

    const/16 v1, 0x11

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/b;->K(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/L0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method abstract M()Z
.end method

.method abstract N(ILj$/util/stream/q2;)Lj$/util/stream/q2;
.end method

.method final P()Lj$/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    if-ne p0, v0, :cond_2

    iget-boolean v1, p0, Lj$/util/stream/b;->h:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/b;->h:Z

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method abstract Q(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
.end method

.method final R(Lj$/util/Spliterator;Lj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 1

    .line 0
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/q2;

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->S(Lj$/util/stream/q2;)Lj$/util/stream/q2;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/b;->w(Lj$/util/Spliterator;Lj$/util/stream/q2;)V

    return-object p2
.end method

.method final S(Lj$/util/stream/q2;)Lj$/util/stream/q2;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    iget v2, v1, Lj$/util/stream/b;->f:I

    invoke-virtual {v0, v2, p1}, Lj$/util/stream/b;->N(ILj$/util/stream/q2;)Lj$/util/stream/q2;

    move-result-object p1

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method final T(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    iget v0, p0, Lj$/util/stream/b;->e:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lj$/util/stream/a;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    .line 0
    iget-object p1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean p1, p1, Lj$/util/stream/b;->k:Z

    .line 0
    invoke-virtual {p0, p0, v0, p1}, Lj$/util/stream/b;->Q(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v2, v1, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iput-object v0, v1, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    return v0
.end method

.method public final onClose(Ljava/lang/Runnable;)Lj$/util/stream/h;
    .locals 3

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-object v1, v0, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 0
    :cond_0
    new-instance v2, Lj$/util/stream/J3;

    invoke-direct {v2, v1, p1}, Lj$/util/stream/J3;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object p1, v2

    .line 0
    :goto_0
    iput-object p1, v0, Lj$/util/stream/b;->j:Ljava/lang/Runnable;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parallel()Lj$/util/stream/h;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/b;->k:Z

    return-object p0
.end method

.method public final sequential()Lj$/util/stream/h;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/b;->k:Z

    return-object p0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 3

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    if-ne p0, v0, :cond_1

    iget-object v1, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/b;->g:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lj$/util/stream/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj$/util/stream/a;-><init>(Ljava/lang/Object;I)V

    .line 0
    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    .line 0
    invoke-virtual {p0, p0, v1, v0}, Lj$/util/stream/b;->Q(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final w(Lj$/util/Spliterator;Lj$/util/stream/q2;)V
    .locals 2

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj$/util/stream/e3;->SHORT_CIRCUIT:Lj$/util/stream/e3;

    .line 0
    iget v1, p0, Lj$/util/stream/b;->f:I

    .line 0
    invoke-virtual {v0, v1}, Lj$/util/stream/e3;->s(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lj$/util/stream/q2;->l(J)V

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Lj$/util/stream/q2;->k()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/b;->x(Lj$/util/Spliterator;Lj$/util/stream/q2;)Z

    :goto_0
    return-void
.end method

.method final x(Lj$/util/Spliterator;Lj$/util/stream/q2;)Z
    .locals 3

    move-object v0, p0

    .line 0
    :goto_0
    iget v1, v0, Lj$/util/stream/b;->e:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/b;->b:Lj$/util/stream/b;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lj$/util/stream/q2;->l(J)V

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/b;->D(Lj$/util/Spliterator;Lj$/util/stream/q2;)Z

    move-result p1

    invoke-interface {p2}, Lj$/util/stream/q2;->k()V

    return p1
.end method

.method final y(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;
    .locals 2

    .line 0
    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    if-eqz v0, :cond_0

    .line 0
    invoke-virtual {p0, p0, p1, p2, p3}, Lj$/util/stream/b;->B(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/L0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/b;->C(Lj$/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lj$/util/stream/b;->J(JLjava/util/function/IntFunction;)Lj$/util/stream/D0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/b;->R(Lj$/util/Spliterator;Lj$/util/stream/q2;)Lj$/util/stream/q2;

    invoke-interface {p2}, Lj$/util/stream/D0;->a()Lj$/util/stream/L0;

    move-result-object p1

    return-object p1
.end method

.method final z(Lj$/util/stream/K3;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/b;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/b;->h:Z

    .line 0
    iget-object v0, p0, Lj$/util/stream/b;->a:Lj$/util/stream/b;

    iget-boolean v0, v0, Lj$/util/stream/b;->k:Z

    if-eqz v0, :cond_0

    .line 0
    invoke-interface {p1}, Lj$/util/stream/K3;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->O(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/K3;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/K3;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/stream/b;->O(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/K3;->b(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
