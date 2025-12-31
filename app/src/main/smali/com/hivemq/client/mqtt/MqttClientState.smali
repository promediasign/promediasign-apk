.class public final enum Lcom/hivemq/client/mqtt/MqttClientState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hivemq/client/mqtt/MqttClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hivemq/client/mqtt/MqttClientState;

.field public static final enum CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

.field private static final CONNECTED_OR_RECONNECT:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/hivemq/client/mqtt/MqttClientState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

.field public static final enum CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

.field public static final enum DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

.field public static final enum DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/hivemq/client/mqtt/MqttClientState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/mqtt/MqttClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    new-instance v1, Lcom/hivemq/client/mqtt/MqttClientState;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/hivemq/client/mqtt/MqttClientState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

    new-instance v3, Lcom/hivemq/client/mqtt/MqttClientState;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/hivemq/client/mqtt/MqttClientState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    new-instance v5, Lcom/hivemq/client/mqtt/MqttClientState;

    const-string v7, "DISCONNECTED_RECONNECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/hivemq/client/mqtt/MqttClientState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    new-instance v7, Lcom/hivemq/client/mqtt/MqttClientState;

    const-string v9, "CONNECTING_RECONNECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/hivemq/client/mqtt/MqttClientState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/hivemq/client/mqtt/MqttClientState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/hivemq/client/mqtt/MqttClientState;->$VALUES:[Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-static {v3, v5, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED_OR_RECONNECT:Ljava/util/EnumSet;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    const-class v0, Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/mqtt/MqttClientState;

    return-object p0
.end method

.method public static values()[Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->$VALUES:[Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v0}, [Lcom/hivemq/client/mqtt/MqttClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hivemq/client/mqtt/MqttClientState;

    return-object v0
.end method


# virtual methods
.method public isConnectedOrReconnect()Z
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED_OR_RECONNECT:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
