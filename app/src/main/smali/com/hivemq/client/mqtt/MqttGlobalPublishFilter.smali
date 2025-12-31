.class public final enum Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field public static final enum ALL:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field public static final enum REMAINING:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field public static final enum SUBSCRIBED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

.field public static final enum UNSOLICITED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ALL:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    new-instance v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    const-string v3, "SUBSCRIBED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->SUBSCRIBED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    new-instance v3, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    const-string v5, "UNSOLICITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->UNSOLICITED:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    new-instance v5, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    const-string v7, "REMAINING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->REMAINING:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->$VALUES:[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->$VALUES:[Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    return-object v0
.end method
