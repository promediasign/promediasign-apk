.class public final enum Lsk/mimac/slideshow/enums/ImageBackgroundType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/ImageBackgroundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/ImageBackgroundType;

.field public static final enum BLURRED:Lsk/mimac/slideshow/enums/ImageBackgroundType;

.field public static final enum BLURRED_DARKER:Lsk/mimac/slideshow/enums/ImageBackgroundType;

.field public static final enum BLURRED_LIGHTER:Lsk/mimac/slideshow/enums/ImageBackgroundType;

.field public static final enum NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;


# instance fields
.field private colorShift:Ljava/lang/Boolean;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/ImageBackgroundType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/enums/ImageBackgroundType;

    sget-object v1, Lsk/mimac/slideshow/enums/ImageBackgroundType;->NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ImageBackgroundType;->BLURRED:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ImageBackgroundType;->BLURRED_LIGHTER:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ImageBackgroundType;->BLURRED_DARKER:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lsk/mimac/slideshow/enums/ImageBackgroundType;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->NONE:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    new-instance v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;

    const-string v1, "BLURRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lsk/mimac/slideshow/enums/ImageBackgroundType;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->BLURRED:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    new-instance v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "BLURRED_LIGHTER"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lsk/mimac/slideshow/enums/ImageBackgroundType;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->BLURRED_LIGHTER:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    new-instance v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "BLURRED_DARKER"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lsk/mimac/slideshow/enums/ImageBackgroundType;-><init>(Ljava/lang/String;ILjava/lang/Boolean;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->BLURRED_DARKER:Lsk/mimac/slideshow/enums/ImageBackgroundType;

    invoke-static {}, Lsk/mimac/slideshow/enums/ImageBackgroundType;->$values()[Lsk/mimac/slideshow/enums/ImageBackgroundType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->$VALUES:[Lsk/mimac/slideshow/enums/ImageBackgroundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->colorShift:Ljava/lang/Boolean;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ImageBackgroundType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/ImageBackgroundType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/ImageBackgroundType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->$VALUES:[Lsk/mimac/slideshow/enums/ImageBackgroundType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/ImageBackgroundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/ImageBackgroundType;

    return-object v0
.end method


# virtual methods
.method public getColorShift()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/ImageBackgroundType;->colorShift:Ljava/lang/Boolean;

    return-object v0
.end method
