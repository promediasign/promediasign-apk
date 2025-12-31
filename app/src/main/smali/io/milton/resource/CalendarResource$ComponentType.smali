.class public final enum Lio/milton/resource/CalendarResource$ComponentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/milton/resource/CalendarResource$ComponentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/milton/resource/CalendarResource$ComponentType;

.field public static final enum VEVENT:Lio/milton/resource/CalendarResource$ComponentType;

.field public static final enum VFREEBUSY:Lio/milton/resource/CalendarResource$ComponentType;

.field public static final enum VJOURNAL:Lio/milton/resource/CalendarResource$ComponentType;

.field public static final enum VTIMEZONE:Lio/milton/resource/CalendarResource$ComponentType;

.field public static final enum VTODO:Lio/milton/resource/CalendarResource$ComponentType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/milton/resource/CalendarResource$ComponentType;

    const-string v1, "VEVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/resource/CalendarResource$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/milton/resource/CalendarResource$ComponentType;->VEVENT:Lio/milton/resource/CalendarResource$ComponentType;

    new-instance v1, Lio/milton/resource/CalendarResource$ComponentType;

    const-string v3, "VTODO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/milton/resource/CalendarResource$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/milton/resource/CalendarResource$ComponentType;->VTODO:Lio/milton/resource/CalendarResource$ComponentType;

    new-instance v3, Lio/milton/resource/CalendarResource$ComponentType;

    const-string v5, "VTIMEZONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/milton/resource/CalendarResource$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/milton/resource/CalendarResource$ComponentType;->VTIMEZONE:Lio/milton/resource/CalendarResource$ComponentType;

    new-instance v5, Lio/milton/resource/CalendarResource$ComponentType;

    const-string v7, "VFREEBUSY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/milton/resource/CalendarResource$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/milton/resource/CalendarResource$ComponentType;->VFREEBUSY:Lio/milton/resource/CalendarResource$ComponentType;

    new-instance v7, Lio/milton/resource/CalendarResource$ComponentType;

    const-string v9, "VJOURNAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/milton/resource/CalendarResource$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/milton/resource/CalendarResource$ComponentType;->VJOURNAL:Lio/milton/resource/CalendarResource$ComponentType;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/milton/resource/CalendarResource$ComponentType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/milton/resource/CalendarResource$ComponentType;->$VALUES:[Lio/milton/resource/CalendarResource$ComponentType;

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

.method public static valueOf(Ljava/lang/String;)Lio/milton/resource/CalendarResource$ComponentType;
    .locals 1

    const-class v0, Lio/milton/resource/CalendarResource$ComponentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/milton/resource/CalendarResource$ComponentType;

    return-object p0
.end method

.method public static values()[Lio/milton/resource/CalendarResource$ComponentType;
    .locals 1

    sget-object v0, Lio/milton/resource/CalendarResource$ComponentType;->$VALUES:[Lio/milton/resource/CalendarResource$ComponentType;

    invoke-virtual {v0}, [Lio/milton/resource/CalendarResource$ComponentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/milton/resource/CalendarResource$ComponentType;

    return-object v0
.end method
