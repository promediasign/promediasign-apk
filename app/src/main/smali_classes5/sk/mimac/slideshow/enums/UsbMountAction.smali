.class public final enum Lsk/mimac/slideshow/enums/UsbMountAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/SelectItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/enums/UsbMountAction;",
        ">;",
        "Lsk/mimac/slideshow/SelectItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/enums/UsbMountAction;

.field public static final enum COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

.field public static final enum DELETE_COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

.field public static final enum DO_NOTHING:Lsk/mimac/slideshow/enums/UsbMountAction;

.field public static final enum PLAY:Lsk/mimac/slideshow/enums/UsbMountAction;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/enums/UsbMountAction;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsk/mimac/slideshow/enums/UsbMountAction;

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->DO_NOTHING:Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->DELETE_COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/enums/UsbMountAction;->PLAY:Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v1, 0x0

    const-string v2, "usb_mount_action_do_nothing"

    const-string v3, "DO_NOTHING"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/UsbMountAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->DO_NOTHING:Lsk/mimac/slideshow/enums/UsbMountAction;

    new-instance v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v1, 0x1

    const-string v2, "usb_mount_action_delete_copy"

    const-string v3, "DELETE_COPY"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/UsbMountAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->DELETE_COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    new-instance v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v1, 0x2

    const-string v2, "usb_mount_action_copy"

    const-string v3, "COPY"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/UsbMountAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    new-instance v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    const/4 v1, 0x3

    const-string v2, "usb_mount_action_play"

    const-string v3, "PLAY"

    invoke-direct {v0, v3, v1, v2}, Lsk/mimac/slideshow/enums/UsbMountAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->PLAY:Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-static {}, Lsk/mimac/slideshow/enums/UsbMountAction;->$values()[Lsk/mimac/slideshow/enums/UsbMountAction;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->$VALUES:[Lsk/mimac/slideshow/enums/UsbMountAction;

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

    iput-object p3, p0, Lsk/mimac/slideshow/enums/UsbMountAction;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/UsbMountAction;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/enums/UsbMountAction;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/enums/UsbMountAction;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/enums/UsbMountAction;->$VALUES:[Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/enums/UsbMountAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/enums/UsbMountAction;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/enums/UsbMountAction;->desc:Ljava/lang/String;

    return-object v0
.end method
