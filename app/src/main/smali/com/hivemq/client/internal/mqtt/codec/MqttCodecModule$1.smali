.class abstract synthetic Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hivemq/client/mqtt/MqttVersion;->values()[Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;->$SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I

    :try_start_0
    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/hivemq/client/internal/mqtt/codec/MqttCodecModule$1;->$SwitchMap$com$hivemq$client$mqtt$MqttVersion:[I

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
