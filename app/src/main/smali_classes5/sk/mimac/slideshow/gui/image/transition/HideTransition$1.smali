.class Lsk/mimac/slideshow/gui/image/transition/HideTransition$1;
.super Landroid/view/animation/AlphaAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/transition/HideTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/HideTransition;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/HideTransition;FF)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/HideTransition;

    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    const v0, 0x3f733333    # 0.95f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return-void
.end method
