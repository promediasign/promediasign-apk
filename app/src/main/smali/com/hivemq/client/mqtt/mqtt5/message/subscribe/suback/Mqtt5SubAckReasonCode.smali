.class public final enum Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum GRANTED_QOS_0:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum GRANTED_QOS_1:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum GRANTED_QOS_2:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum QUOTA_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum TOPIC_FILTER_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field private static final VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

.field public static final enum WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const-string v1, "GRANTED_QOS_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_0:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const-string v3, "GRANTED_QOS_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_1:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const-string v5, "GRANTED_QOS_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->GRANTED_QOS_2:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/4 v7, 0x3

    sget-object v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "UNSPECIFIED_ERROR"

    invoke-direct {v5, v9, v7, v8}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v8, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/4 v9, 0x4

    sget-object v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v11, "IMPLEMENTATION_SPECIFIC_ERROR"

    invoke-direct {v8, v11, v9, v10}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v8, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v10, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/4 v11, 0x5

    sget-object v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v13, "NOT_AUTHORIZED"

    invoke-direct {v10, v13, v11, v12}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v10, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v12, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/4 v13, 0x6

    sget-object v14, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_FILTER_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v15, "TOPIC_FILTER_INVALID"

    invoke-direct {v12, v15, v13, v14}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v12, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->TOPIC_FILTER_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v14, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/4 v15, 0x7

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v11, "PACKET_IDENTIFIER_IN_USE"

    invoke-direct {v14, v11, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v11, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/16 v13, 0x8

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "QUOTA_EXCEEDED"

    invoke-direct {v11, v9, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v11, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v9, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/16 v15, 0x9

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v7, "SHARED_SUBSCRIPTIONS_NOT_SUPPORTED"

    invoke-direct {v9, v7, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v9, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->SHARED_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v7, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/16 v13, 0xa

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v6, "SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED"

    invoke-direct {v7, v6, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v7, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->SUBSCRIPTION_IDENTIFIERS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v6, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/16 v15, 0xb

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v4, "WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED"

    invoke-direct {v6, v4, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v6, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->WILDCARD_SUBSCRIPTIONS_NOT_SUPPORTED:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v11, v4, v0

    const/16 v0, 0x9

    aput-object v9, v4, v0

    const/16 v0, 0xa

    aput-object v7, v4, v0

    aput-object v6, v4, v15

    sput-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->values()[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

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

    iput p3, p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->code:I

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

    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;
    .locals 5

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->code:I

    return v0
.end method

.method public final synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    return v0
.end method
