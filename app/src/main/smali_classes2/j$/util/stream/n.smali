.class final Lj$/util/stream/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Collector;


# instance fields
.field private final a:Ljava/util/function/Supplier;

.field private final b:Ljava/util/function/BiConsumer;

.field private final c:Ljava/util/function/BinaryOperator;

.field private final d:Ljava/util/function/Function;

.field private final e:Ljava/util/Set;


# direct methods
.method constructor <init>(Lj$/util/stream/l;Lj$/util/stream/m;Lj$/util/stream/l;Ljava/util/Set;)V
    .locals 2

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 0
    new-instance v0, Lj$/util/stream/l;

    const/4 v1, 0x1

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/l;-><init>(I)V

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/n;->a:Ljava/util/function/Supplier;

    iput-object p2, p0, Lj$/util/stream/n;->b:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lj$/util/stream/n;->c:Ljava/util/function/BinaryOperator;

    iput-object v0, p0, Lj$/util/stream/n;->d:Ljava/util/function/Function;

    iput-object p4, p0, Lj$/util/stream/n;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/n;->b:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/n;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/n;->c:Ljava/util/function/BinaryOperator;

    return-object v0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/n;->d:Ljava/util/function/Function;

    return-object v0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/n;->a:Ljava/util/function/Supplier;

    return-object v0
.end method
