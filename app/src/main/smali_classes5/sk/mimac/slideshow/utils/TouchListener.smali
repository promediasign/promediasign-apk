.class public Lsk/mimac/slideshow/utils/TouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

.field private patternTouchStarted:J

.field private patternTouchState:I


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchStarted:J

    iput-object p1, p0, Lsk/mimac/slideshow/utils/TouchListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    return-void
.end method


# virtual methods
.method public checkTouchPattern(II)V
    .locals 8

    iget-wide v0, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchStarted:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide v4, 0xb2d05e00L

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-gez v7, :cond_0

    iput v6, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchState:I

    iput-wide v4, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchStarted:J

    :cond_0
    iget v0, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchState:I

    const/16 v1, 0x50

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/16 v3, 0x14

    if-eq v0, v2, :cond_5

    const/4 v7, 0x2

    if-eq v0, v7, :cond_5

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    const/4 v7, 0x4

    if-eq v0, v7, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    if-le p1, v1, :cond_2

    if-ge p2, v3, :cond_2

    iget-object p1, p0, Lsk/mimac/slideshow/utils/TouchListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lh1/d;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lh1/d;-><init>(Lsk/mimac/slideshow/display/DisplayHelper;I)V

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    :cond_2
    iput v6, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchState:I

    iput-wide v4, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchStarted:J

    goto :goto_1

    :cond_3
    if-le p1, v1, :cond_2

    if-ge p2, v3, :cond_2

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchState:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lsk/mimac/slideshow/utils/TouchListener;->patternTouchStarted:J

    goto :goto_1

    :cond_4
    if-ge p1, v3, :cond_2

    if-le p2, v1, :cond_2

    goto :goto_0

    :cond_5
    if-ge p1, v3, :cond_2

    if-ge p2, v3, :cond_2

    goto :goto_0

    :cond_6
    if-le p1, v1, :cond_2

    if-le p2, v1, :cond_2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->ENABLE_TOUCH_GESTURES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/utils/TouchListener;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->toggleLeftDrawer()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/UserActivityHolder;->markLastActivity()V

    invoke-static {}, Lsk/mimac/slideshow/screensaver/ScreenSaverService;->onActivity()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Lsk/mimac/slideshow/utils/TouchListener;->checkTouchPattern(II)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
