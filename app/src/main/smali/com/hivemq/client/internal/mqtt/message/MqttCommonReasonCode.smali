.class public final enum Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum MALFORMED_PACKET:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PACKET_TOO_LARGE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum PROTOCOL_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum QOS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SERVER_BUSY:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SERVER_MOVED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum TOPIC_FILTER_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum TOPIC_NAME_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum USE_ANOTHER_SERVER:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

.field public static final enum WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v3, "NO_MATCHING_SUBSCRIBERS"

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v6, 0x2

    const/16 v7, 0x80

    const-string v8, "UNSPECIFIED_ERROR"

    invoke-direct {v3, v8, v6, v7}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v7, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v8, 0x3

    const/16 v9, 0x81

    const-string v10, "MALFORMED_PACKET"

    invoke-direct {v7, v10, v8, v9}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->MALFORMED_PACKET:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v9, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v10, 0x4

    const/16 v11, 0x82

    const-string v12, "PROTOCOL_ERROR"

    invoke-direct {v9, v12, v10, v11}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v11, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v12, 0x5

    const/16 v13, 0x83

    const-string v14, "IMPLEMENTATION_SPECIFIC_ERROR"

    invoke-direct {v11, v14, v12, v13}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v14, 0x6

    const/16 v15, 0x87

    const-string v12, "NOT_AUTHORIZED"

    invoke-direct {v13, v12, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v15, 0x7

    const/16 v14, 0x89

    const-string v10, "SERVER_BUSY"

    invoke-direct {v12, v10, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SERVER_BUSY:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0x8

    const/16 v15, 0x8c

    const-string v8, "BAD_AUTHENTICATION_METHOD"

    invoke-direct {v10, v8, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->BAD_AUTHENTICATION_METHOD:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0x9

    const/16 v14, 0x8f

    const-string v6, "TOPIC_FILTER_INVALID"

    invoke-direct {v8, v6, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_FILTER_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0xa

    const/16 v15, 0x90

    const-string v4, "TOPIC_NAME_INVALID"

    invoke-direct {v6, v4, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v4, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0xb

    const/16 v14, 0x91

    const-string v2, "PACKET_IDENTIFIER_IN_USE"

    invoke-direct {v4, v2, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0xc

    const/16 v15, 0x92

    const-string v5, "PACKET_IDENTIFIER_NOT_FOUND"

    invoke-direct {v2, v5, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0xd

    const/16 v14, 0x95

    move-object/from16 v16, v2

    const-string v2, "PACKET_TOO_LARGE"

    invoke-direct {v5, v2, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0xe

    const/16 v15, 0x97

    move-object/from16 v17, v5

    const-string v5, "QUOTA_EXCEEDED"

    invoke-direct {v2, v5, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0xf

    const/16 v14, 0x99

    move-object/from16 v18, v2

    const-string v2, "PAYLOAD_FORMAT_INVALID"

    invoke-direct {v5, v2, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v14, "RETAIN_NOT_SUPPORTED"

    const/16 v15, 0x9a

    move-object/from16 v19, v5

    const/16 v5, 0x10

    invoke-direct {v2, v14, v5, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->RETAIN_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0x11

    const/16 v15, 0x9b

    move-object/from16 v20, v2

    const-string v2, "QOS_NOT_SUPPORTED"

    invoke-direct {v5, v2, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QOS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0x12

    const/16 v14, 0x9c

    move-object/from16 v21, v5

    const-string v5, "USE_ANOTHER_SERVER"

    invoke-direct {v2, v5, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->USE_ANOTHER_SERVER:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0x13

    const/16 v15, 0x9d

    move-object/from16 v22, v2

    const-string v2, "SERVER_MOVED"

    invoke-direct {v5, v2, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SERVER_MOVED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0x14

    const/16 v14, 0x9e

    move-object/from16 v23, v5

    const-string v5, "SHARED_SUBSCRIPTIONS_NOT_SUPPORTED"

    invoke-direct {v2, v5, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0x15

    const/16 v15, 0x9f

    move-object/from16 v24, v2

    const-string v2, "CONNECTION_RATE_EXCEEDED"

    invoke-direct {v5, v2, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->CONNECTION_RATE_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v15, 0x16

    const/16 v14, 0xa1

    move-object/from16 v25, v5

    const-string v5, "SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED"

    invoke-direct {v2, v5, v15, v14}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    new-instance v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v14, 0x17

    const/16 v15, 0xa2

    move-object/from16 v26, v2

    const-string v2, "WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED"

    invoke-direct {v5, v2, v14, v15}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/16 v2, 0x18

    new-array v2, v2, [Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v9, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v4, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v5, v2, v0

    sput-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->$VALUES:[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->code:I

    return-void
.end method

.method public static allErrors(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    invoke-interface {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->$VALUES:[Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->code:I

    return v0
.end method

.method public final synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    return v0
.end method
