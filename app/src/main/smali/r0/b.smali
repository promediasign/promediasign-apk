.class public final synthetic Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field public final synthetic c:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

.field public final synthetic d:Lio/netty/channel/ChannelPromise;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iput-object p2, p0, Lr0/b;->b:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p3, p0, Lr0/b;->c:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    iput-object p4, p0, Lr0/b;->d:Lio/netty/channel/ChannelPromise;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr0/b;->d:Lio/netty/channel/ChannelPromise;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lr0/b;->a:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v2, p0, Lr0/b;->b:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v3, p0, Lr0/b;->c:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    invoke-static {v1, v2, v3, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->o(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
