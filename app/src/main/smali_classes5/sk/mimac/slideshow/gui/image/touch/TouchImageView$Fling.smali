.class final Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Fling"
.end annotation


# instance fields
.field private currX:I

.field private currY:I

.field private final scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;II)V
    .locals 11

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->FLING:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    new-instance v1, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;-><init>(Landroid/content/Context;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)[F

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)[F

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    float-to-int v0, v0

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)[F

    move-result-object v2

    const/4 v3, 0x5

    aget v2, v2, v3

    float-to-int v10, v2

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v2

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v2

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    move v6, v2

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    :goto_0
    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v2

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v2

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v2, p1

    move v8, v2

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    :goto_1
    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->currX:I

    iput v10, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->currY:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->forceFinished(Z)V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->scroller:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    iget v3, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->currX:I

    iput v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->currY:I

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0, p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
