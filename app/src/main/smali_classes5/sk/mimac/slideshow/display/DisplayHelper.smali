.class public Lsk/mimac/slideshow/display/DisplayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displayId:Ljava/lang/String;

.field private displayIdInt:I

.field private drawerDevice:Landroid/widget/TextView;

.field private drawerIp:Landroid/widget/TextView;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private drawerList:Landroid/widget/ListView;

.field private final intf:Lsk/mimac/slideshow/display/DisplayInterface;

.field private lastDrawerAction:J

.field private layout:Lsk/mimac/slideshow/gui/PercentageLayout;

.field private final touchListener:Lsk/mimac/slideshow/utils/TouchListener;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/display/DisplayInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/utils/TouchListener;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/utils/TouchListener;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;)V

    iput-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->touchListener:Lsk/mimac/slideshow/utils/TouchListener;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->lastDrawerAction:J

    iput-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->setRightDrawerTexts()V

    return-void
.end method

.method public static synthetic access$002(Lsk/mimac/slideshow/display/DisplayHelper;J)J
    .locals 0

    iput-wide p1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->lastDrawerAction:J

    return-wide p1
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/display/DisplayHelper;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->setLeftDrawerTexts()V

    return-void
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/display/DisplayHelper;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerList:Landroid/widget/ListView;

    return-object p0
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->setRightDrawerTexts()V

    return-void
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/display/DisplayHelper;)Lsk/mimac/slideshow/display/DisplayInterface;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lsk/mimac/slideshow/utils/DisplayInfoDto;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$setDisplayId$0(Ljava/lang/String;Lsk/mimac/slideshow/utils/DisplayInfoDto;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$checkDrawer$2()V

    return-void
.end method

.method private initializeRightDrawer()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_media_title:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current_media"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_layout_title:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "active_screen_layout"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_layout_change:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "change_screen_layout"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_playlist_title:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "active_playlist"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_playlist_change:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "change_playlist"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_duration_change:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "change_content_duration"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_volume_title:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume"

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_volume_state:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getMaxVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_pause:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_play:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_next:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_previous:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_layout_change:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_playlist_change:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_duration_change:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lh1/a;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_volume_state:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh1/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    sget v1, Lsk/mimac/slideshow/R$id;->control_volume_state:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Lsk/mimac/slideshow/display/DisplayHelper$2;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/display/DisplayHelper$2;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$hideAndroidNavigation$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/display/DisplayHelper;->lambda$initializeRightDrawer$10(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkDrawer$2()V
    .locals 0

    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->closeDrawers()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->hideAndroidNavigation()V

    return-void
.end method

.method private static synthetic lambda$hideAndroidNavigation$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private static synthetic lambda$initializeRightDrawer$10(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method private static synthetic lambda$initializeRightDrawer$3(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->pause()V

    return-void
.end method

.method private static synthetic lambda$initializeRightDrawer$4(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->resume()V

    return-void
.end method

.method private static synthetic lambda$initializeRightDrawer$5(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    return-void
.end method

.method private static synthetic lambda$initializeRightDrawer$6(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interruptAndBackward()V

    return-void
.end method

.method private static synthetic lambda$initializeRightDrawer$7(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/ScreenControlHelper;->showChangeLayout()V

    return-void
.end method

.method private static synthetic lambda$initializeRightDrawer$8(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/ScreenControlHelper;->showChangePlaylist()V

    return-void
.end method

.method private static synthetic lambda$initializeRightDrawer$9(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lsk/mimac/slideshow/ScreenControlHelper;->showChangeDuration()V

    return-void
.end method

.method private static synthetic lambda$setDisplayId$0(Ljava/lang/String;Lsk/mimac/slideshow/utils/DisplayInfoDto;)Z
    .locals 0

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getDisplayId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setLeftDrawerTexts()V
    .locals 4

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WEB_SERVICES_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lsk/mimac/slideshow/network/NetworkInfoResolver;->getInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerIp:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "IP: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "not_connected"

    .line 30
    .line 31
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerDevice:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "device"

    .line 53
    .line 54
    const-string v3, ": "

    .line 55
    .line 56
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 60
    .line 61
    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private setRightDrawerTexts()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    .line 3
    const v1, 0x800005

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/GuiCreator;->getMainPlaylistPanel()Lsk/mimac/slideshow/gui/PlaylistPanel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getLastFileName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const-string v4, " "

    .line 43
    .line 44
    invoke-static {v3, v4}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getFormattedPosition()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 60
    .line 61
    sget v4, Lsk/mimac/slideshow/R$id;->control_layout_current:I

    .line 62
    .line 63
    invoke-interface {v1, v4}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/widget/TextView;

    .line 68
    .line 69
    const-string v4, ""

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object v0, v4

    .line 79
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 83
    .line 84
    sget v1, Lsk/mimac/slideshow/R$id;->control_playlist_current:I

    .line 85
    .line 86
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    invoke-interface {v2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v1, v4

    .line 100
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 104
    .line 105
    sget v1, Lsk/mimac/slideshow/R$id;->control_media_current:I

    .line 106
    .line 107
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object v3, v4

    .line 117
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 121
    .line 122
    sget v1, Lsk/mimac/slideshow/R$id;->control_volume_state:I

    .line 123
    .line 124
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/SeekBar;

    .line 129
    .line 130
    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->getCurrentVolume()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Landroid/os/Handler;

    .line 138
    .line 139
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    .line 145
    .line 146
    new-instance v1, Lh1/d;

    .line 147
    .line 148
    const/4 v2, 0x1

    .line 149
    invoke-direct {v1, p0, v2}, Lh1/d;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;I)V

    .line 150
    .line 151
    .line 152
    const-wide/16 v2, 0x1f4

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    .line 156
    .line 157
    :cond_4
    return-void
.end method


# virtual methods
.method public checkDrawer()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lsk/mimac/slideshow/display/DisplayHelper;->lastDrawerAction:J

    sub-long/2addr v0, v2

    const-wide v2, 0x22ecb25c00L

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->lastDrawerAction:J

    new-instance v0, Lh1/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh1/d;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public checkPasswordIfNecessary(Ljava/lang/Runnable;)Z
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/ScreenPasswordHelper;->getInstance()Lsk/mimac/slideshow/ScreenPasswordHelper;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v1}, Lsk/mimac/slideshow/display/DisplayInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lsk/mimac/slideshow/ScreenPasswordHelper;->checkPasswordIfNecessary(Landroid/content/Context;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public closeDrawers()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v0}, Lsk/mimac/slideshow/display/DisplayInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchListener()Lsk/mimac/slideshow/utils/TouchListener;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->touchListener:Lsk/mimac/slideshow/utils/TouchListener;

    return-object v0
.end method

.method public hideAndroidNavigation()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v0}, Lsk/mimac/slideshow/display/DisplayInterface;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v1}, Lsk/mimac/slideshow/display/DisplayInterface;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SCREEN_ON:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/lit16 v2, v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v1}, Lsk/mimac/slideshow/display/DisplayInterface;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, LV/a;->v(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v1}, Lsk/mimac/slideshow/display/DisplayInterface;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, LG/d;->j(Landroid/view/Window;)V

    invoke-static {v0}, LG/d;->f(Landroid/view/View;)Landroid/view/WindowInsetsController;

    move-result-object v1

    invoke-static {}, LG/d;->a()I

    move-result v2

    invoke-static {v1, v2}, LG/d;->k(Landroid/view/WindowInsetsController;I)V

    :cond_1
    new-instance v1, LA0/a;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, LA0/a;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public initializeViews()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 2
    .line 3
    sget v1, Lsk/mimac/slideshow/R$id;->layout:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 10
    .line 11
    iput-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 12
    .line 13
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->touchListener:Lsk/mimac/slideshow/utils/TouchListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->initializeRightDrawer()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 22
    .line 23
    sget v1, Lsk/mimac/slideshow/R$id;->drawer_layout:I

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 30
    .line 31
    iput-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 32
    .line 33
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 34
    .line 35
    sget v1, Lsk/mimac/slideshow/R$id;->drawer_device:I

    .line 36
    .line 37
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerDevice:Landroid/widget/TextView;

    .line 44
    .line 45
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 46
    .line 47
    sget v1, Lsk/mimac/slideshow/R$id;->drawer_ip:I

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerIp:Landroid/widget/TextView;

    .line 56
    .line 57
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 58
    .line 59
    sget v1, Lsk/mimac/slideshow/R$id;->drawer_list:I

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/ListView;

    .line 66
    .line 67
    iput-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerList:Landroid/widget/ListView;

    .line 68
    .line 69
    new-instance v0, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lsk/mimac/slideshow/userinput/DrawerItemClickListener;->getMenuItems()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerList:Landroid/widget/ListView;

    .line 79
    .line 80
    new-instance v3, Landroid/widget/ArrayAdapter;

    .line 81
    .line 82
    iget-object v4, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 83
    .line 84
    invoke-interface {v4}, Lsk/mimac/slideshow/display/DisplayInterface;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    sget v5, Lsk/mimac/slideshow/R$layout;->list_item:I

    .line 89
    .line 90
    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerList:Landroid/widget/ListView;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerList:Landroid/widget/ListView;

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 108
    .line 109
    sget v2, Lsk/mimac/slideshow/R$id;->drawer_version:I

    .line 110
    .line 111
    invoke-interface {v0, v2}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/TextView;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "version"

    .line 123
    .line 124
    const-string v4, ": "

    .line 125
    .line 126
    invoke-static {v3, v4, v2}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 127
    .line 128
    .line 129
    sget-object v3, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 142
    .line 143
    new-instance v2, Lsk/mimac/slideshow/display/DisplayHelper$1;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Lsk/mimac/slideshow/display/DisplayHelper$1;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->setLeftDrawerTexts()V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PASSWORD_PROTECT_SCREEN:Lsk/mimac/slideshow/settings/UserSettings;

    .line 155
    .line 156
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    .line 162
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->ENABLE_TOUCH_GESTURES:Lsk/mimac/slideshow/settings/UserSettings;

    .line 163
    .line 164
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    .line 170
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 173
    .line 174
    .line 175
    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 176
    .line 177
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->setDisplayInterface(Lsk/mimac/slideshow/display/DisplayInterface;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 183
    .line 184
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->displayId:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->setDisplayId(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 190
    .line 191
    iget v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->displayIdInt:I

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->setDisplayIdInt(I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 197
    .line 198
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 199
    .line 200
    invoke-interface {v1}, Lsk/mimac/slideshow/display/DisplayInterface;->getWindow()Landroid/view/Window;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->setWindow(Landroid/view/Window;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 208
    .line 209
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->intf:Lsk/mimac/slideshow/display/DisplayInterface;

    .line 210
    .line 211
    instance-of v1, v1, Lsk/mimac/slideshow/display/SlideshowActivity;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->setMainDisplay(Z)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->createGui(Lsk/mimac/slideshow/gui/PercentageLayout;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/userinput/KeyboardListener;->onKeyDown(Lsk/mimac/slideshow/display/DisplayHelper;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x52

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->closeDrawers()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/display/DisplayHelper;->hideAndroidNavigation()V

    return v1
.end method

.method public onKeyUp(I)Z
    .locals 0

    invoke-static {p0, p1}, Lsk/mimac/slideshow/userinput/KeyboardListener;->onKeyUp(Lsk/mimac/slideshow/display/DisplayHelper;I)Z

    move-result p1

    return p1
.end method

.method public onStop()V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->layout:Lsk/mimac/slideshow/gui/PercentageLayout;

    iget-object v2, p0, Lsk/mimac/slideshow/display/DisplayHelper;->displayId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/gui/GuiCreator;->stop(Lsk/mimac/slideshow/gui/PercentageLayout;Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayId(I)V
    .locals 3

    iput p1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->displayIdInt:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/utils/DisplayUtils;->getAllDisplays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh1/c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lh1/c;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, LT0/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LT0/b;-><init>(I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper;->displayId:Ljava/lang/String;

    return-void
.end method

.method public toggleLeftDrawer()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    return-void
.end method

.method public toggleRightDrawer()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    return-void
.end method
