.class final enum Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/userinput/DrawerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum ADD_FILE_FROM_STORAGE:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum ADD_SAMPLE_IMAGES:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum ADVANCED_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum ANDROID_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum BASIC_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum DEVICE_INFORMATION:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum EXIT:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum HELP:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum LICENSE_KEY_ENTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum MEDIA_CONTROL:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

.field public static final enum REPORTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->LICENSE_KEY_ENTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->MEDIA_CONTROL:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->DEVICE_INFORMATION:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->BASIC_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ADVANCED_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ANDROID_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->HELP:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ADD_SAMPLE_IMAGES:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ADD_FILE_FROM_STORAGE:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->REPORTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->EXIT:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "LICENSE_KEY_ENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->LICENSE_KEY_ENTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "MEDIA_CONTROL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->MEDIA_CONTROL:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "DEVICE_INFORMATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->DEVICE_INFORMATION:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "BASIC_SETTINGS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->BASIC_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "ADVANCED_SETTINGS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ADVANCED_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "ANDROID_SETTINGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ANDROID_SETTINGS:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "HELP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->HELP:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "ADD_SAMPLE_IMAGES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ADD_SAMPLE_IMAGES:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "ADD_FILE_FROM_STORAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->ADD_FILE_FROM_STORAGE:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "REPORTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->REPORTER:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    const-string v1, "EXIT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->EXIT:Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    invoke-static {}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->$values()[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->$VALUES:[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

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

.method public static synthetic access$000(Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toLowerCase()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->$VALUES:[Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/userinput/DrawerItemClickListener$MenuItem;

    return-object v0
.end method
