.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttClientBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method
