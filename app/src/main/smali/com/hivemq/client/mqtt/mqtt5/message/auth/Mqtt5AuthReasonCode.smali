.class public final enum Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;",
        ">;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

.field public static final enum CONTINUE_AUTHENTICATION:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

.field public static final enum REAUTHENTICATE:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

.field public static final enum SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->SUCCESS:Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;-><init>(Ljava/lang/String;ILcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    const/4 v3, 0x1

    const/16 v4, 0x18

    const-string v5, "CONTINUE_AUTHENTICATION"

    invoke-direct {v2, v5, v3, v4}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->CONTINUE_AUTHENTICATION:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    const/4 v5, 0x2

    const/16 v6, 0x19

    const-string v7, "REAUTHENTICATE"

    invoke-direct {v4, v7, v5, v6}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->REAUTHENTICATE:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

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

    iput p3, p0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->code:I

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

    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    .locals 2

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->code:I

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->CONTINUE_AUTHENTICATION:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->code:I

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->REAUTHENTICATE:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    iget v1, v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->code:I

    if-ne p0, v1, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->code:I

    return v0
.end method

.method public final synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    return v0
.end method
