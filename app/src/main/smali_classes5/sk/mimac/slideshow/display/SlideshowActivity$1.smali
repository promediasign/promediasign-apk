.class Lsk/mimac/slideshow/display/SlideshowActivity$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/display/SlideshowActivity;->setScreenRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/display/SlideshowActivity;

.field final synthetic val$value:Lsk/mimac/slideshow/enums/ScreenOrientation;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/display/SlideshowActivity;Lsk/mimac/slideshow/enums/ScreenOrientation;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/display/SlideshowActivity$1;->this$0:Lsk/mimac/slideshow/display/SlideshowActivity;

    iput-object p2, p0, Lsk/mimac/slideshow/display/SlideshowActivity$1;->val$value:Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "content insert --uri content://settings/system --bind name:s:accelerometer_rotation --bind value:i:0;content insert --uri content://settings/system --bind name:s:user_rotation --bind value:i:"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/display/SlideshowActivity$1;->val$value:Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v2, Lsk/mimac/slideshow/enums/ScreenOrientation;->ROTATE_0:Lsk/mimac/slideshow/enums/ScreenOrientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Can\'t set screen orientation, result={}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/display/SlideshowActivity;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Can\'t set screen orientation"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method
