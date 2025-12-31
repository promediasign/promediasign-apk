.class public abstract Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<",
        "TM;>;",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;"
    }
.end annotation


# instance fields
.field private final packetIdentifier:I


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)V

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->packetIdentifier:I

    return-void
.end method


# virtual methods
.method public getPacketIdentifier()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->packetIdentifier:I

    return v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packetIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->packetIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
