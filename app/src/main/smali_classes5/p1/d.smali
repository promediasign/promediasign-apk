.class public final synthetic Lp1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/music/MusicPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/music/MusicPlayerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/d;->a:Lsk/mimac/slideshow/music/MusicPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/d;->a:Lsk/mimac/slideshow/music/MusicPlayerImpl;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->a(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroid/media/MediaPlayer;)V

    return-void
.end method
