.class public Lsk/mimac/slideshow/JavaScriptApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final apiService:Lsk/mimac/slideshow/ApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/JavaScriptApi;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/ApiServiceImpl;

    invoke-direct {v0}, Lsk/mimac/slideshow/ApiServiceImpl;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    return-void
.end method

.method private panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "panelName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Error while calling JavaScript API: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
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

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsk/mimac/slideshow/JavaScriptApi;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public clearPlaylist(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "playlist/clear"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deviceInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiServiceImpl;->getDeviceDataMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "next"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pause(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "pause"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public resume(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "resume"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/JavaScriptApi;->panelOperationInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setPlaylist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "panelName"

    .line 2
    .line 3
    const-string v1, "playlistName"

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    .line 10
    .line 11
    const-string v0, "playlist/set"

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p2, v0, p1, v1}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    sget-object p2, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    .line 20
    .line 21
    const-string v0, "Error while calling JavaScript API: {}"

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public showFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "panelName"

    const-string v1, "file"

    .line 1
    invoke-static {v0, p1, v1, p2}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 2
    const-string p2, "length"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p2, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const-string p3, "showFile"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Error while calling JavaScript API: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public volume(I)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vol"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lsk/mimac/slideshow/JavaScriptApi;->apiService:Lsk/mimac/slideshow/ApiService;

    const-string v1, "volume"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/JavaScriptApi;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error while calling JavaScript API: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
