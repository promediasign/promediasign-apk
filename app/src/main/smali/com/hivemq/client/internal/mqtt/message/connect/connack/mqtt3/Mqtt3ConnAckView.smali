.class public Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;


# static fields
.field public static final MAPPER:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAck;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk1/p;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->MAPPER:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    return-void
.end method

.method public static delegate(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;Z)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 14

    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegateReasonCode(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    move-result-object v1

    sget-object v8, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    const/4 v11, 0x0

    sget-object v12, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move v2, p1

    invoke-direct/range {v0 .. v12}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v13
.end method

.method private static delegateReasonCode(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt3$message$connect$connack$Mqtt3ConnAckReturnCode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->BAD_USER_NAME_OR_PASSWORD:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SERVER_UNAVAILABLE:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->CLIENT_IDENTIFIER_NOT_VALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    return-object v0
.end method

.method public static of(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;-><init>(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)V

    return-object v0
.end method

.method private toAttributeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returnCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->getReturnCode()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->isSessionPresent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static viewReasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt5$message$connect$connack$Mqtt5ConnAckReasonCode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->BAD_USER_NAME_OR_PASSWORD:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->SERVER_UNAVAILABLE:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->IDENTIFIER_REJECTED:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getReturnCode()Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->viewReasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSessionPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate:Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->isSessionPresent()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MqttConnAck{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->toAttributeString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x7d

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
