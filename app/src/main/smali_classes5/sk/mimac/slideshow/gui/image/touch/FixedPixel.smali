.class public final enum Lsk/mimac/slideshow/gui/image/touch/FixedPixel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/gui/image/touch/FixedPixel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

.field public static final enum BOTTOM_RIGHT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

.field public static final enum CENTER:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

.field public static final enum TOP_LEFT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/gui/image/touch/FixedPixel;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->CENTER:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->TOP_LEFT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->BOTTOM_RIGHT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->CENTER:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->TOP_LEFT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->BOTTOM_RIGHT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    invoke-static {}, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->$values()[Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->$VALUES:[Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/gui/image/touch/FixedPixel;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/gui/image/touch/FixedPixel;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->$VALUES:[Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    return-object v0
.end method
