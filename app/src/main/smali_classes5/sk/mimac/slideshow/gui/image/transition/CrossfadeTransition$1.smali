.class Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition$1;
.super Landroid/view/animation/AlphaAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;FF)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;

    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public willChangeTransformationMatrix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
