.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->a:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->a:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->g(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
