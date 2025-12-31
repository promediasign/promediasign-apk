.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/a;->a:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/a;->a:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->runCancel()V

    return-void
.end method
