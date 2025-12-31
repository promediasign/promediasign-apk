.class public final enum Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field private static final BY_USER:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum QUOTA_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field public static final enum UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

.field private static final VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v3, 0x1

    sget-object v4, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v5, "NO_MATCHING_SUBSCRIBERS"

    invoke-direct {v2, v5, v3, v4}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->NO_MATCHING_SUBSCRIBERS:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v5, 0x2

    sget-object v6, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v7, "UNSPECIFIED_ERROR"

    invoke-direct {v4, v7, v5, v6}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v6, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v7, 0x3

    sget-object v8, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "IMPLEMENTATION_SPECIFIC_ERROR"

    invoke-direct {v6, v9, v7, v8}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v6, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->IMPLEMENTATION_SPECIFIC_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v8, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v9, 0x4

    sget-object v10, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v11, "NOT_AUTHORIZED"

    invoke-direct {v8, v11, v9, v10}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v8, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v10, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v11, 0x5

    sget-object v12, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v13, "TOPIC_NAME_INVALID"

    invoke-direct {v10, v13, v11, v12}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v10, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v12, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v13, 0x6

    sget-object v14, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v15, "PACKET_IDENTIFIER_IN_USE"

    invoke-direct {v12, v15, v13, v14}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v12, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->PACKET_IDENTIFIER_IN_USE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v14, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/4 v15, 0x7

    sget-object v13, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v11, "QUOTA_EXCEEDED"

    invoke-direct {v14, v11, v15, v13}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v14, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->QUOTA_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-instance v11, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/16 v13, 0x8

    sget-object v15, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v9, "PAYLOAD_FORMAT_INVALID"

    invoke-direct {v11, v9, v13, v15}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v11, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->PAYLOAD_FORMAT_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v2, 0x4

    aput-object v8, v9, v2

    const/4 v2, 0x5

    aput-object v10, v9, v2

    const/4 v2, 0x6

    aput-object v12, v9, v2

    const/4 v12, 0x7

    aput-object v14, v9, v12

    aput-object v11, v9, v13

    sput-object v9, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->values()[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    move-result-object v9

    sput-object v9, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    new-array v2, v2, [Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    aput-object v4, v2, v1

    aput-object v6, v2, v3

    aput-object v8, v2, v5

    aput-object v10, v2, v7

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const/4 v1, 0x5

    aput-object v11, v2, v1

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->BY_USER:Ljava/util/EnumSet;

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

    iput p3, p0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->code:I

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

    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;
    .locals 5

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->code:I

    return v0
.end method

.method public final synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    return v0
.end method
