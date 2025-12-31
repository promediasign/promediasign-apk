.class public final synthetic Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

.field public final synthetic b:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/a;->a:Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    iput-object p2, p0, Ln1/a;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln1/a;->a:Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    iget-object v1, p0, Ln1/a;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-static {v0, v1, p1}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->a(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer;)V

    return-void
.end method
