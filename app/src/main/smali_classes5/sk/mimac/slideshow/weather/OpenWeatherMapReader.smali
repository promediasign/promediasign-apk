.class public Lsk/mimac/slideshow/weather/OpenWeatherMapReader;
.super Lsk/mimac/slideshow/weather/WeatherReader;
.source "SourceFile"


# instance fields
.field private final dateformat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/WeatherReader;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->dateformat:Ljava/text/DateFormat;

    return-void
.end method

.method private getCurrentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "http://api.openweathermap.org/data/2.5/weather?q="

    .line 2
    .line 3
    const-string v1, "&mode=xml&units=metric&APPID="

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->getApiKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private parseForecast(Lorg/jdom/Element;Lorg/jdom/Element;)Lsk/mimac/slideshow/weather/WeatherModel$Forecast;
    .locals 5

    const-string v0, "min"

    invoke-virtual {p1, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "max"

    invoke-virtual {p1, v2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string p1, "symbol"

    invoke-virtual {p2, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    const-string v4, "number"

    invoke-virtual {p1, v4}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v4, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    invoke-direct {v4}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->resolveCondition(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    invoke-virtual {v4, v2, v3}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    iget-object p1, p0, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->dateformat:Ljava/text/DateFormat;

    const-string v0, "day"

    invoke-virtual {p2, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v4, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    return-object v4
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_API_KEY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/weather/MissingApiKeyException;->forOpenWeatherMap()Lsk/mimac/slideshow/weather/MissingApiKeyException;

    move-result-object v0

    throw v0
.end method

.method public getClazz()Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_WEATHER_MAP:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-object v0
.end method

.method public getDocument(Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/WeatherReader;->getPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Lorg/jdom/input/SAXBuilder;

    invoke-direct {p1}, Lorg/jdom/input/SAXBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object p1

    return-object p1
.end method

.method public getForecastUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "http://api.openweathermap.org/data/2.5/forecast/daily?q="

    .line 2
    .line 3
    const-string v1, "&mode=xml&units=metric&cnt=4&APPID="

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->getApiKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public processCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel;

    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->getCurrentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->getDocument(Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p1

    const-string v1, "city"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel;->setLocation(Ljava/lang/String;)V

    const-string v1, "temperature"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    invoke-direct {v2}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    const-string v3, "max"

    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    const-string v1, "weather"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    const-string v1, "number"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->resolveCondition(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    return-object v0
.end method

.method public processForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel;

    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->getForecastUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->getDocument(Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p1

    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel;->setLocation(Ljava/lang/String;)V

    const-string v1, "forecast"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {p1, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    const-string v2, "temperature"

    invoke-virtual {v1, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->parseForecast(Lorg/jdom/Element;Lorg/jdom/Element;)Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public resolveCondition(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_0
    const-string p1, "04_cloudy.webp"

    return-object p1

    :sswitch_1
    const-string p1, "03_partly_cloudy.webp"

    return-object p1

    :sswitch_2
    const-string p1, "02_partly_sunny.webp"

    return-object p1

    :sswitch_3
    const-string p1, "01_sunny.webp"

    return-object p1

    :sswitch_4
    const-string p1, "05_hazy_sun.webp"

    return-object p1

    :sswitch_5
    const-string p1, "06_fog.webp"

    return-object p1

    :sswitch_6
    const-string p1, "11_rain_with_snow.webp"

    return-object p1

    :sswitch_7
    const-string p1, "10_snow.webp"

    return-object p1

    :sswitch_8
    const-string p1, "09_snow_showers.webp"

    return-object p1

    :sswitch_9
    const-string p1, "13_freezing_rain.webp"

    return-object p1

    :sswitch_a
    const-string p1, "08_rain.webp"

    return-object p1

    :sswitch_b
    const-string p1, "07_showers.webp"

    return-object p1

    :sswitch_c
    const-string p1, "14_thunderstorms.webp"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_c
        0xc9 -> :sswitch_c
        0xca -> :sswitch_c
        0xd2 -> :sswitch_b
        0xd3 -> :sswitch_c
        0xd4 -> :sswitch_c
        0xdd -> :sswitch_c
        0xe6 -> :sswitch_c
        0xe7 -> :sswitch_c
        0xe8 -> :sswitch_c
        0x12c -> :sswitch_b
        0x12d -> :sswitch_a
        0x12e -> :sswitch_a
        0x136 -> :sswitch_a
        0x137 -> :sswitch_a
        0x138 -> :sswitch_a
        0x139 -> :sswitch_a
        0x13a -> :sswitch_a
        0x141 -> :sswitch_a
        0x1f4 -> :sswitch_b
        0x1f5 -> :sswitch_a
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_a
        0x1f8 -> :sswitch_a
        0x1ff -> :sswitch_9
        0x208 -> :sswitch_b
        0x209 -> :sswitch_b
        0x20a -> :sswitch_a
        0x213 -> :sswitch_a
        0x258 -> :sswitch_8
        0x259 -> :sswitch_7
        0x25a -> :sswitch_7
        0x263 -> :sswitch_9
        0x264 -> :sswitch_9
        0x267 -> :sswitch_9
        0x268 -> :sswitch_6
        0x26c -> :sswitch_8
        0x26d -> :sswitch_8
        0x26e -> :sswitch_7
        0x2bd -> :sswitch_5
        0x2c7 -> :sswitch_5
        0x2d1 -> :sswitch_4
        0x2db -> :sswitch_5
        0x2e5 -> :sswitch_5
        0x2ef -> :sswitch_5
        0x2f9 -> :sswitch_5
        0x320 -> :sswitch_3
        0x321 -> :sswitch_2
        0x322 -> :sswitch_2
        0x323 -> :sswitch_1
        0x324 -> :sswitch_0
    .end sparse-switch
.end method
