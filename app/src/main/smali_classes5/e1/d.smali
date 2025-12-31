.class public final synthetic Le1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Le1/d;->a:I

    iput-object p1, p0, Le1/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Le1/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le1/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->c(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Le1/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Le1/d;->b:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-static {v0}, Lsk/mimac/slideshow/ApiServiceImpl;->g(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
