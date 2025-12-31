.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;-><init>()V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory$InstanceHolder;->INSTANCE:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;

    return-void
.end method

.method public static synthetic access$000()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory$InstanceHolder;->INSTANCE:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;

    return-object v0
.end method
