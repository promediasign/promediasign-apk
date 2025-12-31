.class public final enum Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum NO_SUBSCRIPTIONS_EXISTED:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum TOPIC_FILTER_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field public static final enum UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

.field private static final VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v3, 0x1

    const/16 v4, 0x11

    const-string v5, "NO_SUBSCRIPTIONS_EXISTED"

    invoke-direct {v2, v5, v3, v4}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->NO_SUBSCRIPTIONS_EXISTED:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v5, 0x2

    sget-object v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v7, "UNSPECIFIED_ERROR"

    invoke-direct {v4, v7, v5, v6}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    new-instance v6, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v7, 0x3

    sget-object v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "IMPLEMENTATION_SPECIFIC_ERROR"

    invoke-direct {v6, v9, v7, v8}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v6, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    new-instance v8, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v9, 0x4

    sget-object v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v11, "NOT_AUTHORIZED"

    invoke-direct {v8, v11, v9, v10}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v8, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    new-instance v10, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v11, 0x5

    sget-object v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_FILTER_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v13, "TOPIC_FILTER_INVALID"

    invoke-direct {v10, v13, v11, v12}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v10, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->TOPIC_FILTER_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    new-instance v12, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v13, 0x6

    sget-object v14, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v15, "PACKET_IDENTIFIER_IN_USE"

    invoke-direct {v12, v15, v13, v14}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v12, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->values()[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

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

    iput p3, p0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->code:I

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

    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;
    .locals 5

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->code:I

    return v0
.end method

.method public final synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    return v0
.end method
