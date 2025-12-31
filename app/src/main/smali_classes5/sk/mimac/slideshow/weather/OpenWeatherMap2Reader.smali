.class public Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;
.super Lsk/mimac/slideshow/weather/OpenWeatherMapReader;
.source "SourceFile"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method

.method private parseForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;Lorg/jdom/Element;Lorg/jdom/Element;)Lsk/mimac/slideshow/weather/WeatherModel$Forecast;
    .locals 6

    const-string v0, "min"

    invoke-virtual {p2, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "max"

    invoke-virtual {p2, v2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string p2, "symbol"

    invoke-virtual {p3, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p2

    const-string p3, "number"

    invoke-virtual {p2, p3}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-nez p1, :cond_0

    new-instance p1, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    invoke-direct {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    :goto_0
    invoke-virtual {p1, v2, v3}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMinTemperature()D

    move-result-wide v4

    cmpg-double p3, v0, v4

    if-gez p3, :cond_1

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    :cond_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMaxTemperature()D

    move-result-wide v0

    cmpl-double p3, v2, v0

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lsk/mimac/slideshow/weather/OpenWeatherMapReader;->resolveCondition(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getClazz()Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_WEATHER_MAP_HOURLY:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-object v0
.end method

.method public getForecastUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "http://api.openweathermap.org/data/2.5/forecast?q="

    .line 2
    .line 3
    const-string v1, "&mode=xml&units=metric&cnt=40&APPID="

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

.method public processForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 9

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel;

    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;->getForecastUrl(Ljava/lang/String;)Ljava/lang/String;

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

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    iget-object v5, p0, Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;->dateFormat:Ljava/text/DateFormat;

    const-string v6, "from"

    invoke-virtual {v4, v6}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom/Attribute;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    move-object v3, v1

    :cond_0
    const-string v2, "temperature"

    invoke-virtual {v4, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    invoke-direct {p0, v3, v2, v4}, Lsk/mimac/slideshow/weather/OpenWeatherMap2Reader;->parseForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;Lorg/jdom/Element;Lorg/jdom/Element;)Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    move-result-object v3

    invoke-virtual {v3, v5}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    move-object v2, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method
