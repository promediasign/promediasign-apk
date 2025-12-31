.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private final reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const-string v0, "Reason code"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Method"

    invoke-static {p2, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .locals 7

    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v6
.end method
