.class public Lsk/mimac/slideshow/gui/PlaylistPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;
    }
.end annotation


# instance fields
.field private appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field private descText:Landroid/widget/TextView;

.field private final displayId:Ljava/lang/String;

.field private final imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

.field private itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

.field private final mainPanel:Z

.field private final relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

.field private final rotation:I

.field private textView:Lsk/mimac/slideshow/gui/ScrollTextView;

.field private videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

.field private videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

.field private webView:Lsk/mimac/slideshow/gui/ClearingWebView;

.field private youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/database/entity/PanelItem;Z[FILjava/lang/Integer;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->mainPanel:Z

    iput-object p7, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->displayId:Ljava/lang/String;

    iput p6, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->rotation:I

    new-instance p2, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    sget-object p6, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {p2, p6, p3, p4, p5}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;-><init>(Landroid/content/Context;[FILjava/lang/Integer;)V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    if-lez p4, :cond_0

    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    new-instance p3, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object p4, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {p3, p4}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;-><init>(Landroid/content/Context;)V

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p5, -0x1

    invoke-direct {p4, p5, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p6, 0x0

    invoke-virtual {p2, p3, p6, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result p4

    if-lez p4, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object p4

    sget-object p6, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    if-eq p4, p6, :cond_1

    new-instance p4, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object p6, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {p4, p6}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;-><init>(Landroid/content/Context;)V

    new-instance p6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p6, p5, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p5, 0x1

    invoke-virtual {p2, p4, p5, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance p5, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;

    invoke-direct {p5, p3, p4}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iput-object p5, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object p3

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result p4

    invoke-virtual {p5, p3, p4}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->setTransition(Lsk/mimac/slideshow/enums/TransitionType;I)V

    goto :goto_0

    :cond_1
    new-instance p4, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;

    invoke-direct {p4, p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iput-object p4, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    :goto_0
    iget-object p3, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    sget-object p4, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class p5, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {p4, p5}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p4

    check-cast p4, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {p3, p4}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->setScaleType(Lsk/mimac/slideshow/enums/ScaleType;)V

    iget-object p3, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    invoke-virtual {p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->hide()V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeDescText()V

    new-instance p3, Lk1/d;

    invoke-direct {p3, p0, p1}, Lk1/d;-><init>(Lsk/mimac/slideshow/gui/PlaylistPanel;Lsk/mimac/slideshow/database/entity/PanelItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/PlaylistPanel;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->lambda$initializeVideoInputView$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/gui/PlaylistPanel;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->lambda$initializeVideoView$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/gui/PlaylistPanel;Lsk/mimac/slideshow/database/entity/PanelItem;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/PlaylistPanel;->lambda$new$0(Lsk/mimac/slideshow/database/entity/PanelItem;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lsk/mimac/slideshow/gui/PlaylistPanel;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->lambda$initializeVideoView$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static initialize(Lsk/mimac/slideshow/database/entity/PanelItem;Z[FILjava/lang/Integer;ILjava/lang/String;)Lsk/mimac/slideshow/gui/PlaylistPanel;
    .locals 9

    new-instance v8, Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/gui/PlaylistPanel;-><init>(Lsk/mimac/slideshow/database/entity/PanelItem;Z[FILjava/lang/Integer;ILjava/lang/String;)V

    new-instance p2, Lsk/mimac/slideshow/gui/ShowHelperImpl;

    invoke-direct {p2, v8}, Lsk/mimac/slideshow/gui/ShowHelperImpl;-><init>(Lsk/mimac/slideshow/gui/PlaylistPanel;)V

    new-instance p3, Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-direct {p3, p2, p0, p1, p6}, Lsk/mimac/slideshow/gui/DisplayItemThread;-><init>(Lsk/mimac/slideshow/gui/ShowHelper;Lsk/mimac/slideshow/database/entity/PanelItem;ZLjava/lang/String;)V

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->setItemThread(Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    iput-object p3, v8, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    iget-object p0, v8, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p0, p3}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->setDisplayItemThread(Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-object v8
.end method

.method private initializeDescText()V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->descText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->descText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initializeTextView()V
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/gui/ScrollTextView;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/ScrollTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->textView:Lsk/mimac/slideshow/gui/ScrollTextView;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->textView:Lsk/mimac/slideshow/gui/ScrollTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->textView:Lsk/mimac/slideshow/gui/ScrollTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    return-void
.end method

.method private initializeVideoInputView()V
    .locals 6

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/gui/input/DummyVideoInputView;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/input/DummyVideoInputView;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Z9X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_INPUT_COMPATIBILITY_MODE:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/SurfaceView;

    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/media/tv/TvView;

    sget-object v4, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;

    invoke-direct {v1, v0, v3}, Lsk/mimac/slideshow/gui/input/SurfaceVideoInputView;-><init>(Landroid/view/SurfaceView;Landroid/media/tv/TvView;)V

    :goto_0
    iput-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/view/TextureView;

    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/media/tv/TvView;

    sget-object v4, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;

    invoke-direct {v1, v0, v3}, Lsk/mimac/slideshow/gui/input/TextureVideoInputView;-><init>(Landroid/view/TextureView;Landroid/media/tv/TvView;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    new-instance v1, Lk1/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lk1/e;-><init>(Lsk/mimac/slideshow/gui/PlaylistPanel;I)V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/input/VideoInputView;->setOnErrorListener(Lsk/mimac/slideshow/utils/Consumer;)V

    return-void
.end method

.method private initializeVideoView()V
    .locals 7

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_PLAYER_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    sget-object v1, Lsk/mimac/slideshow/gui/PlaylistPanel$1;->$SwitchMap$sk$mimac$slideshow$enums$VideoPlayerType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/view/TextureView;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/TextureView;

    sget-object v5, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-direct {v3, v0, v1, v2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;-><init>(Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;Landroid/view/TextureView;Landroid/view/TextureView;)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->setScaleType(Lsk/mimac/slideshow/enums/ScaleType;)V

    iput-object v3, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    goto :goto_1

    :cond_0
    new-instance v0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/view/SurfaceView;

    sget-object v5, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget v5, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->rotation:I

    sget-object v6, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_SURFACE_VIEW_TUNNEL:Lsk/mimac/slideshow/enums/VideoPlayerType;

    if-ne v0, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v4, v1, v5, v2}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;-><init>(Landroid/view/SurfaceView;IZ)V

    iput-object v4, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/VolumeHolder;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    invoke-interface {v0}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->mute()V

    :cond_3
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    new-instance v1, Lk1/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lk1/e;-><init>(Lsk/mimac/slideshow/gui/PlaylistPanel;I)V

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->setOnErrorListener(Lsk/mimac/slideshow/utils/Consumer;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    new-instance v1, Lk1/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lk1/e;-><init>(Lsk/mimac/slideshow/gui/PlaylistPanel;I)V

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->setOnCompletionListener(Lsk/mimac/slideshow/utils/Consumer;)V

    return-void
.end method

.method private initializeWebView()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/gui/ClearingWebView;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lsk/mimac/slideshow/gui/ClearingWebView;-><init>(Landroid/content/Context;Lsk/mimac/slideshow/gui/PlaylistPanel;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->webView:Lsk/mimac/slideshow/gui/ClearingWebView;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->webView:Lsk/mimac/slideshow/gui/ClearingWebView;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ClearingWebView;->init()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->webView:Lsk/mimac/slideshow/gui/ClearingWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ClearingWebView;->setVisibility(I)V

    return-void
.end method

.method private initializeYouTubeView()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;-><init>(Landroid/widget/RelativeLayout;Lsk/mimac/slideshow/gui/ItemThread;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    return-void
.end method

.method private synthetic lambda$initializeVideoInputView$3(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method private synthetic lambda$initializeVideoView$1(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method private synthetic lambda$initializeVideoView$2(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Lsk/mimac/slideshow/database/entity/PanelItem;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->PANEL_CLICK:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float p1, p1, v0

    iget-object p3, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v0, "panelName"

    const-string v2, "positionX"

    const-string v4, "positionY"

    invoke-static/range {v0 .. v5}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDescText()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->descText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getImageView()Lsk/mimac/slideshow/gui/image/ImageViewWrapper;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    return-object v0
.end method

.method public getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    return-object v0
.end method

.method public getTextView()Lsk/mimac/slideshow/gui/ScrollTextView;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->textView:Lsk/mimac/slideshow/gui/ScrollTextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeTextView()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->textView:Lsk/mimac/slideshow/gui/ScrollTextView;

    return-object v0
.end method

.method public getVideoInputView()Lsk/mimac/slideshow/gui/input/VideoInputView;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeVideoInputView()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    return-object v0
.end method

.method public getVideoView()Lsk/mimac/slideshow/gui/video/VideoViewInterface;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeVideoView()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    return-object v0
.end method

.method public getVideoViewOrNull()Lsk/mimac/slideshow/gui/video/VideoViewInterface;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    return-object v0
.end method

.method public getView()Lsk/mimac/slideshow/gui/RoundedRelativeLayout;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    return-object v0
.end method

.method public getWebView()Lsk/mimac/slideshow/gui/ClearingWebView;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->webView:Lsk/mimac/slideshow/gui/ClearingWebView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeWebView()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->webView:Lsk/mimac/slideshow/gui/ClearingWebView;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getYoutubeView()Lsk/mimac/slideshow/gui/YouTubeViewWrapper;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initializeYouTubeView()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    return-object v0
.end method

.method public hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->IMAGE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->imageView:Lsk/mimac/slideshow/gui/image/ImageViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->hide()V

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->stopPlayback()V

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WEB:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    const/16 v1, 0x8

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->webView:Lsk/mimac/slideshow/gui/ClearingWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ClearingWebView;->setVisibility(I)V

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->TEXT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->textView:Lsk/mimac/slideshow/gui/ScrollTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ScrollTextView;->setVisibility(I)V

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->VIDEO_INPUT:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/input/VideoInputView;->hide()V

    :cond_4
    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->YOUTUBE:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->hide()V

    :cond_5
    sget-object v0, Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;->WIDGET:Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    :cond_6
    return-void
.end method

.method public initializeAppWidgetHostView(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->hideViewsExcept(Lsk/mimac/slideshow/gui/PlaylistPanel$ViewType;)V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->MAIN_SERVICE:Lsk/mimac/slideshow/MainService;

    invoke-virtual {v0}, Lsk/mimac/slideshow/MainService;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->relativeLayout:Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->appWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public isMainPanel()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->mainPanel:Z

    return v0
.end method

.method public join()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->join()V

    return-void
.end method

.method public mute()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->mute()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->mute()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoInputView:Lsk/mimac/slideshow/gui/input/VideoInputView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/input/VideoInputView;->hide()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->stop()V

    return-void
.end method

.method public unMute()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->videoView:Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->unMute()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/PlaylistPanel;->youtubeView:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->unMute()V

    :cond_1
    return-void
.end method
