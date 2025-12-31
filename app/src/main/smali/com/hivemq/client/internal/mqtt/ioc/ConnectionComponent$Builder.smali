.class public interface abstract Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;
.end method

.method public abstract connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
.end method

.method public abstract connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
.end method
