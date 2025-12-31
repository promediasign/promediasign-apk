.class public Lsk/mimac/slideshow/weather/WeatherModel$Forecast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/weather/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Forecast"
.end annotation


# instance fields
.field private condition:Ljava/lang/String;

.field private day:Ljava/util/Date;

.field private maxTemperature:D

.field private minTemperature:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->day:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxTemperature()D
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->maxTemperature:D

    return-wide v0
.end method

.method public getMinTemperature()D
    .locals 2

    iget-wide v0, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->minTemperature:D

    return-wide v0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->condition:Ljava/lang/String;

    return-void
.end method

.method public setDay(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->day:Ljava/util/Date;

    return-void
.end method

.method public setMaxTemperature(D)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->maxTemperature:D

    return-void
.end method

.method public setMinTemperature(D)V
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->minTemperature:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Forecast{minTemperature="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->minTemperature:D

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", maxTemperature="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->maxTemperature:D

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", condition="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->condition:Ljava/lang/String;

    .line 29
    .line 30
    const/16 v2, 0x7d

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
