.class final Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompatScroller"
.end annotation


# instance fields
.field private final overScroller:Landroid/widget/OverScroller;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrX()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
