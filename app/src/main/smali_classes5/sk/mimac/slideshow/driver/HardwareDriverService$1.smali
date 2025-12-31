.class synthetic Lsk/mimac/slideshow/driver/HardwareDriverService$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/driver/HardwareDriverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$sk$mimac$slideshow$driver$HardwareDriverDefinition$Encoding:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->values()[Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService$1;->$SwitchMap$sk$mimac$slideshow$driver$HardwareDriverDefinition$Encoding:[I

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->TEXT:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lsk/mimac/slideshow/driver/HardwareDriverService$1;->$SwitchMap$sk$mimac$slideshow$driver$HardwareDriverDefinition$Encoding:[I

    sget-object v1, Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;->HEX:Lsk/mimac/slideshow/driver/HardwareDriverDefinition$Encoding;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
