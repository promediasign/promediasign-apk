.class public Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->delegate:Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    return-void
.end method
