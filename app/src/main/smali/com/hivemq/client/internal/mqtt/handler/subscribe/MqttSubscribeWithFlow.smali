.class Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
.source "SourceFile"


# instance fields
.field private final flow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;"
        }
    .end annotation
.end field

.field final subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

.field final subscriptionIdentifier:I


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "I",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->flow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    return-void
.end method


# virtual methods
.method public getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->flow:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    return-object v0
.end method
