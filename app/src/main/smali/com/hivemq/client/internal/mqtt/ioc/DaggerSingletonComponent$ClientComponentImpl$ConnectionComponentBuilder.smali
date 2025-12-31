.class final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionComponentBuilder"
.end annotation


# instance fields
.field private connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field private connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field final synthetic this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;
    .locals 5

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    const-class v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    const-class v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
    .locals 0

    .line 2
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    return-object p0
.end method

.method public bridge synthetic connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
    .locals 0

    .line 2
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-object p0
.end method
