.class public final synthetic Lr0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr0/d;->a:I

    iput-object p1, p0, Lr0/d;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lr0/d;->c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lr0/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr0/d;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    iget-object v1, p0, Lr0/d;->c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->h(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lr0/d;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    iget-object v1, p0, Lr0/d;->c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->k(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
