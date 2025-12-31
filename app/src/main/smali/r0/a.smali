.class public final synthetic Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

.field public final synthetic c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lr0/a;->a:I

    iput-object p1, p0, Lr0/a;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    iput-object p2, p0, Lr0/a;->c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    iput-object p3, p0, Lr0/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lr0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr0/a;->c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    iget-object v1, p0, Lr0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    iget-object v2, p0, Lr0/a;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->n(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lr0/a;->c:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Lr0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    iget-object v2, p0, Lr0/a;->b:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;

    invoke-static {v2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;->h(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
