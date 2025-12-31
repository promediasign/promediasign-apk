.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->b:Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    invoke-static {v1, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->f(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
