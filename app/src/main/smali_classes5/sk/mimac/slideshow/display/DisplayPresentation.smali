.class public Lsk/mimac/slideshow/display/DisplayPresentation;
.super Landroid/app/Presentation;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/display/DisplayInterface;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field public final displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/display/DisplayPresentation;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/display/DisplayPresentation;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    new-instance p1, Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-direct {p1, p0}, Lsk/mimac/slideshow/display/DisplayHelper;-><init>(Lsk/mimac/slideshow/display/DisplayInterface;)V

    iput-object p1, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/display/DisplayHelper;->setDisplayId(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public getDisplayHelper()Lsk/mimac/slideshow/display/DisplayHelper;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p1, Lsk/mimac/slideshow/R$layout;->main:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/display/DisplayHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Presentation;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/display/DisplayHelper;->onKeyUp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Presentation;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/display/DisplayPresentation;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Starting presentation on displayId={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Presentation;->onStart()V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->hideAndroidNavigation()V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->initializeViews()V

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/display/DisplayPresentation;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Stopping presentation on displayId={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/DisplayPresentation;->displayHelper:Lsk/mimac/slideshow/display/DisplayHelper;

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->onStop()V

    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    return-void
.end method
