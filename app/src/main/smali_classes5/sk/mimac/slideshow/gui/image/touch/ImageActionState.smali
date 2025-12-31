.class public final enum Lsk/mimac/slideshow/gui/image/touch/ImageActionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/gui/image/touch/ImageActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

.field public static final enum ANIMATE_ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

.field public static final enum DRAG:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

.field public static final enum FLING:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

.field public static final enum NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

.field public static final enum ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/gui/image/touch/ImageActionState;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->DRAG:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->FLING:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->ANIMATE_ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const-string v1, "DRAG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->DRAG:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const-string v1, "ZOOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const-string v1, "FLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->FLING:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const-string v1, "ANIMATE_ZOOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->ANIMATE_ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {}, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->$values()[Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->$VALUES:[Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/gui/image/touch/ImageActionState;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->$VALUES:[Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    return-object v0
.end method
