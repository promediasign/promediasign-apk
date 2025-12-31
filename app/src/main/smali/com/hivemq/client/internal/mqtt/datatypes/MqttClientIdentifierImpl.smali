.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
.super Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# static fields
.field public static final REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;-><init>([B)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-void
.end method

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

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 0

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    .line 1
    const-string v0, "Client identifier"

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
