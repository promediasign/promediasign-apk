.class public final synthetic Lj$/util/stream/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;
.implements Ljava/util/function/Function;
.implements Ljava/util/function/BiConsumer;
.implements Ljava/util/function/ObjDoubleConsumer;
.implements Ljava/util/function/Supplier;
.implements Ljava/util/function/LongFunction;
.implements Ljava/util/function/IntFunction;
.implements Ljava/util/function/DoubleBinaryOperator;
.implements Ljava/util/function/DoubleFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 5

    iget v0, p0, Lj$/util/stream/l;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    :pswitch_0
    check-cast p1, Lj$/util/i;

    invoke-virtual {p1, p2, p3}, Lj$/util/i;->accept(D)V

    return-void

    .line 0
    :pswitch_1
    check-cast p1, [D

    .line 0
    invoke-static {p1, p2, p3}, Lj$/util/stream/Collectors;->c([DD)V

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    add-double/2addr v1, p2

    aput-wide v1, p1, v0

    return-void

    .line 0
    :pswitch_2
    check-cast p1, [D

    const/4 v0, 0x2

    .line 0
    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    invoke-static {p1, p2, p3}, Lj$/util/stream/Collectors;->c([DD)V

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    add-double/2addr v1, p2

    aput-wide v1, p1, v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lj$/util/stream/l;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    check-cast p1, Lj$/util/i;

    check-cast p2, Lj$/util/i;

    invoke-virtual {p1, p2}, Lj$/util/i;->b(Lj$/util/i;)V

    return-void

    .line 0
    :sswitch_0
    check-cast p1, Ljava/util/LinkedHashSet;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 0
    :sswitch_1
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 0
    :sswitch_2
    check-cast p1, [D

    check-cast p2, [D

    const/4 v0, 0x0

    .line 0
    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->c([DD)V

    const/4 v0, 0x1

    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->c([DD)V

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void

    .line 0
    :sswitch_3
    check-cast p1, [D

    check-cast p2, [D

    const/4 v0, 0x0

    .line 0
    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->c([DD)V

    const/4 v0, 0x1

    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->c([DD)V

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lj$/util/stream/l;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    iget v0, p0, Lj$/util/stream/l;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    .line 0
    :sswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xb -> :sswitch_2
        0xd -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public apply(D)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 0

    .line 0
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/stream/l;->a:I

    packed-switch v0, :pswitch_data_0

    .line 0
    :pswitch_0
    invoke-static {p1, p2}, Lj$/util/stream/z0;->V(J)Lj$/util/stream/C0;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_1
    invoke-static {p1, p2}, Lj$/util/stream/z0;->T(J)Lj$/util/stream/B0;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_2
    invoke-static {p1, p2}, Lj$/util/stream/z0;->J(J)Lj$/util/stream/A0;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    return-object p1
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/stream/l;->a:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lj$/util/stream/X0;

    check-cast p1, Lj$/util/stream/L0;

    check-cast p2, Lj$/util/stream/L0;

    .line 0
    invoke-direct {v0, p1, p2}, Lj$/util/stream/N0;-><init>(Lj$/util/stream/L0;Lj$/util/stream/L0;)V

    return-object v0

    .line 0
    :sswitch_0
    new-instance v0, Lj$/util/stream/V0;

    check-cast p1, Lj$/util/stream/J0;

    check-cast p2, Lj$/util/stream/J0;

    .line 0
    invoke-direct {v0, p1, p2}, Lj$/util/stream/N0;-><init>(Lj$/util/stream/L0;Lj$/util/stream/L0;)V

    return-object v0

    .line 0
    :sswitch_1
    new-instance v0, Lj$/util/stream/U0;

    check-cast p1, Lj$/util/stream/H0;

    check-cast p2, Lj$/util/stream/H0;

    .line 0
    invoke-direct {v0, p1, p2}, Lj$/util/stream/N0;-><init>(Lj$/util/stream/L0;Lj$/util/stream/L0;)V

    return-object v0

    .line 0
    :sswitch_2
    new-instance v0, Lj$/util/stream/T0;

    check-cast p1, Lj$/util/stream/F0;

    check-cast p2, Lj$/util/stream/F0;

    .line 0
    invoke-direct {v0, p1, p2}, Lj$/util/stream/N0;-><init>(Lj$/util/stream/L0;Lj$/util/stream/L0;)V

    return-object v0

    .line 0
    :sswitch_3
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lj$/util/stream/Collectors;->b(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xb -> :sswitch_2
        0xd -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public applyAsDouble(DD)D
    .locals 0

    .line 0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/stream/l;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x4

    .line 0
    new-array v0, v0, [D

    return-object v0

    .line 0
    :pswitch_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0

    .line 0
    :pswitch_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 0
    :pswitch_3
    new-instance v0, Lj$/util/k;

    invoke-direct {v0}, Lj$/util/k;-><init>()V

    return-object v0

    .line 0
    :pswitch_4
    new-instance v0, Lj$/util/j;

    invoke-direct {v0}, Lj$/util/j;-><init>()V

    return-object v0

    .line 0
    :pswitch_5
    new-instance v0, Lj$/util/i;

    invoke-direct {v0}, Lj$/util/i;-><init>()V

    return-object v0

    .line 0
    :pswitch_6
    new-instance v0, Lj$/util/stream/L;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    .line 0
    :pswitch_7
    new-instance v0, Lj$/util/stream/K;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    .line 0
    :pswitch_8
    new-instance v0, Lj$/util/stream/J;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    .line 0
    :pswitch_9
    new-instance v0, Lj$/util/stream/I;

    .line 0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
