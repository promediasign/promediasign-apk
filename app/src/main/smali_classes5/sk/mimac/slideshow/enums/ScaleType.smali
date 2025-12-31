.class public final enum Lsk/mimac/slideshow/enums/ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/SelectItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/ScaleType;",
        ">;",
        "Lsk/mimac/slideshow/SelectItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/ScaleType;

.field public static final enum CENTER:Lsk/mimac/slideshow/enums/ScaleType;

.field public static final enum CENTER_CROP:Lsk/mimac/slideshow/enums/ScaleType;

.field public static final enum FIT_CENTER:Lsk/mimac/slideshow/enums/ScaleType;

.field public static final enum FIT_XY:Lsk/mimac/slideshow/enums/ScaleType;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/ScaleType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/enums/ScaleType;

    sget-object v1, Lsk/mimac/slideshow/enums/ScaleType;->FIT_CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScaleType;->CENTER_CROP:Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScaleType;->FIT_XY:Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ScaleType;->CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v1, 0x0

    const-string v2, "scale_type_fit_center"

    const-string v3, "FIT_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScaleType;->FIT_CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    new-instance v0, Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v1, 0x1

    const-string v2, "scale_type_center_crop"

    const-string v3, "CENTER_CROP"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScaleType;->CENTER_CROP:Lsk/mimac/slideshow/enums/ScaleType;

    new-instance v0, Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v1, 0x2

    const-string v2, "scale_type_fit_xy"

    const-string v3, "FIT_XY"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScaleType;->FIT_XY:Lsk/mimac/slideshow/enums/ScaleType;

    new-instance v0, Lsk/mimac/slideshow/enums/ScaleType;

    const/4 v1, 0x3

    const-string v2, "scale_type_center"

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ScaleType;->CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    invoke-static {}, Lsk/mimac/slideshow/enums/ScaleType;->$values()[Lsk/mimac/slideshow/enums/ScaleType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/ScaleType;->$VALUES:[Lsk/mimac/slideshow/enums/ScaleType;

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

    iput-object p3, p0, Lsk/mimac/slideshow/enums/ScaleType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ScaleType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/ScaleType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/ScaleType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/ScaleType;->$VALUES:[Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/ScaleType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/ScaleType;->desc:Ljava/lang/String;

    return-object v0
.end method
