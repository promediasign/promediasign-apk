.class public Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;


# instance fields
.field private final allowServerReAuth:Z

.field private final validatePayloadFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;-><init>(ZZLcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->DEFAULT:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    return-void
.end method

.method public constructor <init>(ZZLcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    iput-boolean p2, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    iget-boolean v3, p1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    iget-boolean p1, p1, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x4cf

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x4d5

    .line 13
    .line 14
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x4cf

    .line 21
    .line 22
    :cond_1
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    return v0
.end method

.method public isAllowServerReAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->allowServerReAuth:Z

    return v0
.end method

.method public isValidatePayloadFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->validatePayloadFormat:Z

    return v0
.end method
