.class public abstract Lcom/hivemq/client/internal/mqtt/util/MqttChecks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static binaryData([BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataInternal([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static binaryDataInternal(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " can not be encoded as binary data. Maximum length is 65535 bytes, but was "

    .line 1
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static binaryDataInternal([BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " can not be encoded as binary data. Maximum length is 65535 bytes, but was "

    .line 7
    invoke-static {p1, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    array-length p0, p0

    const-string v1, " bytes."

    .line 9
    invoke-static {v1, p0, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataInternal(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static connect(Lcom/hivemq/client/mqtt/mqtt5/message/connect/Mqtt5Connect;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 2

    const-class v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    const-string v1, "Connect"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-object p0
.end method

.method public static disconnect(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .locals 2

    const-class v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    const-string v1, "Disconnect"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    return-object p0
.end method

.method public static publish(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;
    .locals 2

    const-class v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    const-string v1, "Publish"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    return-object p0
.end method

.method public static reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    const-string v0, "Reason string"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->stringOrNull(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    return-object p0
.end method

.method public static stringOrNull(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static subscribe(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5Subscribe;)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .locals 2

    const-class v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    const-string v1, "Subscribe"

    invoke-static {p0, v0, v1}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    return-object p0
.end method
