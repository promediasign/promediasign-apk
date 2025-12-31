.class public final synthetic LW0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;


# direct methods
.method public synthetic constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;I)V
    .locals 0

    .line 1
    iput p2, p0, LW0/b;->a:I

    iput-object p1, p0, LW0/b;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, LW0/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LW0/b;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->k(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LW0/b;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->b(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LW0/b;->b:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    invoke-static {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->h(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
