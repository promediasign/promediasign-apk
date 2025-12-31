.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;"
    }
.end annotation


# instance fields
.field private final statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    return-void
.end method


# virtual methods
.method public getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    return-object v0
.end method

.method public getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    return-object v0
.end method

.method public stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    return-object v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stateless="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->statelessMessage:Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
