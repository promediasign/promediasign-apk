.class public Lsk/mimac/slideshow/weather/HereWeatherReader;
.super Lsk/mimac/slideshow/weather/WeatherReader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/weather/WeatherReader;-><init>()V

    return-void
.end method

.method private parseForecast(Lorg/json/JSONObject;Ljava/text/DateFormat;)Lsk/mimac/slideshow/weather/WeatherModel$Forecast;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    const-string v1, "iconName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/weather/HereWeatherReader;->resolveCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    const-string v1, "lowTemperature"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    const-string v1, "highTemperature"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    const-string v1, "utcTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    return-object v0
.end method

.method private resolveCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "night_passing_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "light_rain_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "showery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "moderate_snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "rain_changing_to_an_icy_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7c

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "thunderstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x82

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "night_broken_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "heavy_rain_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "drizzle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "night_rain_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "decreasing_cloudiness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "light_snow_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "flurries_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "mostly_cloudy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "isolated_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8a

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "early_fog_followed_by_sunny_skies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "dense_fog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "heavy_rain_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "flurries_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "thundershowers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x86

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "sandstorm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "icy_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "ice_fog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "sprinkles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "heavy_snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "heavy_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "snow_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "night_morning_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "light_freezing_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "night_high_level_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "lots_of_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "night_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x91

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "freezing_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "afternoon_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "light_snow_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "scattered_flurries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "night_scattered_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "mostly_sunny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "mixture_of_precip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "mostly_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "partly_sunny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "heavy_snow_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "partly_cloudy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "passing_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "isolated_tstorms_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x87

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "a_mixture_of_sun_and_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "a_few_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8b

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "early_fog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "light_fog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "night_widely_scattered_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8d

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "night_isolated_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8e

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "heavy_mixture_of_precip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x76

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "light_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "scattered_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "breaks_of_sun_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "overcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "strong_thunderstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "showers_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "light_icy_mix_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_3c
    const-string v0, "snow_flurries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_3d
    const-string v0, "night_mostly_cloudy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_3e
    const-string v0, "hurricane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_3f
    const-string v0, "light_icy_mix_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_40
    const-string v0, "sunny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_41
    const-string v0, "smoke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_42
    const-string v0, "sleet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_43
    const-string v0, "flood"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_44
    const-string v0, "light_mixture_of_precip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_45
    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_46
    const-string v0, "icy_mix_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    goto/16 :goto_1

    :sswitch_47
    const-string v0, "morning_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_48
    const-string v0, "night_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_49
    const-string v0, "night_afternoon_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_4a
    const-string v0, "snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_4b
    const-string v0, "rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_4c
    const-string v0, "haze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_4d
    const-string v0, "hail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    goto/16 :goto_1

    :sswitch_4e
    const-string v0, "rain_changing_to_snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    goto/16 :goto_1

    :sswitch_4f
    const-string v0, "fog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_50
    const-string v0, "snowstorm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_51
    const-string v0, "snow_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_52
    const-string v0, "more_clouds_than_sun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_53
    const-string v0, "icy_mix_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7e

    goto/16 :goto_1

    :sswitch_54
    const-string v0, "night_scattered_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_55
    const-string v0, "rain_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_56
    const-string v0, "duststorm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_57
    const-string v0, "light_snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto/16 :goto_1

    :sswitch_58
    const-string v0, "light_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_59
    const-string v0, "low_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_5a
    const-string v0, "passing_clounds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_5b
    const-string v0, "high_level_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5c
    const-string v0, "night_decreasing_cloudiness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_5d
    const-string v0, "tstorms_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x84

    goto/16 :goto_1

    :sswitch_5e
    const-string v0, "snow_showers_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_5f
    const-string v0, "night_mostly_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_60
    const-string v0, "tropical_storm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_61
    const-string v0, "night_clearing_skies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_62
    const-string v0, "a_few_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_63
    const-string v0, "scattered_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8c

    goto/16 :goto_1

    :sswitch_64
    const-string v0, "night_low_level_haze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_65
    const-string v0, "night_high_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_66
    const-string v0, "night_scattered_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_67
    const-string v0, "night_haze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_68
    const-string v0, "high_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_69
    const-string v0, "hazy_sunshine"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_6a
    const-string v0, "widely_scattered_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x89

    goto/16 :goto_1

    :sswitch_6b
    const-string v0, "night_partly_cloudy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_6c
    const-string v0, "night_passing_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6d
    const-string v0, "broken_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_6e
    const-string v0, "rain_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_6f
    const-string v0, "increasing_cloudiness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_70
    const-string v0, "severe_thunderstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto/16 :goto_1

    :sswitch_71
    const-string v0, "blizzard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_72
    const-string v0, "an_icy_mix_changing_to_snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_73
    const-string v0, "an_icy_mix_changing_to_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_74
    const-string v0, "tons_of_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_75
    const-string v0, "night_sprinkles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_76
    const-string v0, "night_a_few_tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8f

    goto/16 :goto_1

    :sswitch_77
    const-string v0, "rain_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_78
    const-string v0, "night_light_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_79
    const-string v0, "tstorms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x85

    goto/16 :goto_1

    :sswitch_7a
    const-string v0, "snow_changing_to_an_icy_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_7b
    const-string v0, "light_snow_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_7c
    const-string v0, "snow_showers_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_7d
    const-string v0, "tornado"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto/16 :goto_1

    :sswitch_7e
    const-string v0, "snow_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_7f
    const-string v0, "sprinkles_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_80
    const-string v0, "scattered_tstorms_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x88

    goto/16 :goto_1

    :sswitch_81
    const-string v0, "cloudy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_82
    const-string v0, "cw_no_report_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x92

    goto/16 :goto_1

    :sswitch_83
    const-string v0, "night_smoke"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_84
    const-string v0, "night_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_85
    const-string v0, "more_sun_than_clouds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_86
    const-string v0, "snow_rain_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_87
    const-string v0, "scattered_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_88
    const-string v0, "light_rain_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_89
    const-string v0, "clearing_skies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_8a
    const-string v0, "tstorms_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x83

    goto :goto_1

    :sswitch_8b
    const-string v0, "sprinkles_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto :goto_1

    :sswitch_8c
    const-string v0, "low_level_haze"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto :goto_1

    :sswitch_8d
    const-string v0, "flash_floods"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_1

    :sswitch_8e
    const-string v0, "showers_early"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto :goto_1

    :sswitch_8f
    const-string v0, "heavy_snow_late"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    goto :goto_1

    :sswitch_90
    const-string v0, "snow_changing_to_rain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    goto :goto_1

    :sswitch_91
    const-string v0, "numerous_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto :goto_1

    :sswitch_92
    const-string v0, "night_a_few_showers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p1, "14_thunderstorms.webp"

    return-object p1

    :pswitch_1
    const-string p1, "13_freezing_rain.webp"

    return-object p1

    :pswitch_2
    const-string p1, "12_freezing_showers.webp"

    return-object p1

    :pswitch_3
    const-string p1, "11_rain_with_snow.webp"

    return-object p1

    :pswitch_4
    const-string p1, "10_snow.webp"

    return-object p1

    :pswitch_5
    const-string p1, "09_snow_showers.webp"

    return-object p1

    :pswitch_6
    const-string p1, "08_rain.webp"

    return-object p1

    :pswitch_7
    const-string p1, "07_showers.webp"

    return-object p1

    :pswitch_8
    const-string p1, "06_fog.webp"

    return-object p1

    :pswitch_9
    const-string p1, "05_hazy_sun.webp"

    return-object p1

    :pswitch_a
    const-string p1, "04_cloudy.webp"

    return-object p1

    :pswitch_b
    const-string p1, "03_partly_cloudy.webp"

    return-object p1

    :pswitch_c
    const-string p1, "02_partly_sunny.webp"

    return-object p1

    :pswitch_d
    const-string p1, "01_sunny.webp"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e5d7323 -> :sswitch_92
        -0x788ee23c -> :sswitch_91
        -0x7508ffbe -> :sswitch_90
        -0x71aa4d96 -> :sswitch_8f
        -0x711fef13 -> :sswitch_8e
        -0x6b0c649c -> :sswitch_8d
        -0x6ada7876 -> :sswitch_8c
        -0x6a3e9df3 -> :sswitch_8b
        -0x67bb15fe -> :sswitch_8a
        -0x676a1ccb -> :sswitch_89
        -0x67569778 -> :sswitch_88
        -0x65dbf919 -> :sswitch_87
        -0x63328593 -> :sswitch_86
        -0x5c477d21 -> :sswitch_85
        -0x5883f49a -> :sswitch_84
        -0x57a1e178 -> :sswitch_83
        -0x56c301af -> :sswitch_82
        -0x50ea171c -> :sswitch_81
        -0x483252b7 -> :sswitch_80
        -0x457ab544 -> :sswitch_7f
        -0x44190259 -> :sswitch_7e
        -0x43c948ab -> :sswitch_7d
        -0x42c37ae8 -> :sswitch_7c
        -0x3fe1e007 -> :sswitch_7b
        -0x3fd9cb28 -> :sswitch_7a
        -0x3cd901e2 -> :sswitch_79
        -0x3cd7fcc7 -> :sswitch_78
        -0x38ed7062 -> :sswitch_77
        -0x366ee64e -> :sswitch_76
        -0x34c6c4fe -> :sswitch_75
        -0x32296ac3 -> :sswitch_74
        -0x31fdb605 -> :sswitch_73
        -0x31fd1016 -> :sswitch_72
        -0x308ed6ec -> :sswitch_71
        -0x3072bffd -> :sswitch_70
        -0x2ba70915 -> :sswitch_6f
        -0x29a3e38f -> :sswitch_6e
        -0x28991b78 -> :sswitch_6d
        -0x277d5a4d -> :sswitch_6c
        -0x270b86a4 -> :sswitch_6b
        -0x2654d723 -> :sswitch_6a
        -0x25c21afa -> :sswitch_69
        -0x256f31e5 -> :sswitch_68
        -0x23e11a55 -> :sswitch_67
        -0x23a22739 -> :sswitch_66
        -0x1ff0d38c -> :sswitch_65
        -0x1e35216f -> :sswitch_64
        -0x1ded6c44 -> :sswitch_63
        -0x1dbd9f3c -> :sswitch_62
        -0x1ac4c5c4 -> :sswitch_61
        -0x186226f2 -> :sswitch_60
        -0x1852819b -> :sswitch_5f
        -0x160e8ccf -> :sswitch_5e
        -0x13d98fd9 -> :sswitch_5d
        -0x12315ad8 -> :sswitch_5c
        -0x109dae8a -> :sswitch_5b
        -0x10335500 -> :sswitch_5a
        -0xd2663d7 -> :sswitch_59
        -0xc6f72e3 -> :sswitch_58
        -0xc6eccf4 -> :sswitch_57
        -0xb716289 -> :sswitch_56
        -0xb3b3908 -> :sswitch_55
        -0x9118180 -> :sswitch_54
        -0x81523b7 -> :sswitch_53
        -0x2a4d3fb -> :sswitch_52
        -0x22f2c1e -> :sswitch_51
        -0x1117eba -> :sswitch_50
        0x18cbe -> :sswitch_4f
        0x79040 -> :sswitch_4e
        0x30bfdc -> :sswitch_4d
        0x30c1e4 -> :sswitch_4c
        0x354b94 -> :sswitch_4b
        0x35f183 -> :sswitch_4a
        0xb9d488 -> :sswitch_49
        0xcde422 -> :sswitch_48
        0x14529b9 -> :sswitch_47
        0x50e0220 -> :sswitch_46
        0x5a5b64d -> :sswitch_45
        0x5c9bb17 -> :sswitch_44
        0x5d023fe -> :sswitch_43
        0x6872edb -> :sswitch_42
        0x687c96f -> :sswitch_41
        0x68b6917 -> :sswitch_40
        0x9196ab7 -> :sswitch_3f
        0xcbb9291 -> :sswitch_3e
        0xe0723cc -> :sswitch_3d
        0x18df04c4 -> :sswitch_3c
        0x191484d2 -> :sswitch_3b
        0x1d653fdc -> :sswitch_3a
        0x1e537ae6 -> :sswitch_39
        0x1f902e13 -> :sswitch_38
        0x1ffd29b6 -> :sswitch_37
        0x23b22780 -> :sswitch_36
        0x23c7d720 -> :sswitch_35
        0x26844c88 -> :sswitch_34
        0x26dde23f -> :sswitch_33
        0x2710a324 -> :sswitch_32
        0x28e37615 -> :sswitch_31
        0x28f969e2 -> :sswitch_30
        0x2a30ed99 -> :sswitch_2f
        0x2a5f2374 -> :sswitch_2e
        0x364af58d -> :sswitch_2d
        0x375dc53b -> :sswitch_2c
        0x39944d43 -> :sswitch_2b
        0x3bfdf01f -> :sswitch_2a
        0x3c8f7cd8 -> :sswitch_29
        0x3d60119e -> :sswitch_28
        0x3d627600 -> :sswitch_27
        0x3e45c468 -> :sswitch_26
        0x3edd0b55 -> :sswitch_25
        0x4182dfaa -> :sswitch_24
        0x43433470 -> :sswitch_23
        0x480e2341 -> :sswitch_22
        0x489d535f -> :sswitch_21
        0x48bc70f7 -> :sswitch_20
        0x4a0210ff -> :sswitch_1f
        0x4c2cc90f -> :sswitch_1e
        0x4ca8bbf6 -> :sswitch_1d
        0x4dea80c0 -> :sswitch_1c
        0x4e81d68d -> :sswitch_1b
        0x4f31780c -> :sswitch_1a
        0x4f321dfb -> :sswitch_19
        0x55351a69 -> :sswitch_18
        0x611a150a -> :sswitch_17
        0x623404bc -> :sswitch_16
        0x632ceae5 -> :sswitch_15
        0x655dcbe5 -> :sswitch_14
        0x66b53efd -> :sswitch_13
        0x66e0faf9 -> :sswitch_12
        0x6b78d79e -> :sswitch_11
        0x6e1c5d21 -> :sswitch_10
        0x6e3230f8 -> :sswitch_f
        0x6ea6f7b3 -> :sswitch_e
        0x6f8ff5ec -> :sswitch_d
        0x6fab7f16 -> :sswitch_c
        0x70aba20f -> :sswitch_b
        0x715ffc65 -> :sswitch_a
        0x72788cd4 -> :sswitch_9
        0x74dbb970 -> :sswitch_8
        0x76c710a1 -> :sswitch_7
        0x778b068e -> :sswitch_6
        0x799c17a7 -> :sswitch_5
        0x7b08573f -> :sswitch_4
        0x7b387149 -> :sswitch_3
        0x7b38714f -> :sswitch_2
        0x7c20fdc1 -> :sswitch_1
        0x7f634f14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getClazz()Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->HERE_DESTINATION_WEATHER:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-object v0
.end method

.method public processCurrentInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 6

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_API_KEY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "UTF-8"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aget-object v1, v0, v4

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    aget-object v0, v0, v2

    .line 36
    .line 37
    const-string v2, "https://weather.api.here.com/weather/1.0/report.json?product=observation&name="

    .line 38
    .line 39
    const-string v3, "&app_id="

    .line 40
    .line 41
    const-string v5, "&app_code="

    .line 42
    .line 43
    invoke-static {v2, p1, v3, v1, v5}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "https://weather.ls.hereapi.com/weather/1.0/report.json?product=observation&name="

    .line 60
    .line 61
    const-string v2, "&apiKey="

    .line 62
    .line 63
    invoke-static {v1, p1, v2, v0}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/WeatherReader;->getPage(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "observations"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "location"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel;

    .line 93
    .line 94
    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "city"

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ", "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, "country"

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel;->setLocation(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "observation"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    new-instance v1, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    .line 150
    .line 151
    invoke-direct {v1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "iconName"

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-direct {p0, v2}, Lsk/mimac/slideshow/weather/HereWeatherReader;->resolveCondition(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setCondition(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v2, "temperature"

    .line 168
    .line 169
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 170
    .line 171
    .line 172
    move-result-wide v2

    .line 173
    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMinTemperature(D)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->getMinTemperature()D

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setMaxTemperature(D)V

    .line 181
    .line 182
    .line 183
    new-instance p1, Ljava/util/Date;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/weather/WeatherModel$Forecast;->setDay(Ljava/util/Date;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    .line 192
    .line 193
    .line 194
    return-object v0

    .line 195
    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/weather/MissingApiKeyException;->forHere()Lsk/mimac/slideshow/weather/MissingApiKeyException;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    throw p1
.end method

.method public processForecastInternal(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherModel;
    .locals 6

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_API_KEY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    const-string v1, ":"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const-string v4, "UTF-8"

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aget-object v1, v0, v3

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    aget-object v0, v0, v2

    .line 36
    .line 37
    const-string v2, "https://weather.api.here.com/weather/1.0/report.json?product=forecast_7days_simple&name="

    .line 38
    .line 39
    const-string v4, "&app_id="

    .line 40
    .line 41
    const-string v5, "&app_code="

    .line 42
    .line 43
    invoke-static {v2, p1, v4, v1, v5}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "https://weather.ls.hereapi.com/weather/1.0/report.json?product=forecast_7days_simple&name="

    .line 60
    .line 61
    const-string v2, "&apiKey="

    .line 62
    .line 63
    invoke-static {v1, p1, v2, v0}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/weather/WeatherReader;->getPage(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "dailyForecasts"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "forecastLocation"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lsk/mimac/slideshow/weather/WeatherModel;

    .line 89
    .line 90
    invoke-direct {v0}, Lsk/mimac/slideshow/weather/WeatherModel;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->setTimestamp(J)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v2, "city"

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ", "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, "country"

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/weather/WeatherModel;->setLocation(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v1, "forecast"

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 142
    .line 143
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-ge v3, v2, :cond_1

    .line 153
    .line 154
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-direct {p0, v2, v1}, Lsk/mimac/slideshow/weather/HereWeatherReader;->parseForecast(Lorg/json/JSONObject;Ljava/text/DateFormat;)Lsk/mimac/slideshow/weather/WeatherModel$Forecast;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/weather/WeatherModel;->addForecast(Lsk/mimac/slideshow/weather/WeatherModel$Forecast;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_1
    return-object v0

    .line 169
    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/weather/MissingApiKeyException;->forHere()Lsk/mimac/slideshow/weather/MissingApiKeyException;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    throw p1
.end method
