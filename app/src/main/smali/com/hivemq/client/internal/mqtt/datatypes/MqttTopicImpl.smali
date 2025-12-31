.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopic;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    return-void
.end method

.method private static checkNoWildcardCharacters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "."

    const-string v2, " ["

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain single level wildcard (+), found at index "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain multi level wildcard (#), found at index "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->checkNoWildcardCharacters(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static containsWildcardCharacters([B)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p0, v2

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 0

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isWellFormed([B)Z
    .locals 1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->isWellFormed([B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->containsWildcardCharacters([B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    .line 1
    const-string v0, "Topic"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-direct {p1, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;
    .locals 1

    .line 3
    array-length v0, p0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
