.class public final synthetic Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lh/a;->a:I

    iput-object p1, p0, Lh/a;->c:Ljava/lang/Object;

    iput p2, p0, Lh/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lh/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lh/a;->c:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    iget v1, p0, Lh/a;->b:I

    invoke-static {v0, v1}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->d(Lsk/mimac/slideshow/music/ExoPlayerWrapper;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lh/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget v1, p0, Lh/a;->b:I

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
