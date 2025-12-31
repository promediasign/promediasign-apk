.class public final synthetic Lk1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lk1/n;->a:I

    iput-object p1, p0, Lk1/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lk1/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lk1/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lk1/n;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/gui/PercentageLayout;

    iget-object v1, p0, Lk1/n;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->a(Lsk/mimac/slideshow/gui/PercentageLayout;Landroid/graphics/Bitmap;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lk1/n;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/utils/Function;

    iget-object v1, p0, Lk1/n;->c:Ljava/lang/Object;

    check-cast v1, Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->m(Lsk/mimac/slideshow/utils/Function;Lsk/mimac/slideshow/gui/video/VideoViewInterface;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
