.class public final synthetic Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

.field public final synthetic b:Lsk/mimac/slideshow/utils/Consumer;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/b;->a:Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    iput-object p2, p0, Ln1/b;->b:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/b;->a:Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    iget-object v1, p0, Ln1/b;->b:Lsk/mimac/slideshow/utils/Consumer;

    invoke-static {v0, v1, p1}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->c(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;)V

    return-void
.end method
