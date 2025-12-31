.class public final synthetic Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;->a:Landroid/webkit/WebView;

    invoke-static {v2, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
