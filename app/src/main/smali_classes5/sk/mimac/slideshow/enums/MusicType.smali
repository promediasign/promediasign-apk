.class public final enum Lsk/mimac/slideshow/enums/MusicType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/MusicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/MusicType;

.field public static final enum AUDIO:Lsk/mimac/slideshow/enums/MusicType;

.field public static final enum NONE:Lsk/mimac/slideshow/enums/MusicType;

.field public static final enum VIDEO:Lsk/mimac/slideshow/enums/MusicType;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final id:I


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/MusicType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lsk/mimac/slideshow/enums/MusicType;

    sget-object v1, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/enums/MusicType;

    const-string v1, "music_type_video"

    const-string v2, "VIDEO"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lsk/mimac/slideshow/enums/MusicType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    new-instance v0, Lsk/mimac/slideshow/enums/MusicType;

    const-string v1, "NONE"

    const-string v2, "music_type_none"

    invoke-direct {v0, v1, v4, v3, v2}, Lsk/mimac/slideshow/enums/MusicType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    new-instance v0, Lsk/mimac/slideshow/enums/MusicType;

    const/4 v1, 0x4

    const-string v2, "music_type_audio"

    const-string v3, "AUDIO"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/enums/MusicType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-static {}, Lsk/mimac/slideshow/enums/MusicType;->$values()[Lsk/mimac/slideshow/enums/MusicType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/MusicType;->$VALUES:[Lsk/mimac/slideshow/enums/MusicType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsk/mimac/slideshow/enums/MusicType;->id:I

    iput-object p4, p0, Lsk/mimac/slideshow/enums/MusicType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static get(I)Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    return-object p0

    :cond_1
    sget-object p0, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    return-object p0

    :cond_2
    sget-object p0, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/MusicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/MusicType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/MusicType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/MusicType;->$VALUES:[Lsk/mimac/slideshow/enums/MusicType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/MusicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/MusicType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/MusicType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/enums/MusicType;->id:I

    return v0
.end method
