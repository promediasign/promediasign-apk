.class public final synthetic Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lp1/c;->a:I

    iput-object p1, p0, Lp1/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp1/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget v0, p0, Lp1/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    iget-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v1, Lsk/mimac/slideshow/utils/Consumer;

    invoke-static {v0, v1, p1, p2, p3}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->b(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;

    iget-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2, p3}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->b(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;

    iget-object v1, p0, Lp1/c;->c:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2, p3}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->d(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
