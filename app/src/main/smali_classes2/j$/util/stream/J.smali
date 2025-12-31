.class final Lj$/util/stream/J;
.super Lj$/util/stream/M;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/o2;


# static fields
.field static final c:Lj$/util/stream/H;

.field static final d:Lj$/util/stream/H;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v6, Lj$/util/stream/H;

    sget-object v7, Lj$/util/stream/f3;->INT_VALUE:Lj$/util/stream/f3;

    invoke-static {}, Lj$/util/m;->a()Lj$/util/m;

    move-result-object v3

    new-instance v4, Lj$/util/stream/s;

    const/4 v0, 0x5

    .line 0
    invoke-direct {v4, v0}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    new-instance v5, Lj$/util/stream/l;

    const/4 v0, 0x7

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/l;-><init>(I)V

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, v7

    .line 0
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/H;-><init>(ZLj$/util/stream/f3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/J;->c:Lj$/util/stream/H;

    new-instance v6, Lj$/util/stream/H;

    invoke-static {}, Lj$/util/m;->a()Lj$/util/m;

    move-result-object v3

    new-instance v4, Lj$/util/stream/s;

    const/4 v0, 0x5

    .line 0
    invoke-direct {v4, v0}, Lj$/util/stream/s;-><init>(I)V

    .line 0
    new-instance v5, Lj$/util/stream/l;

    const/4 v0, 0x7

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/l;-><init>(I)V

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, v7

    .line 0
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/H;-><init>(ZLj$/util/stream/f3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/J;->d:Lj$/util/stream/H;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/M;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lj$/util/stream/M;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/M;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lj$/util/m;->d(I)Lj$/util/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
