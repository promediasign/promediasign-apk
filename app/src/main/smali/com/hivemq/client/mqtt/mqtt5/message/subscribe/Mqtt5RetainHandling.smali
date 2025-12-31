.class public final enum Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field public static final enum DO_NOT_SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field public static final enum SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

.field public static final enum SEND_IF_SUBSCRIPTION_DOES_NOT_EXIST:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    const-string v1, "SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    const-string v3, "SEND_IF_SUBSCRIPTION_DOES_NOT_EXIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->SEND_IF_SUBSCRIPTION_DOES_NOT_EXIST:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    new-instance v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    const-string v5, "DO_NOT_SEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->DO_NOT_SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

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

.method public static fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .locals 2

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->SEND_IF_SUBSCRIPTION_DOES_NOT_EXIST:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->DO_NOT_SEND:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->getCode()I

    move-result v1

    if-ne p0, v1, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->$VALUES:[Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5RetainHandling;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
