.class public final enum Lsk/mimac/slideshow/weather/WeatherReaderClass;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/SelectItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/weather/WeatherReaderClass;",
        ">;",
        "Lsk/mimac/slideshow/SelectItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/weather/WeatherReaderClass;

.field public static final enum HERE_DESTINATION_WEATHER:Lsk/mimac/slideshow/weather/WeatherReaderClass;

.field public static final enum OPEN_METEO:Lsk/mimac/slideshow/weather/WeatherReaderClass;

.field public static final enum OPEN_WEATHER_MAP:Lsk/mimac/slideshow/weather/WeatherReaderClass;

.field public static final enum OPEN_WEATHER_MAP_HOURLY:Lsk/mimac/slideshow/weather/WeatherReaderClass;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/weather/WeatherReaderClass;

    sget-object v1, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_METEO:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_WEATHER_MAP_HOURLY:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_WEATHER_MAP:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/weather/WeatherReaderClass;->HERE_DESTINATION_WEATHER:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v1, 0x0

    const-string v2, "Open-Meteo"

    const-string v3, "OPEN_METEO"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/weather/WeatherReaderClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_METEO:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v1, 0x1

    const-string v2, "OpenWeatherMap"

    const-string v3, "OPEN_WEATHER_MAP_HOURLY"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/weather/WeatherReaderClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_WEATHER_MAP_HOURLY:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v1, 0x2

    const-string v2, "OpenWeatherMap (paid account only)"

    const-string v3, "OPEN_WEATHER_MAP"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/weather/WeatherReaderClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->OPEN_WEATHER_MAP:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    new-instance v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    const/4 v1, 0x3

    const-string v2, "HERE Destination weather"

    const-string v3, "HERE_DESTINATION_WEATHER"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/weather/WeatherReaderClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->HERE_DESTINATION_WEATHER:Lsk/mimac/slideshow/weather/WeatherReaderClass;

    invoke-static {}, Lsk/mimac/slideshow/weather/WeatherReaderClass;->$values()[Lsk/mimac/slideshow/weather/WeatherReaderClass;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->$VALUES:[Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/weather/WeatherReaderClass;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->$VALUES:[Lsk/mimac/slideshow/weather/WeatherReaderClass;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/weather/WeatherReaderClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/weather/WeatherReaderClass;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/weather/WeatherReaderClass;->desc:Ljava/lang/String;

    return-object v0
.end method
