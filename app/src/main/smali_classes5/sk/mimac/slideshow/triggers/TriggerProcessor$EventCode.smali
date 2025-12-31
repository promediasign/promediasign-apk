.class public final enum Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/triggers/TriggerProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum EXTERNAL_STORAGE_INSERTED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum EXTERNAL_STORAGE_REMOVED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum FACE_DETECTION:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum KEY_PRESS:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum OSC_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum PANEL_CLICK:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum RSS_FEED_DOWNLOADED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum SERIAL_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

.field public static final enum TIMER:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->PANEL_CLICK:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->FACE_DETECTION:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->TIMER:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->KEY_PRESS:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->SERIAL_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->OSC_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->RSS_FEED_DOWNLOADED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->EXTERNAL_STORAGE_INSERTED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->EXTERNAL_STORAGE_REMOVED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "PANEL_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->PANEL_CLICK:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->FACE_DETECTION:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "TIMER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->TIMER:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "KEY_PRESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->KEY_PRESS:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "SERIAL_DATA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->SERIAL_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "OSC_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->OSC_DATA:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "RSS_FEED_DOWNLOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->RSS_FEED_DOWNLOADED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "EXTERNAL_STORAGE_INSERTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->EXTERNAL_STORAGE_INSERTED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    new-instance v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v1, "EXTERNAL_STORAGE_REMOVED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->EXTERNAL_STORAGE_REMOVED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->$values()[Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->$VALUES:[Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

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

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->$VALUES:[Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    return-object v0
.end method
