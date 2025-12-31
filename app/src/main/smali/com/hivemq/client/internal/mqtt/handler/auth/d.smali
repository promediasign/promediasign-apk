.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic c:Ljava/util/function/BiConsumer;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->a:I

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->c:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->d:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->c:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->d:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->c(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Boolean;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->c:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->d:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->d(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/d;->a:I

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
