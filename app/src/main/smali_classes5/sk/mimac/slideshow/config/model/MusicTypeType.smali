.class public final enum Lsk/mimac/slideshow/config/model/MusicTypeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/config/model/MusicTypeType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "MusicTypeType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/config/model/MusicTypeType;

.field public static final enum AUDIO:Lsk/mimac/slideshow/config/model/MusicTypeType;

.field public static final enum NONE:Lsk/mimac/slideshow/config/model/MusicTypeType;

.field public static final enum VIDEO:Lsk/mimac/slideshow/config/model/MusicTypeType;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/config/model/MusicTypeType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lsk/mimac/slideshow/config/model/MusicTypeType;

    sget-object v1, Lsk/mimac/slideshow/config/model/MusicTypeType;->NONE:Lsk/mimac/slideshow/config/model/MusicTypeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/MusicTypeType;->VIDEO:Lsk/mimac/slideshow/config/model/MusicTypeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/config/model/MusicTypeType;->AUDIO:Lsk/mimac/slideshow/config/model/MusicTypeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/config/model/MusicTypeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/MusicTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/MusicTypeType;->NONE:Lsk/mimac/slideshow/config/model/MusicTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/MusicTypeType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/MusicTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/MusicTypeType;->VIDEO:Lsk/mimac/slideshow/config/model/MusicTypeType;

    new-instance v0, Lsk/mimac/slideshow/config/model/MusicTypeType;

    const-string v1, "AUDIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/config/model/MusicTypeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/config/model/MusicTypeType;->AUDIO:Lsk/mimac/slideshow/config/model/MusicTypeType;

    invoke-static {}, Lsk/mimac/slideshow/config/model/MusicTypeType;->$values()[Lsk/mimac/slideshow/config/model/MusicTypeType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/config/model/MusicTypeType;->$VALUES:[Lsk/mimac/slideshow/config/model/MusicTypeType;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/config/model/MusicTypeType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/config/model/MusicTypeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/config/model/MusicTypeType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/config/model/MusicTypeType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/config/model/MusicTypeType;->$VALUES:[Lsk/mimac/slideshow/config/model/MusicTypeType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/config/model/MusicTypeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/config/model/MusicTypeType;

    return-object v0
.end method
