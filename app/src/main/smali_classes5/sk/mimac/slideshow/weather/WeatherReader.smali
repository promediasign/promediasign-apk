.class public abstract Lsk/mimac/slideshow/weather/WeatherReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/weather/WeatherReader;


# instance fields
.field private lastFailedUrl:Ljava/lang/String;

.field private lastFailedUrlTimestamp:J

.field private final lock:Ljava/lang/Object;

.field private final weatherCurrentModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/weather/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private final weatherForecastModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/weather/WeatherModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/weather/WeatherReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherForecastModels:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherCurrentModels:Ljava/util/Map;

    return-void
.end method

.method public static clearCache()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->instance:Lsk/mimac/slideshow/weather/WeatherReader;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherReader;->clearCacheInternal()V

    :cond_0
    return-void
.end method

.method private clearCacheInternal()V
    .locals 9

    iget-object v0, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v2, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherForecastModels:Ljava/util/Map;

    const-wide/32 v5, 0x36ee80

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lsk/mimac/slideshow/weather/WeatherReader;->clearCacheMap(Ljava/util/Map;JJ)V

    iget-object v2, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherCurrentModels:Ljava/util/Map;

    const-wide/32 v5, 0x124f80

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v1 .. v6}, Lsk/mimac/slideshow/weather/WeatherReader;->clearCacheMap(Ljava/util/Map;JJ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearCacheMap(Ljava/util/Map;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/weather/WeatherModel;",
            ">;JJ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/weather/WeatherModel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/weather/WeatherModel;->getTimestamp()J

    move-result-wide v0

    sub-long v0, p2, v0

    cmp-long v2, v0, p4

    if-lez v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static createWeatherReader(Lsk/mimac/slideshow/weather/WeatherReaderClass;)Lsk/mimac/slideshow/weather/WeatherReader;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReader$1;->$SwitchMap$sk$mimac$slideshow$weather$WeatherReaderClass:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p0, Lsk/mimac/slideshow/weather/OpenMeteoReader;

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/OpenMeteoReader;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown weather reader class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/weather/HereWeatherReader;

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/HereWeatherReader;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;-><init>()V

    return-object p0

    :cond_3
    new-instance p0, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;-><init>()V

    return-object p0
.end method

.method public static getDefaultWeatherText(Z)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "EEEE\': %.0f "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "to"

    .line 9
    .line 10
    const-string v2, " %.0f "

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const-string p0, "\u00b0F"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "\u00b0C"

    .line 21
    .line 22
    :goto_0
    const-string v1, "\'"

    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static getWeather(Ljava/lang/String;Lsk/mimac/slideshow/weather/WeatherType;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_CLASS:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    sget-object v1, Lsk/mimac/slideshow/weather/WeatherReader;->instance:Lsk/mimac/slideshow/weather/WeatherReader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/weather/WeatherReader;->getClazz()Lsk/mimac/slideshow/weather/WeatherReaderClass;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lsk/mimac/slideshow/weather/WeatherReader;->createWeatherReader(Lsk/mimac/slideshow/weather/WeatherReaderClass;)Lsk/mimac/slideshow/weather/WeatherReader;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->instance:Lsk/mimac/slideshow/weather/WeatherReader;

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/weather/WeatherType;->CURRENT:Lsk/mimac/slideshow/weather/WeatherType;

    if-ne p1, v0, :cond_2

    sget-object p1, Lsk/mimac/slideshow/weather/WeatherReader;->instance:Lsk/mimac/slideshow/weather/WeatherReader;

    invoke-direct {p1, p0}, Lsk/mimac/slideshow/weather/WeatherReader;->getWeatherCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Lsk/mimac/slideshow/weather/WeatherReader;->instance:Lsk/mimac/slideshow/weather/WeatherReader;

    invoke-direct {p1, p0}, Lsk/mimac/slideshow/weather/WeatherReader;->getWeatherForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;

    move-result-object p0

    return-object p0
.end method

.method private getWeatherCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 8

    const-string v0, "Can\'t refresh current weather: "

    iget-object v1, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherCurrentModels:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/weather/WeatherModel;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lsk/mimac/slideshow/weather/WeatherModel;->getTimestamp()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x124f80

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/WeatherReader;->processCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherCurrentModels:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Current weather refreshed (location={})"

    invoke-virtual {v2}, Lsk/mimac/slideshow/weather/WeatherModel;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lsk/mimac/slideshow/weather/MissingApiKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lsk/mimac/slideshow/exception/UnsuccessfulRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    goto :goto_2

    :catch_6
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_2
    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t refresh current weather"

    invoke-interface {v0, v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_2
    sget-object v3, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t refresh current weather: {}"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_4
    monitor-exit v1

    return-object v2

    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private getWeatherForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 8

    const-string v0, "Can\'t refresh weather forecast: "

    iget-object v1, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherForecastModels:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/weather/WeatherModel;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lsk/mimac/slideshow/weather/WeatherModel;->getTimestamp()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/WeatherReader;->processForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/weather/WeatherReader;->weatherForecastModels:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Weather forecast refreshed (location={})"

    invoke-virtual {v2}, Lsk/mimac/slideshow/weather/WeatherModel;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lsk/mimac/slideshow/weather/MissingApiKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lsk/mimac/slideshow/exception/UnsuccessfulRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    goto :goto_2

    :catch_6
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_2
    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t refresh weather forecast"

    invoke-interface {v0, v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_2
    sget-object v3, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t refresh weather forecast: {}"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_4
    monitor-exit v1

    return-object v2

    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public abstract getClazz()Lsk/mimac/slideshow/weather/WeatherReaderClass;
.end method

.method public getPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lastFailedUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lastFailedUrlTimestamp:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/32 v2, 0x1d4c0

    .line 17
    .line 18
    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-lez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;

    .line 25
    .line 26
    const-string v1, "Not retrying weather forecast request to \'"

    .line 27
    .line 28
    const-string v2, "\', in cool down from previous error response (see error details above)"

    .line 29
    .line 30
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, p1, v1}, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p1}, Lsk/mimac/slideshow/utils/HttpUtils;->getHttpPage(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lastFailedUrl:Ljava/lang/String;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/UnsuccessfulRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;->getCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/16 v2, 0x191

    .line 57
    .line 58
    if-eq v1, v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;->getCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/16 v2, 0x193

    .line 65
    .line 66
    if-eq v1, v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;->getCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/16 v2, 0x1ad

    .line 73
    .line 74
    if-ne v1, v2, :cond_3

    .line 75
    .line 76
    :cond_2
    iput-object p1, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lastFailedUrl:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    iput-wide v1, p0, Lsk/mimac/slideshow/weather/WeatherReader;->lastFailedUrlTimestamp:J

    .line 83
    .line 84
    :cond_3
    throw v0
.end method

.method public abstract processCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
.end method

.method public abstract processForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
.end method
