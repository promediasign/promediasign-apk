.class public final enum Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field public static final enum BAD_USER_NAME_OR_PASSWORD:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field public static final enum IDENTIFIER_REJECTED:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field public static final enum NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field public static final enum SERVER_UNAVAILABLE:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field public static final enum UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

.field private static final VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const-string v3, "UNSUPPORTED_PROTOCOL_VERSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->UNSUPPORTED_PROTOCOL_VERSION:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const-string v5, "IDENTIFIER_REJECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->IDENTIFIER_REJECTED:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const-string v7, "SERVER_UNAVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->SERVER_UNAVAILABLE:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    new-instance v7, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const-string v9, "BAD_USER_NAME_OR_PASSWORD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->BAD_USER_NAME_OR_PASSWORD:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    new-instance v9, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const-string v11, "NOT_AUTHORIZED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    invoke-static {}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->values()[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    return-object v0
.end method
