.class public abstract Lsk/mimac/slideshow/VolumeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static audioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/VolumeManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/VolumeManager;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static changeVolume(I)V
    .locals 3

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t change volume"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change volume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static changeVolumePercentage(I)V
    .locals 2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    const/16 p0, 0x64

    :cond_1
    :goto_0
    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int v0, v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lsk/mimac/slideshow/VolumeManager;->changeVolume(I)V

    return-void
.end method

.method public static getCurrentVolume()I
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCurrentVolumePercentage()I
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v2, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMaxVolume()I
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public static init()V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DEFAULT_VOLUME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    mul-int v1, v1, v0

    int-to-double v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t change volume"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/VolumeManager;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change volume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method
