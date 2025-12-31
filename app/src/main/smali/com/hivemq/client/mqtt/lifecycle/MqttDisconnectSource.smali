.class public final enum Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

.field public static final enum CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

.field public static final enum SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

.field public static final enum USER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->USER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    new-instance v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    const-string v3, "CLIENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    new-instance v3, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    const-string v5, "SERVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->$VALUES:[Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->$VALUES:[Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    return-object v0
.end method
