.class public final enum Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

.field public static final enum FAILURE:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

.field public static final enum SUCCESS_MAXIMUM_QOS_0:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

.field public static final enum SUCCESS_MAXIMUM_QOS_1:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

.field public static final enum SUCCESS_MAXIMUM_QOS_2:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    const-string v1, "SUCCESS_MAXIMUM_QOS_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_0:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    const-string v3, "SUCCESS_MAXIMUM_QOS_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_1:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    const-string v5, "SUCCESS_MAXIMUM_QOS_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_2:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    const/4 v7, 0x3

    const/16 v8, 0x80

    const-string v9, "FAILURE"

    invoke-direct {v5, v9, v7, v8}, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->FAILURE:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    aput-object v5, v8, v7

    sput-object v8, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

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

    iput p3, p0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->code:I

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;
    .locals 2

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_0:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->code:I

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_1:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->code:I

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->SUCCESS_MAXIMUM_QOS_2:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->code:I

    if-ne p0, v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->FAILURE:Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->code:I

    if-ne p0, v1, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    return-object v0
.end method
