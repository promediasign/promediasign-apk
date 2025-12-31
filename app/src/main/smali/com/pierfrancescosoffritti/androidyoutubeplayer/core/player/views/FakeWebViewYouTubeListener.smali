.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;


# static fields
.field public static final INSTANCE:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;

    invoke-direct {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;-><init>()V

    sput-object v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;->INSTANCE:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterFullscreen(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fullscreenView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exitFullscreen"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onExitFullscreen()V
    .locals 0

    return-void
.end method
