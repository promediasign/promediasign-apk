.class public final enum Lsk/mimac/slideshow/enums/ScreenOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/SelectItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/ScreenOrientation;",
        ">;",
        "Lsk/mimac/slideshow/SelectItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum DEFAULT:Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum LANDSCAPE:Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum PORTRAIT:Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum ROTATE_0:Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum ROTATE_1:Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum ROTATE_2:Lsk/mimac/slideshow/enums/ScreenOrientation;

.field public static final enum ROTATE_3:Lsk/mimac/slideshow/enums/ScreenOrientation;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/ScreenOrientation;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lsk/mimac/slideshow/enums/ScreenOrientation;

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->DEFAULT:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->LANDSCAPE:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->PORTRAIT:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_0:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_1:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_2:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_3:Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x0

    const-string v2, "screen_orientation_DEFAULT"

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->DEFAULT:Lsk/mimac/slideshow/enums/ScreenOrientation;

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x1

    const-string v2, "screen_orientation_LANDSCAPE"

    const-string v3, "LANDSCAPE"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->LANDSCAPE:Lsk/mimac/slideshow/enums/ScreenOrientation;

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x2

    const-string v2, "screen_orientation_PORTRAIT"

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->PORTRAIT:Lsk/mimac/slideshow/enums/ScreenOrientation;

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x3

    const-string v2, "screen_orientation_ROTATE_0"

    const-string v3, "ROTATE_0"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_0:Lsk/mimac/slideshow/enums/ScreenOrientation;

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x4

    const-string v2, "screen_orientation_ROTATE_1"

    const-string v3, "ROTATE_1"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_1:Lsk/mimac/slideshow/enums/ScreenOrientation;

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x5

    const-string v2, "screen_orientation_ROTATE_2"

    const-string v3, "ROTATE_2"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_2:Lsk/mimac/slideshow/enums/ScreenOrientation;

    new-instance v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    const/4 v1, 0x6

    const-string v2, "screen_orientation_ROTATE_3"

    const-string v3, "ROTATE_3"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_3:Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-static {}, Lsk/mimac/slideshow/enums/ScreenOrientation;->$values()[Lsk/mimac/slideshow/enums/ScreenOrientation;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->$VALUES:[Lsk/mimac/slideshow/enums/ScreenOrientation;

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

    iput-object p3, p0, Lsk/mimac/slideshow/enums/ScreenOrientation;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ScreenOrientation;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/ScreenOrientation;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/ScreenOrientation;->$VALUES:[Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/ScreenOrientation;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/ScreenOrientation;->desc:Ljava/lang/String;

    return-object v0
.end method
