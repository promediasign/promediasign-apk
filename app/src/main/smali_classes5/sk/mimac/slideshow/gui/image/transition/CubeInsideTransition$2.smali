.class abstract synthetic Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->values()[Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$2;->$SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$2;->$SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_LEFT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$2;->$SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_TOP:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$2;->$SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I

    sget-object v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_BOTTOM:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
