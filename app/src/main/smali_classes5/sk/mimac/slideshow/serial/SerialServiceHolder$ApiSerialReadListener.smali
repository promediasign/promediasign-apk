.class Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/serial/SerialService$SerialReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/serial/SerialServiceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiSerialReadListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/serial/SerialServiceHolder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;-><init>()V

    return-void
.end method

.method private processApi(Ljava/lang/String;)V
    .locals 8

    const-string v0, "errorMessage"

    const-string v1, "errorCode"

    const-string v2, "success"

    const-string v3, "command"

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->access$100()Lorg/slf4j/Logger;

    move-result-object v4

    const-string v5, "Executing API command from Serial: {}"

    invoke-interface {v4, v5, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "operation"

    const-string v6, ""

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Missing operation"

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;->sendResponse(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    :try_start_1
    const-string v6, "parameters"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lsk/mimac/slideshow/mqtt/MqttService;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getApiService()Lsk/mimac/slideshow/ApiService;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v5, v7}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;->sendResponse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v5}, Lsk/mimac/slideshow/exception/ApiException;->getType()Lsk/mimac/slideshow/exception/ApiException$Type;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;->sendResponse(Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :catch_1
    move-exception v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lsk/mimac/slideshow/exception/ApiException$Type;->BAD_REQUEST:Lsk/mimac/slideshow/exception/ApiException$Type;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sendResponse(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->writeMessage([B)Z

    return-void
.end method


# virtual methods
.method public onNewData([B)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->SERIAL_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v2, "hex"

    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([B)Ljava/lang/String;

    move-result-object p1

    const-string v3, "text"

    invoke-static {v3, v0, v2, p1}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    const-string p1, "{\"operation\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/serial/SerialServiceHolder$ApiSerialReadListener;->processApi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lsk/mimac/slideshow/serial/SerialServiceHolder;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Can\'t process API request from serial"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
