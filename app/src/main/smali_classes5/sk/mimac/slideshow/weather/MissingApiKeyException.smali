.class public Lsk/mimac/slideshow/weather/MissingApiKeyException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static forHere()Lsk/mimac/slideshow/weather/MissingApiKeyException;
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/weather/MissingApiKeyException;

    const-string v1, "HERE API key not found, please obtain it on https://developer.here.com/sign-up?create=Freemium-Basic&keepState=true&step=account and enter it in the Device settings"

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/weather/MissingApiKeyException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static forOpenWeatherMap()Lsk/mimac/slideshow/weather/MissingApiKeyException;
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/weather/MissingApiKeyException;

    const-string v1, "OpenWeatherMap API key not found, please obtain it on https://home.openweathermap.org/users/sign_up and enter it in the Device settings"

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/weather/MissingApiKeyException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
