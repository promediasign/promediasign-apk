.class abstract synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->values()[Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    :try_start_0
    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
