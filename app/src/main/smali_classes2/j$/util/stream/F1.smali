.class final Lj$/util/stream/F1;
.super Lj$/util/stream/z0;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field final synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/lang/Object;

.field final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/f3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lj$/util/stream/F1;->h:I

    iput-object p2, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    iput-object p4, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lj$/util/stream/z0;-><init>(Lj$/util/stream/f3;)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/f3;Ljava/util/function/BinaryOperator;Ljava/lang/Object;Ljava/util/function/Supplier;I)V
    .locals 0

    iput p5, p0, Lj$/util/stream/F1;->h:I

    iput-object p2, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    iput-object p4, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f0()Lj$/util/stream/V1;
    .locals 4

    iget v0, p0, Lj$/util/stream/F1;->h:I

    packed-switch v0, :pswitch_data_0

    .line 0
    new-instance v0, Lj$/util/stream/S1;

    iget-object v1, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BinaryOperator;

    iget-object v2, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Supplier;

    iget-object v3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/ObjIntConsumer;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/S1;-><init>(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0

    .line 0
    :pswitch_0
    new-instance v0, Lj$/util/stream/O1;

    iget-object v1, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Supplier;

    iget-object v3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/BiConsumer;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/O1;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-object v0

    .line 0
    :pswitch_1
    new-instance v0, Lj$/util/stream/K1;

    iget-object v1, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BinaryOperator;

    iget-object v2, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    iget-object v3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/BiFunction;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/K1;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V

    return-object v0

    .line 0
    :pswitch_2
    new-instance v0, Lj$/util/stream/I1;

    iget-object v1, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BinaryOperator;

    iget-object v2, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Supplier;

    iget-object v3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/ObjDoubleConsumer;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/I1;-><init>(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0

    .line 0
    :pswitch_3
    new-instance v0, Lj$/util/stream/C1;

    iget-object v1, p0, Lj$/util/stream/F1;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BinaryOperator;

    iget-object v2, p0, Lj$/util/stream/F1;->j:Ljava/lang/Object;

    check-cast v2, Ljava/util/function/Supplier;

    iget-object v3, p0, Lj$/util/stream/F1;->k:Ljava/lang/Object;

    check-cast v3, Ljava/util/function/ObjLongConsumer;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/C1;-><init>(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
