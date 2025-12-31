.class public final synthetic Lj$/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;


# instance fields
.field public final synthetic a:Lj$/util/r;


# direct methods
.method private synthetic constructor <init>(Lj$/util/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/q;->a:Lj$/util/r;

    return-void
.end method

.method public static synthetic a(Lj$/util/r;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/p;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/p;

    iget-object p0, p0, Lj$/util/p;->a:Ljava/util/PrimitiveIterator$OfDouble;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/q;

    invoke-direct {v0, p0}, Lj$/util/q;-><init>(Lj$/util/r;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    instance-of v1, p1, Lj$/util/q;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/q;

    iget-object p1, p1, Lj$/util/q;->a:Lj$/util/r;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0, p1}, Lj$/util/A;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0, p1}, Lj$/util/r;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0, p1}, Lj$/util/r;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0}, Lj$/util/r;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextDouble()D
    .locals 2

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0}, Lj$/util/r;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/q;->a:Lj$/util/r;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
