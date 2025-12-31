.class Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/display/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/display/SlideshowActivity;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/display/SlideshowActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;->this$0:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/display/SlideshowActivity;Lsk/mimac/slideshow/display/SlideshowActivity$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;-><init>(Lsk/mimac/slideshow/display/SlideshowActivity;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Display connected: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;->this$0:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$200(Lsk/mimac/slideshow/display/SlideshowActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;->this$0:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$300(Lsk/mimac/slideshow/display/SlideshowActivity;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-static {v0, p1}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$400(Lsk/mimac/slideshow/display/SlideshowActivity;Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Display changed: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Display removed: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity$DisplayChangeListener;->this$0:Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-static {v0}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$500(Lsk/mimac/slideshow/display/SlideshowActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/display/DisplayPresentation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
