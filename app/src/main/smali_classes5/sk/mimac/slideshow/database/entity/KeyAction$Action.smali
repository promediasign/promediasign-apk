.class public final enum Lsk/mimac/slideshow/database/entity/KeyAction$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/database/entity/KeyAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/database/entity/KeyAction$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum BEEP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum CHANGE_CONTENT_LENGTH:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum CHANGE_TO_PLAYLIST_NUMBER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum DELETE_LAST_FILE:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum NEXT_ITEM:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum NOTHING:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum OPEN_LEFT_MENU:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum OPEN_RIGHT_MENU:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum PAUSE:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum PAUSE_OR_RESUME:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum PREVIOUS_ITEM:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum RELOAD_APP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum RESUME:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum ROTATE_SCREEN_LAYOUT:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum SHOW_ADVANCED_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum SHOW_ANDROID_DISPLAY_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum SHOW_ANDROID_WIFI_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum SHOW_BASIC_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum SHOW_HELP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum SHOW_INFO:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum TOGGLE_FULLSCREEN:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

.field public static final enum TRIGGER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/database/entity/KeyAction$Action;
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->NEXT_ITEM:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->PREVIOUS_ITEM:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->CHANGE_TO_PLAYLIST_NUMBER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->CHANGE_CONTENT_LENGTH:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->TOGGLE_FULLSCREEN:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->ROTATE_SCREEN_LAYOUT:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->PAUSE:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->RESUME:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->PAUSE_OR_RESUME:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->DELETE_LAST_FILE:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_INFO:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_HELP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->BEEP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->OPEN_LEFT_MENU:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->OPEN_RIGHT_MENU:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_BASIC_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_ADVANCED_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_ANDROID_WIFI_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_ANDROID_DISPLAY_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->RELOAD_APP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->TRIGGER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->NOTHING:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Move to the next file"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NEXT_ITEM"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->NEXT_ITEM:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Go back to the previous file"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "PREVIOUS_ITEM"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->PREVIOUS_ITEM:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "number"

    const-string v2, "playlist number"

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "CHANGE_TO_PLAYLIST_NUMBER"

    const/4 v3, 0x2

    const-string v4, "Change playlist to playlist with number"

    invoke-direct {v0, v2, v3, v4, v1}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->CHANGE_TO_PLAYLIST_NUMBER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "diff"

    const-string v2, "change in seconds"

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "CHANGE_CONTENT_LENGTH"

    const/4 v3, 0x3

    const-string v4, "Change length of currently displayed content"

    invoke-direct {v0, v2, v3, v4, v1}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->CHANGE_CONTENT_LENGTH:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Toggle fullscreen display of main zone"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "TOGGLE_FULLSCREEN"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->TOGGLE_FULLSCREEN:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Swap screen layout horizontally or vertically"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ROTATE_SCREEN_LAYOUT"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->ROTATE_SCREEN_LAYOUT:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Pause content in the main zone"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "PAUSE"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->PAUSE:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Resume content in the main zone"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "RESUME"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->RESUME:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Pause or resume content in the main zone"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "PAUSE_OR_RESUME"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->PAUSE_OR_RESUME:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Delete the currently displayed file"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "DELETE_LAST_FILE"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->DELETE_LAST_FILE:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Show device information on screen"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SHOW_INFO"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_INFO:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Show help on screen"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SHOW_HELP"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_HELP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Beep"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "BEEP"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->BEEP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Open the left on-screen menu"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "OPEN_LEFT_MENU"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->OPEN_LEFT_MENU:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Open the right on-screen menu"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "OPEN_RIGHT_MENU"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->OPEN_RIGHT_MENU:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Show basic app settings"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SHOW_BASIC_SETTINGS"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_BASIC_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Show advanced app settings"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SHOW_ADVANCED_SETTINGS"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_ADVANCED_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Show Android WiFi settings"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SHOW_ANDROID_WIFI_SETTINGS"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_ANDROID_WIFI_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Show Android display settings"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "SHOW_ANDROID_DISPLAY_SETTINGS"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->SHOW_ANDROID_DISPLAY_SETTINGS:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Reload this app"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "RELOAD_APP"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->RELOAD_APP:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Send the event to triggers"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "TRIGGER"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->TRIGGER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    const-string v1, "Do nothing"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "NOTHING"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->NOTHING:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-static {}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->$values()[Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->$VALUES:[Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->desc:Ljava/lang/String;

    iput-object p4, p0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->properties:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->properties:Ljava/util/Map;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/database/entity/KeyAction$Action;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->$VALUES:[Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/database/entity/KeyAction$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->properties:Ljava/util/Map;

    return-object v0
.end method
