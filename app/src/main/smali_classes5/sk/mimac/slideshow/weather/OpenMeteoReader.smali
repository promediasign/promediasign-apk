.class public Lsk/mimac/slideshow/weather/OpenMeteoReader;
.super Lsk/mimac/slideshow/weather/WeatherReader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/WeatherReader;-><init>()V

    return-void
.end method

.method private fillForecast(Lsk/mimac/slideshow/weather/WeatherModel;Lorg/json/JSONObject;)V
    .locals 8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "time"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "weathercode"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "temperature_2m_min"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "temperature_2m_max"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    invoke-direct {v5}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-direct {p0, v6}, Lsk/mimac/slideshow/weather/OpenMeteoReader;->resolveCondition(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    invoke-virtual {p1, v5}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getPlace(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "https://geocoding-api.open-meteo.com/v1/search?name="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "&count=1"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lsk/mimac/slideshow/utils/HttpUtils;->getHttpPage(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "results"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 44
    .line 45
    const-string v1, "City \'"

    .line 46
    .line 47
    const-string v2, "\' was not found"

    .line 48
    .line 49
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method private resolveCondition(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_1

    const/16 v0, 0x56

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x60

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "13_freezing_rain.webp"

    return-object p1

    :pswitch_1
    const-string p1, "12_freezing_showers.webp"

    return-object p1

    :sswitch_0
    const-string p1, "10_snow.webp"

    return-object p1

    :pswitch_2
    :sswitch_1
    const-string p1, "08_rain.webp"

    return-object p1

    :pswitch_3
    :sswitch_2
    const-string p1, "07_showers.webp"

    return-object p1

    :sswitch_3
    const-string p1, "06_fog.webp"

    return-object p1

    :cond_0
    :sswitch_4
    const-string p1, "14_thunderstorms.webp"

    return-object p1

    :cond_1
    :sswitch_5
    const-string p1, "09_snow_showers.webp"

    return-object p1

    :cond_2
    const-string p1, "04_cloudy.webp"

    return-object p1

    :cond_3
    const-string p1, "03_partly_cloudy.webp"

    return-object p1

    :cond_4
    const-string p1, "02_partly_sunny.webp"

    return-object p1

    :cond_5
    const-string p1, "01_sunny.webp"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_3
        0x30 -> :sswitch_3
        0x33 -> :sswitch_2
        0x35 -> :sswitch_2
        0x3d -> :sswitch_2
        0x3f -> :sswitch_1
        0x47 -> :sswitch_5
        0x49 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_5
        0x63 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getClazz()Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_METEO:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-object v0
.end method

.method public processCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 7

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/weather/OpenMeteoReader;->getPlace(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "longitude"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    const-string v1, "https://api.open-meteo.com/v1/forecast?latitude=%.4f&longitude=%.4f&current_weather=true"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/weather/WeatherReader;->getPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lsk/mimac/slideshow/weather/WeatherModel;

    invoke-direct {v1}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "country"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/weather/WeatherModel;->setLocation(Ljava/lang/String;)V

    const-string p1, "current_weather"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    const-string v2, "weathercode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsk/mimac/slideshow/weather/OpenMeteoReader;->resolveCondition(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    const-string v2, "temperature"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMinTemperature()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    return-object v1
.end method

.method public processForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 7

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/weather/OpenMeteoReader;->getPlace(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "longitude"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    const-string v1, "https://api.open-meteo.com/v1/forecast?latitude=%.4f&longitude=%.4f&daily=weathercode,temperature_2m_max,temperature_2m_min&timezone=auto"

    invoke-static {v4, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/weather/WeatherReader;->getPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lsk/mimac/slideshow/weather/WeatherModel;

    invoke-direct {v1}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "country"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/weather/WeatherModel;->setLocation(Ljava/lang/String;)V

    const-string p1, "daily"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/weather/OpenMeteoReader;->fillForecast(Lsk/mimac/slideshow/weather/WeatherModel;Lorg/json/JSONObject;)V

    return-object v1
.end method
