.class public final enum Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum BAD_USER_NAME_OR_PASSWORD:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum BANNED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum CLIENT_IDENTIFIER_NOT_VALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field private static final ERROR_CODE_LOOKUP:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field private static final ERROR_CODE_MAX:I

.field private static final ERROR_CODE_MIN:I

.field public static final enum IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum MALFORMED_PACKET:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum PACKET_TOO_LARGE:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum QOS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum QUOTA_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum SERVER_BUSY:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum SERVER_MOVED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum SERVER_UNAVAILABLE:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

.field public static final enum USE_ANOTHER_SERVER:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v4, "UNSPECIFIED_ERROR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v4, 0x2

    sget-object v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->MALFORMED_PACKET:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v7, "MALFORMED_PACKET"

    invoke-direct {v2, v7, v4, v6}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->MALFORMED_PACKET:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v6, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v7, 0x3

    sget-object v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "PROTOCOL_ERROR"

    invoke-direct {v6, v9, v7, v8}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v6, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v8, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v9, 0x4

    sget-object v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v11, "IMPLEMENTATION_SPECIFIC_ERROR"

    invoke-direct {v8, v11, v9, v10}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v8, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v10, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v11, 0x5

    const/16 v12, 0x84

    const-string v13, "UNSUPPORTED_PROTOCOL_VERSION"

    invoke-direct {v10, v13, v11, v12}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v12, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v13, 0x6

    const/16 v14, 0x85

    const-string v15, "CLIENT_IDENTIFIER_NOT_VALID"

    invoke-direct {v12, v15, v13, v14}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->CLIENT_IDENTIFIER_NOT_VALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v14, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v15, 0x7

    const/16 v13, 0x86

    const-string v11, "BAD_USER_NAME_OR_PASSWORD"

    invoke-direct {v14, v11, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->BAD_USER_NAME_OR_PASSWORD:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v11, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0x8

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "NOT_AUTHORIZED"

    invoke-direct {v11, v9, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v11, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v9, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0x9

    const/16 v13, 0x88

    const-string v7, "SERVER_UNAVAILABLE"

    invoke-direct {v9, v7, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SERVER_UNAVAILABLE:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v7, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0xa

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SERVER_BUSY:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v4, "SERVER_BUSY"

    invoke-direct {v7, v4, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v7, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SERVER_BUSY:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0xb

    const/16 v13, 0x8a

    const-string v5, "BANNED"

    invoke-direct {v4, v5, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->BANNED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0xc

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v3, "BAD_AUTHENTICATION_METHOD"

    invoke-direct {v5, v3, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0xd

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v16, v5

    const-string v5, "TOPIC_NAME_INVALID"

    invoke-direct {v3, v5, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0xe

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v17, v3

    const-string v3, "PACKET_TOO_LARGE"

    invoke-direct {v5, v3, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0xf

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v18, v5

    const-string v5, "QUOTA_EXCEEDED"

    invoke-direct {v3, v5, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0x10

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v19, v3

    const-string v3, "PAYLOAD_FORMAT_INVALID"

    invoke-direct {v5, v3, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0x11

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v20, v5

    const-string v5, "RETAIN_NOT_SUPPORTED"

    invoke-direct {v3, v5, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0x12

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QOS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v21, v3

    const-string v3, "QOS_NOT_SUPPORTED"

    invoke-direct {v5, v3, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->QOS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0x13

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->USE_ANOTHER_SERVER:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v22, v5

    const-string v5, "USE_ANOTHER_SERVER"

    invoke-direct {v3, v5, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->USE_ANOTHER_SERVER:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v13, 0x14

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SERVER_MOVED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v23, v3

    const-string v3, "SERVER_MOVED"

    invoke-direct {v5, v3, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SERVER_MOVED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v15, 0x15

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    move-object/from16 v24, v5

    const-string v5, "CONNECTION_RATE_EXCEEDED"

    invoke-direct {v3, v5, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/16 v5, 0x16

    new-array v5, v5, [Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    const/4 v13, 0x0

    aput-object v0, v5, v13

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v7, v5, v0

    const/16 v0, 0xb

    aput-object v4, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    aput-object v3, v5, v15

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    iget v0, v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->code:I

    sput v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_MIN:I

    iget v1, v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->code:I

    sput v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_MAX:I

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    new-array v0, v1, [Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_LOOKUP:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->values()[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_LOOKUP:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    iget v5, v2, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->code:I

    sget v6, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_MIN:I

    sub-int/2addr v5, v6

    aput-object v2, v4, v5

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->code:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->getCode()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .locals 2

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->code:I

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_MIN:I

    if-lt p0, v0, :cond_2

    sget v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_MAX:I

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->ERROR_CODE_LOOKUP:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->code:I

    return v0
.end method

.method public final synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    return v0
.end method
