.class public final synthetic LW0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;FI)V
    .locals 0

    .line 1
    iput p3, p0, LW0/a;->a:I

    iput-object p1, p0, LW0/a;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iput p2, p0, LW0/a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, LW0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LW0/a;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget v1, p0, LW0/a;->c:F

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->f(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V

    return-void

    :pswitch_0
    iget-object v0, p0, LW0/a;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget v1, p0, LW0/a;->c:F

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->g(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V

    return-void

    :pswitch_1
    iget-object v0, p0, LW0/a;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    iget v1, p0, LW0/a;->c:F

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->a(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
