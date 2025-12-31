.class Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/checkpoint/Confirmable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable$Qos0;
    }
.end annotation


# instance fields
.field private final confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

.field private final publishWithFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;->confirmed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;->publishWithFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;->publishWithFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishConfirmable;->flow:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->acknowledge(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)V

    return-void
.end method
