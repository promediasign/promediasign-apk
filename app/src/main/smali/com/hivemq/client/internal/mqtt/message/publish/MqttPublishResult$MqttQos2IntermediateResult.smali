.class public Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;
.super Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttQos2IntermediateResult"
.end annotation


# instance fields
.field private final acknowledgedCallback:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;->acknowledgedCallback:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public acknowledged()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;->acknowledgedCallback:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    return v0
.end method
