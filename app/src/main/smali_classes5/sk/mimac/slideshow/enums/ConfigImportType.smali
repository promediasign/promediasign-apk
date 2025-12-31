.class public final enum Lsk/mimac/slideshow/enums/ConfigImportType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/ConfigImportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/ConfigImportType;

.field public static final enum CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

.field public static final enum DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

.field public static final enum KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/ConfigImportType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lsk/mimac/slideshow/enums/ConfigImportType;

    sget-object v1, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ConfigImportType;->CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/enums/ConfigImportType;

    const-string v1, "KEEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/ConfigImportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->KEEP:Lsk/mimac/slideshow/enums/ConfigImportType;

    new-instance v0, Lsk/mimac/slideshow/enums/ConfigImportType;

    const-string v1, "DELETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/ConfigImportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->DELETE:Lsk/mimac/slideshow/enums/ConfigImportType;

    new-instance v0, Lsk/mimac/slideshow/enums/ConfigImportType;

    const-string v1, "CLOUD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/enums/ConfigImportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->CLOUD:Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-static {}, Lsk/mimac/slideshow/enums/ConfigImportType;->$values()[Lsk/mimac/slideshow/enums/ConfigImportType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->$VALUES:[Lsk/mimac/slideshow/enums/ConfigImportType;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ConfigImportType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/ConfigImportType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/ConfigImportType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/ConfigImportType;->$VALUES:[Lsk/mimac/slideshow/enums/ConfigImportType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/ConfigImportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/ConfigImportType;

    return-object v0
.end method
