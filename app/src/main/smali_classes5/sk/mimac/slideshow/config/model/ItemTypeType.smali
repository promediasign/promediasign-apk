.class public final enum Lsk/mimac/slideshow/config/model/ItemTypeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/config/model/ItemTypeType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "ItemTypeType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum ALPHABETICALLY:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum DATE_TIME:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum IMAGE:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum NAME_DAY:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum NOTHING:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum RANDOM:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum RSS:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum STREAM:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum TEXT:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum VIDEO_INPUT:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum WEATHER:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum WIDGET:Lsk/mimac/slideshow/config/model/ItemTypeType;

.field public static final enum YOUTUBE:Lsk/mimac/slideshow/config/model/ItemTypeType;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/config/model/ItemTypeType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lsk/mimac/slideshow/config/model/ItemTypeType;

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->IMAGE:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->STREAM:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->RANDOM:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->ALPHABETICALLY:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->DATE_TIME:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->WEATHER:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->RSS:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->TEXT:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->NOTHING:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->NAME_DAY:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->VIDEO_INPUT:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->YOUTUBE:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/ItemTypeType;->WIDGET:Lsk/mimac/slideshow/config/model/ItemTypeType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->IMAGE:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "STREAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->STREAM:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "RANDOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->RANDOM:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "ALPHABETICALLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->ALPHABETICALLY:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "DATE_TIME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->DATE_TIME:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "WEATHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->WEATHER:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "RSS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->RSS:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "TEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->TEXT:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "NOTHING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->NOTHING:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "NAME_DAY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->NAME_DAY:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "VIDEO_INPUT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->VIDEO_INPUT:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "YOUTUBE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->YOUTUBE:Lsk/mimac/slideshow/config/model/ItemTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    const-string v1, "WIDGET"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/ItemTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->WIDGET:Lsk/mimac/slideshow/config/model/ItemTypeType;

    invoke-static {}, Lsk/mimac/slideshow/config/model/ItemTypeType;->$values()[Lsk/mimac/slideshow/config/model/ItemTypeType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->$VALUES:[Lsk/mimac/slideshow/config/model/ItemTypeType;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/ItemTypeType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/ItemTypeType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/config/model/ItemTypeType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/config/model/ItemTypeType;->$VALUES:[Lsk/mimac/slideshow/config/model/ItemTypeType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/config/model/ItemTypeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/config/model/ItemTypeType;

    return-object v0
.end method
