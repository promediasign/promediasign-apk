.class public final enum Lsk/mimac/slideshow/enums/RssPanelDisplayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/RssPanelDisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/RssPanelDisplayType;

.field public static final enum LINES:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

.field public static final enum MARQUEE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

.field public static final enum MARQUEE_TO_RIGHT:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

.field public static final enum SINGLE_LINE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

.field public static final enum VERTICAL_SCROLL:Lsk/mimac/slideshow/enums/RssPanelDisplayType;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/RssPanelDisplayType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    sget-object v1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->LINES:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->SINGLE_LINE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->MARQUEE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->MARQUEE_TO_RIGHT:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->VERTICAL_SCROLL:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const-string v1, "LINES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->LINES:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    new-instance v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const-string v1, "SINGLE_LINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->SINGLE_LINE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    new-instance v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const-string v1, "MARQUEE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->MARQUEE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    new-instance v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const-string v1, "MARQUEE_TO_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->MARQUEE_TO_RIGHT:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    new-instance v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    const-string v1, "VERTICAL_SCROLL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->VERTICAL_SCROLL:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    invoke-static {}, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->$values()[Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->$VALUES:[Lsk/mimac/slideshow/enums/RssPanelDisplayType;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/RssPanelDisplayType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/RssPanelDisplayType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->$VALUES:[Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/RssPanelDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    return-object v0
.end method
