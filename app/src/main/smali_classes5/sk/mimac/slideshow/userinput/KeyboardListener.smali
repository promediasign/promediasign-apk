.class public abstract Lsk/mimac/slideshow/userinput/KeyboardListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static keyActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lsk/mimac/slideshow/database/entity/KeyAction;",
            ">;"
        }
    .end annotation
.end field

.field private static keyDownConsumer:Lsk/mimac/slideshow/utils/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/userinput/KeyboardListener;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener;->LOG:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyActions:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/userinput/KeyboardListener;->lambda$processAction$0(I)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->lambda$processAction$2()V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->lambda$processAction$1()V

    return-void
.end method

.method private static checkKeyDownConsumer(I)Z
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyDownConsumer:Lsk/mimac/slideshow/utils/Consumer;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyDownConsumer:Lsk/mimac/slideshow/utils/Consumer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyDownConsumer:Lsk/mimac/slideshow/utils/Consumer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p0, 0x0

    sput-object p0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyDownConsumer:Lsk/mimac/slideshow/utils/Consumer;

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static init()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/KeyAction;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/KeyAction;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    sput-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyActions:Ljava/util/Map;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/userinput/KeyboardListener;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t load key actions"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static synthetic lambda$processAction$0(I)V
    .locals 0

    invoke-static {p0}, Lsk/mimac/slideshow/userinput/ActionHelper;->changeLength(I)V

    return-void
.end method

.method private static synthetic lambda$processAction$1()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$processAction$2()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static onKeyDown(Lsk/mimac/slideshow/display/DisplayHelper;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->markLastActivity()V

    invoke-static {}, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->onActivity()V

    const/16 v0, 0x52

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_5

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DISABLE_KEYBOARD:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Lsk/mimac/slideshow/userinput/KeyboardListener;->checkKeyDownConsumer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/KeyAction;

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_4
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionDown()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object p2

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/KeyAction;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DOWN"

    invoke-static {p0, p2, v0, p1, v1}, Lsk/mimac/slideshow/userinput/KeyboardListener;->processAction(Lsk/mimac/slideshow/display/DisplayHelper;Lsk/mimac/slideshow/database/entity/KeyAction$Action;Ljava/util/Map;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.intent.category.HOME"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_6
    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->toggleLeftDrawer()V

    return v1
.end method

.method public static onKeyUp(Lsk/mimac/slideshow/display/DisplayHelper;I)Z
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/KeyAction;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/KeyAction;->getActionUp()Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "UP"

    invoke-static {p0, v0, v1, p1, v2}, Lsk/mimac/slideshow/userinput/KeyboardListener;->processAction(Lsk/mimac/slideshow/display/DisplayHelper;Lsk/mimac/slideshow/database/entity/KeyAction$Action;Ljava/util/Map;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static processAction(Lsk/mimac/slideshow/display/DisplayHelper;Lsk/mimac/slideshow/database/entity/KeyAction$Action;Ljava/util/Map;ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/display/DisplayHelper;",
            "Lsk/mimac/slideshow/database/entity/KeyAction$Action;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/userinput/KeyboardListener$1;->$SwitchMap$sk$mimac$slideshow$database$entity$KeyAction$Action:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    return v1

    :pswitch_1
    sget-object p0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->KEY_PRESS:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    const-string v0, "keyPressCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v2, "keyPressType"

    invoke-static {v0, p3, v2, p4}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-static {p0, p3}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return v1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->toggleRightDrawer()V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->toggleLeftDrawer()V

    return v1

    :pswitch_4
    new-instance p3, Le1/c;

    const/16 p4, 0x10

    invoke-direct {p3, p4}, Le1/c;-><init>(I)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_5
    new-instance p3, Le1/c;

    const/16 p4, 0xf

    invoke-direct {p3, p4}, Le1/c;-><init>(I)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_6
    new-instance p3, Le1/c;

    const/16 p4, 0xe

    invoke-direct {p3, p4}, Le1/c;-><init>(I)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_7
    new-instance p3, Le1/c;

    const/16 p4, 0xd

    invoke-direct {p3, p4}, Le1/c;-><init>(I)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_8
    new-instance p3, Le1/c;

    const/16 p4, 0xc

    invoke-direct {p3, p4}, Le1/c;-><init>(I)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_9
    invoke-static {}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->beep()V

    return v1

    :pswitch_a
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showHelp()V

    return v1

    :pswitch_b
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->showInfo()V

    return v1

    :pswitch_c
    new-instance p3, Le1/c;

    const/16 p4, 0xb

    invoke-direct {p3, p4}, Le1/c;-><init>(I)V

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_d
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->pauseOrResume()V

    return v1

    :pswitch_e
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->resume()V

    return v1

    :pswitch_f
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->pause()V

    return v1

    :pswitch_10
    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->rotateScreenLayout()V

    return v1

    :pswitch_11
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->toggleFullscreen()V

    return v1

    :pswitch_12
    const-string p3, "diff"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lt1/d;

    invoke-direct {p4, p3}, Lt1/d;-><init>(I)V

    invoke-virtual {p0, p4}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    return v1

    :pswitch_13
    const-string p0, "number"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lsk/mimac/slideshow/userinput/ActionHelper;->changePlaylistToNumber(I)V

    return v1

    :pswitch_14
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interruptAndBackward()V

    return v1

    :pswitch_15
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :goto_0
    sget-object p3, Lsk/mimac/slideshow/userinput/KeyboardListener;->LOG:Lorg/slf4j/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Error while processing key press action="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with properties="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public static setKeyDownConsumer(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lsk/mimac/slideshow/userinput/KeyboardListener;->keyDownConsumer:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method
