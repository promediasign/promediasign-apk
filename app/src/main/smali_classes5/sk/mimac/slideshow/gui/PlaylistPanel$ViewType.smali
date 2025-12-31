.class public final enum Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/PlaylistPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum IMAGE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum TEXT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum VIDEO:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum VIDEO_INPUT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum WEB:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum WIDGET:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

.field public static final enum YOUTUBE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->IMAGE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WEB:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->TEXT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO_INPUT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->YOUTUBE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WIDGET:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->IMAGE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "WEB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WEB:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "TEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->TEXT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "VIDEO_INPUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO_INPUT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "YOUTUBE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->YOUTUBE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    new-instance v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const-string v1, "WIDGET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WIDGET:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-static {}, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->$values()[Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->$VALUES:[Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->$VALUES:[Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    return-object v0
.end method
