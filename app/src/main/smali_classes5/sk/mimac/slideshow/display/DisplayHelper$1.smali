.class Lsk/mimac/slideshow/display/DisplayHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/display/DisplayHelper;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/display/DisplayHelper;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/display/DisplayHelper;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/display/DisplayHelper$1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/display/DisplayHelper$1;->lambda$onDrawerOpened$0(I)V

    return-void
.end method

.method private synthetic lambda$onDrawerOpened$0(I)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->access$100(Lsk/mimac/slideshow/display/DisplayHelper;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->hideAndroidNavigation()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lsk/mimac/slideshow/display/DisplayHelper;->access$002(Lsk/mimac/slideshow/display/DisplayHelper;J)J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lsk/mimac/slideshow/R$id;->left_drawer:I

    const v1, 0x800005

    const v2, 0x800003

    if-ne p1, v0, :cond_0

    const p1, 0x800003

    goto :goto_0

    :cond_0
    const p1, 0x800005

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    new-instance v3, Lsk/mimac/slideshow/display/a;

    invoke-direct {v3, p0, p1}, Lsk/mimac/slideshow/display/a;-><init>(Lsk/mimac/slideshow/display/DisplayHelper$1;I)V

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/display/DisplayHelper;->checkPasswordIfNecessary(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->access$100(Lsk/mimac/slideshow/display/DisplayHelper;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->access$200(Lsk/mimac/slideshow/display/DisplayHelper;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->access$300(Lsk/mimac/slideshow/display/DisplayHelper;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->access$400(Lsk/mimac/slideshow/display/DisplayHelper;)V

    iget-object p1, p0, Lsk/mimac/slideshow/display/DisplayHelper$1;->this$0:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-static {p1}, Lsk/mimac/slideshow/display/DisplayHelper;->access$500(Lsk/mimac/slideshow/display/DisplayHelper;)Lsk/mimac/slideshow/display/DisplayInterface;

    move-result-object p1

    sget v0, Lsk/mimac/slideshow/R$id;->control_play:I

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/display/DisplayInterface;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
