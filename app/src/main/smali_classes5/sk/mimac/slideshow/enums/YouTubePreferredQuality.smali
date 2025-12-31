.class public final enum Lsk/mimac/slideshow/enums/YouTubePreferredQuality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/YouTubePreferredQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum HD1080:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum HD1440:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum HD2160:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum HD720:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum HIGHRES:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum LARGE:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum MEDIUM:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum SMALL:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

.field public static final enum TINY:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/YouTubePreferredQuality;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HIGHRES:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD2160:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD1440:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD1080:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD720:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->LARGE:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->MEDIUM:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->SMALL:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->TINY:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x0

    const-string v2, "4320p"

    const-string v3, "HIGHRES"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HIGHRES:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x1

    const-string v2, "2160p (4K)"

    const-string v3, "HD2160"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD2160:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x2

    const-string v2, "1440p"

    const-string v3, "HD1440"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD1440:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x3

    const-string v2, "1080p (FullHD)"

    const-string v3, "HD1080"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD1080:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x4

    const-string v2, "720p (HD)"

    const-string v3, "HD720"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->HD720:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x5

    const-string v2, "480p"

    const-string v3, "LARGE"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->LARGE:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x6

    const-string v2, "360p"

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->MEDIUM:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/4 v1, 0x7

    const-string v2, "240p"

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->SMALL:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    new-instance v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    const/16 v1, 0x8

    const-string v2, "144p"

    const-string v3, "TINY"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->TINY:Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    invoke-static {}, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->$values()[Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->$VALUES:[Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

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

    iput-object p3, p0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/YouTubePreferredQuality;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/YouTubePreferredQuality;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->$VALUES:[Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/YouTubePreferredQuality;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/YouTubePreferredQuality;->desc:Ljava/lang/String;

    return-object v0
.end method
