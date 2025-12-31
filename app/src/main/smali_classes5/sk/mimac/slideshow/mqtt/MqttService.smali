.class public Lsk/mimac/slideshow/mqtt/MqttService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/mqtt/MqttService;

.field private static thread:Ljava/lang/Thread;


# instance fields
.field private final apiService:Lsk/mimac/slideshow/ApiService;

.field private client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

.field private deviceToken:Ljava/lang/String;

.field private final topicPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/mqtt/MqttService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_TOPIC_PREFIX:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getApiService()Lsk/mimac/slideshow/ApiService;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/mqtt/MqttService;->apiService:Lsk/mimac/slideshow/ApiService;

    return-void
.end method

.method private createClient(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    .locals 4

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, LE0/a;->b()Lcom/hivemq/client/mqtt/MqttClientBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClientBuilder;->useMqttVersion5()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->identifier(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    invoke-interface {v0, p1}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->serverHost(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_USERNAME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, LG0/b;->a()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;->username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Complete;

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_PASSWORD:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;->password([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Complete;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Complete;->build()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;->simpleAuth(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    move-result-object p1

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_USE_WEBSOCKETS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->webSocketWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->serverPort(I)Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REQUIRE_TLS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/MqttClientBuilderBase;->sslWithDefaultConfig()Lcom/hivemq/client/mqtt/MqttClientBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;

    :cond_4
    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientBuilder;->buildBlocking()Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    move-result-object p1

    return-object p1
.end method

.method private disconnect()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t disconnect MQTT connection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getState()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Not started"

    return-object v0
.end method

.method private processApi(Ljava/lang/String;Lj$/util/Optional;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "errorMessage"

    .line 2
    .line 3
    const-string v1, "errorCode"

    .line 4
    .line 5
    const-string v2, "success"

    .line 6
    .line 7
    const-string v3, "command"

    .line 8
    .line 9
    const-string v4, "/API"

    .line 10
    .line 11
    const-string v5, "/RESP/"

    .line 12
    .line 13
    sget-object v6, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    .line 14
    .line 15
    const-string v7, "Executing API command from MQTT: {}"

    .line 16
    .line 17
    invoke-interface {v6, v7, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    .line 25
    .line 26
    const-string p1, "operation"

    .line 27
    .line 28
    const-string v8, ""

    .line 29
    .line 30
    invoke-virtual {v7, p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v8, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v5, v4, v7}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance v5, Lorg/json/JSONObject;

    .line 60
    .line 61
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "Missing operation"

    .line 79
    .line 80
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, v4, p2, p1}, Lsk/mimac/slideshow/mqtt/MqttService;->sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    :try_start_1
    const-string v8, "parameters"

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v7}, Lsk/mimac/slideshow/mqtt/MqttService;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-direct {p0, p1, v7, p2}, Lsk/mimac/slideshow/mqtt/MqttService;->processApiInternal(Ljava/lang/String;Ljava/util/Map;Lj$/util/Optional;)V
    :try_end_1
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception v7

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v9, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v5, v4, v8}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    new-instance v5, Lorg/json/JSONObject;

    .line 123
    .line 124
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v7}, Lsk/mimac/slideshow/exception/ApiException;->getType()Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-direct {p0, v4, p2, p1}, Lsk/mimac/slideshow/mqtt/MqttService;->sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void

    .line 155
    :catch_1
    move-exception v7

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v9, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object v5, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v5, v4, v8}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    new-instance v5, Lorg/json/JSONObject;

    .line 176
    .line 177
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 189
    .line 190
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    goto :goto_0
.end method

.method private processApiInternal(Ljava/lang/String;Ljava/util/Map;Lj$/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/mqtt/MqttService;->apiService:Lsk/mimac/slideshow/ApiService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/RESP/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    const-string v3, "/API"

    .line 1
    invoke-static {v2, v3, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "command"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "success"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "result"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p3, p1}, Lsk/mimac/slideshow/mqtt/MqttService;->sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V

    return-void
.end method

.method private processMessages(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;)V
    .locals 5

    :goto_0
    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->receive()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->getTopic()Lcom/hivemq/client/mqtt/datatypes/MqttTopic;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->getPayloadAsBytes()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, "/SHELL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->getCorrelationData()Lj$/util/Optional;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lsk/mimac/slideshow/mqtt/MqttService;->processShell(Ljava/lang/String;Lj$/util/Optional;)V

    goto :goto_0

    :cond_0
    const-string v3, "/API"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;->getCorrelationData()Lj$/util/Optional;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lsk/mimac/slideshow/mqtt/MqttService;->processApi(Ljava/lang/String;Lj$/util/Optional;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unknown MQTT message received: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processShell(Ljava/lang/String;Lj$/util/Optional;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    const-string v1, "success"

    .line 4
    .line 5
    const-string v2, "command"

    .line 6
    .line 7
    const-string v3, "/SHELL"

    .line 8
    .line 9
    const-string v4, "/RESP/"

    .line 10
    .line 11
    sget-object v5, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    .line 12
    .line 13
    const-string v6, "Executing shell command from MQTT: {}"

    .line 14
    .line 15
    invoke-interface {v5, v6, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/16 v5, 0x4e20

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    :try_start_0
    invoke-static {p1, v6, v5}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;ZI)Lsk/mimac/slideshow/utils/Shell$Response;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v8, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v8, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    new-instance v8, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const/4 v9, 0x1

    .line 60
    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    new-instance v9, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lsk/mimac/slideshow/utils/Shell$Response;->getResult()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const-string v10, "stdout"

    .line 78
    .line 79
    invoke-virtual {v5}, Lsk/mimac/slideshow/utils/Shell$Response;->getStdout()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const-string v10, "stderr"

    .line 88
    .line 89
    invoke-virtual {v5}, Lsk/mimac/slideshow/utils/Shell$Response;->getStderr()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, v7, p2, v0}, Lsk/mimac/slideshow/mqtt/MqttService;->sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-object v7, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v4, v3, v5}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-instance v4, Lorg/json/JSONObject;

    .line 126
    .line 127
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, "errorCode"

    .line 139
    .line 140
    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->INTERNAL_SERVER_ERROR:Lsk/mimac/slideshow/exception/ApiException$Type;

    .line 141
    .line 142
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v1, "errorMessage"

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p0, v3, p2, p1}, Lsk/mimac/slideshow/mqtt/MqttService;->sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    return-void
.end method

.method public static sendDeviceInfo()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    const-string v1, "deviceInfo"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lsk/mimac/slideshow/mqtt/MqttService;->processApiInternal(Ljava/lang/String;Ljava/util/Map;Lj$/util/Optional;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t send device info to MQTT"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sendPlayStatistics(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/item/ItemStatistic;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/MqttClient;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/item/ItemStatistic;

    invoke-virtual {v2}, Lsk/mimac/slideshow/item/ItemStatistic;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    iget-object v3, v3, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/RESP/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    iget-object v3, v3, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/API"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "command"

    const-string v6, "playStatistics"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "success"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "result"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "statistics"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lsk/mimac/slideshow/mqtt/MqttService;->sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t send display info to MQTT"

    invoke-interface {v0, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return v1
.end method

.method private sendResponse(Ljava/lang/String;Lj$/util/Optional;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lj$/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;->publishWith()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase;->topic(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-interface {p1, v0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;

    const-wide/16 v0, 0x708

    invoke-interface {p1, v0, v1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;->messageExpiryInterval(J)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;

    const-string v0, "application/json"

    invoke-interface {p1, v0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;->contentType(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;->payload([B)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;->correlationData(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send$Complete;->send()Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized start()V
    .locals 4

    const-class v0, Lsk/mimac/slideshow/mqtt/MqttService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/mqtt/MqttService;->stop()V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_SERVER_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/mqtt/MqttService;

    invoke-direct {v1}, Lsk/mimac/slideshow/mqtt/MqttService;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    const-string v3, "MQTT Thread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->thread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static stop()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Waiting for MQTT stop interrupted"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->thread:Ljava/lang/Thread;

    sput-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->instance:Lsk/mimac/slideshow/mqtt/MqttService;

    :cond_0
    return-void
.end method

.method public static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    :goto_0
    const-wide/16 v0, 0x3a98

    :try_start_0
    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_SERVER_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_TOKEN:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_7

    :catch_2
    move-exception v2

    goto/16 :goto_7

    :cond_1
    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/utils/NetworkFormatterUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Device token not entered and MAC address can\'t be read, waiting with MQTT initialization"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lsk/mimac/slideshow/mqtt/MqttService;->createClient(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    move-result-object v3

    iput-object v3, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsk/mimac/slideshow/mqtt/MqttService;->topicPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/REQ/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsk/mimac/slideshow/mqtt/MqttService;->deviceToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Connecting to MQTT server \'{}\' and topics \'{}\'"

    invoke-interface {v4, v5, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    invoke-interface {v2}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;->connect()Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v4, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    sget-object v5, Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;->ALL:Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;

    invoke-interface {v4, v5}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;->publishes(Lcom/hivemq/client/mqtt/MqttGlobalPublishFilter;)Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    invoke-interface {v5}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;->subscribeWith()Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase;->topicFilter(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start$Complete;

    sget-object v5, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-interface {v3, v5}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;->qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscriptionBuilderBase$Complete;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Start$Complete;

    invoke-interface {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/Mqtt5SubscribeBuilder$Send$Complete;->send()Ljava/lang/Object;

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/mqtt/MqttService;->processMessages(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v4}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_4

    :cond_4
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lsk/mimac/slideshow/mqtt/MqttService;->disconnect()V

    iput-object v2, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    if-eqz v4, :cond_5

    :try_start_5
    invoke-interface {v4}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    invoke-direct {p0}, Lsk/mimac/slideshow/mqtt/MqttService;->disconnect()V

    iput-object v2, p0, Lsk/mimac/slideshow/mqtt/MqttService;->client:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient;

    throw v3
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_6

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_8

    :cond_6
    sget-object v3, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Error in MQTT connection"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :goto_7
    sget-object v3, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in MQTT connection: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :goto_8
    sget-object v0, Lsk/mimac/slideshow/mqtt/MqttService;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping MQTT thread"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
