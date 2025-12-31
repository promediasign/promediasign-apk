.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public abstract contentType(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract messageExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TC;"
        }
    .end annotation
.end method

.method public abstract payload([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TC;"
        }
    .end annotation
.end method

.method public abstract qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TC;"
        }
    .end annotation
.end method
