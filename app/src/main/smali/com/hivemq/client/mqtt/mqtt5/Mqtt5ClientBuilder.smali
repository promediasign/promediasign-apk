.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientBuilderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract buildBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
.end method

.method public abstract simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;
.end method
