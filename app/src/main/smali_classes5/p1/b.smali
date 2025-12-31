.class public final synthetic Lp1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsk/mimac/slideshow/music/ExoPlayerWrapper;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp1/b;->a:I

    iput-object p1, p0, Lp1/b;->b:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp1/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp1/b;->b:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {v0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->b(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lp1/b;->b:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {v0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->c(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lp1/b;->b:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {v0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->a(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
