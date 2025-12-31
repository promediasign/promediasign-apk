.class public final synthetic Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/utils/BooleanHolder;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/utils/BooleanHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/b;->a:Lsk/mimac/slideshow/utils/BooleanHolder;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu1/b;->a:Lsk/mimac/slideshow/utils/BooleanHolder;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->b(Lsk/mimac/slideshow/utils/BooleanHolder;I)V

    return-void
.end method
