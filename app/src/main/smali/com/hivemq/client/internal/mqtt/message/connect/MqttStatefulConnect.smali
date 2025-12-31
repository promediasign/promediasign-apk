.class public Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private final enhancedAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;)V

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->enhancedAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    return-void
.end method


# virtual methods
.method public getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-object v0
.end method

.method public getEnhancedAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->enhancedAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    return-object v0
.end method

.method public toAttributeString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->enhancedAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", enhancedAuth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->enhancedAuth:Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttStatefulConnect{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
