.class public final enum Lsk/mimac/slideshow/enums/AnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/AnimationType;

.field public static final enum MOVE_BOTTOM:Lsk/mimac/slideshow/enums/AnimationType;

.field public static final enum MOVE_LEFT:Lsk/mimac/slideshow/enums/AnimationType;

.field public static final enum MOVE_RIGHT:Lsk/mimac/slideshow/enums/AnimationType;

.field public static final enum MOVE_TOP:Lsk/mimac/slideshow/enums/AnimationType;

.field public static final enum ZOOM_IN:Lsk/mimac/slideshow/enums/AnimationType;

.field public static final enum ZOOM_OUT:Lsk/mimac/slideshow/enums/AnimationType;


# instance fields
.field private final moveHorizontally:Z

.field private final moveVertically:Z

.field private final zoom:Z


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/AnimationType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lsk/mimac/slideshow/enums/AnimationType;

    sget-object v1, Lsk/mimac/slideshow/enums/AnimationType;->ZOOM_IN:Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/AnimationType;->ZOOM_OUT:Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_RIGHT:Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_LEFT:Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_TOP:Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_BOTTOM:Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "ZOOM_IN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/enums/AnimationType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v6, Lsk/mimac/slideshow/enums/AnimationType;->ZOOM_IN:Lsk/mimac/slideshow/enums/AnimationType;

    new-instance v0, Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v8, "ZOOM_OUT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lsk/mimac/slideshow/enums/AnimationType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lsk/mimac/slideshow/enums/AnimationType;->ZOOM_OUT:Lsk/mimac/slideshow/enums/AnimationType;

    new-instance v0, Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, "MOVE_RIGHT"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsk/mimac/slideshow/enums/AnimationType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_RIGHT:Lsk/mimac/slideshow/enums/AnimationType;

    new-instance v0, Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v11, 0x1

    const-string v8, "MOVE_LEFT"

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lsk/mimac/slideshow/enums/AnimationType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_LEFT:Lsk/mimac/slideshow/enums/AnimationType;

    new-instance v0, Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "MOVE_TOP"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsk/mimac/slideshow/enums/AnimationType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_TOP:Lsk/mimac/slideshow/enums/AnimationType;

    new-instance v0, Lsk/mimac/slideshow/enums/AnimationType;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v8, "MOVE_BOTTOM"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lsk/mimac/slideshow/enums/AnimationType;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lsk/mimac/slideshow/enums/AnimationType;->MOVE_BOTTOM:Lsk/mimac/slideshow/enums/AnimationType;

    invoke-static {}, Lsk/mimac/slideshow/enums/AnimationType;->$values()[Lsk/mimac/slideshow/enums/AnimationType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/AnimationType;->$VALUES:[Lsk/mimac/slideshow/enums/AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lsk/mimac/slideshow/enums/AnimationType;->zoom:Z

    iput-boolean p4, p0, Lsk/mimac/slideshow/enums/AnimationType;->moveHorizontally:Z

    iput-boolean p5, p0, Lsk/mimac/slideshow/enums/AnimationType;->moveVertically:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/AnimationType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/AnimationType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/AnimationType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/AnimationType;->$VALUES:[Lsk/mimac/slideshow/enums/AnimationType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/AnimationType;

    return-object v0
.end method


# virtual methods
.method public isMoveHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/enums/AnimationType;->moveHorizontally:Z

    return v0
.end method

.method public isMoveVertically()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/enums/AnimationType;->moveVertically:Z

    return v0
.end method

.method public isZoom()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/enums/AnimationType;->zoom:Z

    return v0
.end method
