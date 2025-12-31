.class public final enum Lsk/mimac/slideshow/enums/VideoPlayerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/VideoPlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/VideoPlayerType;

.field public static final enum DEFAULT_ANDROID:Lsk/mimac/slideshow/enums/VideoPlayerType;

.field public static final enum EXOPLAYER_SURFACE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

.field public static final enum EXOPLAYER_SURFACE_VIEW_TUNNEL:Lsk/mimac/slideshow/enums/VideoPlayerType;

.field public static final enum EXOPLAYER_TEXTURE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/VideoPlayerType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/enums/VideoPlayerType;

    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->DEFAULT_ANDROID:Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_TEXTURE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_SURFACE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_SURFACE_VIEW_TUNNEL:Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v1, 0x0

    const-string v2, "Native Android player"

    const-string v3, "DEFAULT_ANDROID"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/VideoPlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/VideoPlayerType;->DEFAULT_ANDROID:Lsk/mimac/slideshow/enums/VideoPlayerType;

    new-instance v0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v1, 0x1

    const-string v2, "ExoPlayer + TextureView"

    const-string v3, "EXOPLAYER_TEXTURE_VIEW"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/VideoPlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_TEXTURE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

    new-instance v0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v1, 0x2

    const-string v2, "ExoPlayer + SurfaceView"

    const-string v3, "EXOPLAYER_SURFACE_VIEW"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/VideoPlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_SURFACE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

    new-instance v0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    const/4 v1, 0x3

    const-string v2, "ExoPlayer + SurfaceView + Tunneling"

    const-string v3, "EXOPLAYER_SURFACE_VIEW_TUNNEL"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/VideoPlayerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_SURFACE_VIEW_TUNNEL:Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-static {}, Lsk/mimac/slideshow/enums/VideoPlayerType;->$values()[Lsk/mimac/slideshow/enums/VideoPlayerType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/VideoPlayerType;->$VALUES:[Lsk/mimac/slideshow/enums/VideoPlayerType;

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

    iput-object p3, p0, Lsk/mimac/slideshow/enums/VideoPlayerType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/VideoPlayerType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/VideoPlayerType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/VideoPlayerType;->$VALUES:[Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/VideoPlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/VideoPlayerType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/VideoPlayerType;->desc:Ljava/lang/String;

    return-object v0
.end method
