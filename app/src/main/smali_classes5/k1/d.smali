.class public final synthetic Lk1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/PlaylistPanel;

.field public final synthetic b:Lsk/mimac/slideshow/database/entity/PanelItem;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/PlaylistPanel;Lsk/mimac/slideshow/database/entity/PanelItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/d;->a:Lsk/mimac/slideshow/gui/PlaylistPanel;

    iput-object p2, p0, Lk1/d;->b:Lsk/mimac/slideshow/database/entity/PanelItem;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk1/d;->a:Lsk/mimac/slideshow/gui/PlaylistPanel;

    iget-object v1, p0, Lk1/d;->b:Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-static {v0, v1, p1, p2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->c(Lsk/mimac/slideshow/gui/PlaylistPanel;Lsk/mimac/slideshow/database/entity/PanelItem;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
