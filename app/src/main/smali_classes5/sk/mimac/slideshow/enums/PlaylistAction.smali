.class public final enum Lsk/mimac/slideshow/enums/PlaylistAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/PlaylistAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/PlaylistAction;

.field public static final enum LOOP_INDEFINITELY:Lsk/mimac/slideshow/enums/PlaylistAction;

.field public static final enum LOOP_UNTIL_CHANGE:Lsk/mimac/slideshow/enums/PlaylistAction;

.field public static final enum LOOP_UNTIL_TIMEOUT:Lsk/mimac/slideshow/enums/PlaylistAction;

.field public static final enum PLAY_ONCE:Lsk/mimac/slideshow/enums/PlaylistAction;

.field public static final enum PLAY_ONCE_MOVE_NEXT:Lsk/mimac/slideshow/enums/PlaylistAction;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/PlaylistAction;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lsk/mimac/slideshow/enums/PlaylistAction;

    sget-object v1, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_INDEFINITELY:Lsk/mimac/slideshow/enums/PlaylistAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_UNTIL_CHANGE:Lsk/mimac/slideshow/enums/PlaylistAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/PlaylistAction;->PLAY_ONCE:Lsk/mimac/slideshow/enums/PlaylistAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/PlaylistAction;->PLAY_ONCE_MOVE_NEXT:Lsk/mimac/slideshow/enums/PlaylistAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_UNTIL_TIMEOUT:Lsk/mimac/slideshow/enums/PlaylistAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/enums/PlaylistAction;

    const-string v1, "LOOP_INDEFINITELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/PlaylistAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_INDEFINITELY:Lsk/mimac/slideshow/enums/PlaylistAction;

    new-instance v0, Lsk/mimac/slideshow/enums/PlaylistAction;

    const-string v1, "LOOP_UNTIL_CHANGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/PlaylistAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_UNTIL_CHANGE:Lsk/mimac/slideshow/enums/PlaylistAction;

    new-instance v0, Lsk/mimac/slideshow/enums/PlaylistAction;

    const-string v1, "PLAY_ONCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/PlaylistAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->PLAY_ONCE:Lsk/mimac/slideshow/enums/PlaylistAction;

    new-instance v0, Lsk/mimac/slideshow/enums/PlaylistAction;

    const-string v1, "PLAY_ONCE_MOVE_NEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/PlaylistAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->PLAY_ONCE_MOVE_NEXT:Lsk/mimac/slideshow/enums/PlaylistAction;

    new-instance v0, Lsk/mimac/slideshow/enums/PlaylistAction;

    const-string v1, "LOOP_UNTIL_TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/PlaylistAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->LOOP_UNTIL_TIMEOUT:Lsk/mimac/slideshow/enums/PlaylistAction;

    invoke-static {}, Lsk/mimac/slideshow/enums/PlaylistAction;->$values()[Lsk/mimac/slideshow/enums/PlaylistAction;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->$VALUES:[Lsk/mimac/slideshow/enums/PlaylistAction;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/PlaylistAction;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/PlaylistAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/PlaylistAction;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/PlaylistAction;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/PlaylistAction;->$VALUES:[Lsk/mimac/slideshow/enums/PlaylistAction;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/PlaylistAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/PlaylistAction;

    return-object v0
.end method
