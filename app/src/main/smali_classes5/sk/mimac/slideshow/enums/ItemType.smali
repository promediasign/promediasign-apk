.class public final enum Lsk/mimac/slideshow/enums/ItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum IMAGE:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum NAME_DAY:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum NOTHING:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum RANDOM:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum RSS:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum STREAM:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum TEXT:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum VIDEO_INPUT:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum WEATHER:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum WIDGET:Lsk/mimac/slideshow/enums/ItemType;

.field public static final enum YOUTUBE:Lsk/mimac/slideshow/enums/ItemType;


# instance fields
.field private final icon:Ljava/lang/String;

.field private final id:I


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/ItemType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lsk/mimac/slideshow/enums/ItemType;

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->STREAM:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->WEATHER:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->RSS:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->TEXT:Lsk/mimac/slideshow/enums/ItemType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->NOTHING:Lsk/mimac/slideshow/enums/ItemType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->NAME_DAY:Lsk/mimac/slideshow/enums/ItemType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->VIDEO_INPUT:Lsk/mimac/slideshow/enums/ItemType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->YOUTUBE:Lsk/mimac/slideshow/enums/ItemType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/ItemType;->WIDGET:Lsk/mimac/slideshow/enums/ItemType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "&#128193;"

    invoke-direct {v0, v1, v2, v3, v4}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "STREAM"

    const/4 v2, 0x4

    const-string v5, "&#128249;"

    invoke-direct {v0, v1, v3, v2, v5}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->STREAM:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "RANDOM"

    const/4 v3, 0x2

    const/4 v6, 0x5

    invoke-direct {v0, v1, v3, v6, v4}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "ALPHABETICALLY"

    const/4 v3, 0x3

    const/4 v7, 0x6

    invoke-direct {v0, v1, v3, v7, v4}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "&#128337;"

    const-string v3, "DATE_TIME"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v2, v4, v1}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "&#9925;"

    const-string v2, "WEATHER"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v6, v3, v1}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->WEATHER:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "&#x1F4F0;"

    const-string v2, "RSS"

    const/16 v6, 0x9

    invoke-direct {v0, v2, v7, v6, v1}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->RSS:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "&#946;"

    const-string v2, "TEXT"

    const/16 v7, 0xa

    invoke-direct {v0, v2, v4, v7, v1}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->TEXT:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "&#9634;"

    const-string v2, "NOTHING"

    const/16 v4, 0xb

    invoke-direct {v0, v2, v3, v4, v1}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->NOTHING:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "&#127874;"

    const-string v2, "NAME_DAY"

    const/16 v3, 0xc

    invoke-direct {v0, v2, v6, v3, v1}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->NAME_DAY:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const-string v1, "VIDEO_INPUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v7, v2, v5}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->VIDEO_INPUT:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const/16 v1, 0xe

    const-string v2, "&#128250;"

    const-string v5, "YOUTUBE"

    invoke-direct {v0, v5, v4, v1, v2}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->YOUTUBE:Lsk/mimac/slideshow/enums/ItemType;

    new-instance v0, Lsk/mimac/slideshow/enums/ItemType;

    const/16 v1, 0xf

    const-string v2, "&#10697;"

    const-string v4, "WIDGET"

    invoke-direct {v0, v4, v3, v1, v2}, Lsk/mimac/slideshow/enums/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->WIDGET:Lsk/mimac/slideshow/enums/ItemType;

    invoke-static {}, Lsk/mimac/slideshow/enums/ItemType;->$values()[Lsk/mimac/slideshow/enums/ItemType;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/ItemType;->$VALUES:[Lsk/mimac/slideshow/enums/ItemType;

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

    iput p3, p0, Lsk/mimac/slideshow/enums/ItemType;->id:I

    iput-object p4, p0, Lsk/mimac/slideshow/enums/ItemType;->icon:Ljava/lang/String;

    return-void
.end method

.method public static getType(I)Lsk/mimac/slideshow/enums/ItemType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->WIDGET:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_1
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->YOUTUBE:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_2
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->VIDEO_INPUT:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_3
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->NAME_DAY:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_4
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->NOTHING:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_5
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->TEXT:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_6
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->RSS:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_7
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->WEATHER:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_8
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_9
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_a
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :pswitch_b
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->STREAM:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    :cond_0
    sget-object p0, Lsk/mimac/slideshow/enums/ItemType;->IMAGE:Lsk/mimac/slideshow/enums/ItemType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/ItemType;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/ItemType;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/ItemType;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/ItemType;->$VALUES:[Lsk/mimac/slideshow/enums/ItemType;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/ItemType;

    return-object v0
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/ItemType;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/enums/ItemType;->id:I

    return v0
.end method
