.class abstract Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;
.super Lcom/hivemq/client/internal/util/collections/NodeList$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
        ">;"
    }
.end annotation


# instance fields
.field packetIdentifier:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "*>;"
        }
    .end annotation
.end method
