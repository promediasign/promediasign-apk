.class public final enum Lsk/mimac/slideshow/config/model/PlaylistActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/config/model/PlaylistActionType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "PlaylistActionType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/config/model/PlaylistActionType;

.field public static final enum LOOP_INDEFINITELY:Lsk/mimac/slideshow/config/model/PlaylistActionType;

.field public static final enum LOOP_UNTIL_CHANGE:Lsk/mimac/slideshow/config/model/PlaylistActionType;

.field public static final enum LOOP_UNTIL_TIMEOUT:Lsk/mimac/slideshow/config/model/PlaylistActionType;

.field public static final enum PLAY_ONCE:Lsk/mimac/slideshow/config/model/PlaylistActionType;

.field public static final enum PLAY_ONCE_MOVE_NEXT:Lsk/mimac/slideshow/config/model/PlaylistActionType;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/config/model/PlaylistActionType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lsk/mimac/slideshow/config/model/PlaylistActionType;

    sget-object v1, Lsk/mimac/slideshow/config/model/PlaylistActionType;->PLAY_ONCE:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/PlaylistActionType;->PLAY_ONCE_MOVE_NEXT:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/PlaylistActionType;->LOOP_UNTIL_CHANGE:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/PlaylistActionType;->LOOP_INDEFINITELY:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/PlaylistActionType;->LOOP_UNTIL_TIMEOUT:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const-string v1, "PLAY_ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/PlaylistActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->PLAY_ONCE:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const-string v1, "PLAY_ONCE_MOVE_NEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/PlaylistActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->PLAY_ONCE_MOVE_NEXT:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const-string v1, "LOOP_UNTIL_CHANGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/PlaylistActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->LOOP_UNTIL_CHANGE:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const-string v1, "LOOP_INDEFINITELY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/PlaylistActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->LOOP_INDEFINITELY:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    new-instance v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    const-string v1, "LOOP_UNTIL_TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/PlaylistActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->LOOP_UNTIL_TIMEOUT:Lsk/mimac/slideshow/config/model/PlaylistActionType;

    invoke-static {}, Lsk/mimac/slideshow/config/model/PlaylistActionType;->$values()[Lsk/mimac/slideshow/config/model/PlaylistActionType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->$VALUES:[Lsk/mimac/slideshow/config/model/PlaylistActionType;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/PlaylistActionType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/PlaylistActionType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/config/model/PlaylistActionType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/config/model/PlaylistActionType;->$VALUES:[Lsk/mimac/slideshow/config/model/PlaylistActionType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/config/model/PlaylistActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/config/model/PlaylistActionType;

    return-object v0
.end method
