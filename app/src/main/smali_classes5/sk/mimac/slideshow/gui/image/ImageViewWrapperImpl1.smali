.class public Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;
.super Lsk/mimac/slideshow/gui/image/ImageViewWrapper;
.source "SourceFile"


# instance fields
.field private final view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getBitmapHeight()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapWidth()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public setAnimation(IILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    add-int/lit16 p1, p1, 0x320

    invoke-virtual {p0, v0, p1, p2, p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->prepareAnimation(Landroid/widget/ImageView;IILjava/util/Set;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setScaleTypeInternal(Lsk/mimac/slideshow/enums/ScaleType;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoomPan(Z)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setZoomEnabled(Z)V

    return-void
.end method

.method public showWithTransition(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->resetZoom()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p1}, LV/a;->C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ll1/a;->c(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p1

    invoke-static {p1}, Ll1/a;->i(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl1;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
