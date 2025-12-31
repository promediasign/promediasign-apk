.class Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/BackgroundService;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/BackgroundService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/BackgroundService;Lsk/mimac/slideshow/BackgroundService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;-><init>(Lsk/mimac/slideshow/BackgroundService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "/slideshow/crash_logcat_2.txt"

    const-string v1, "logcat -d -t 5000 -f "

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-static {v4}, Lsk/mimac/slideshow/BackgroundService;->access$200(Lsk/mimac/slideshow/BackgroundService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide v6, 0x2098a67800L

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/slideshow/last_start.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Last contact was "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-static {v6}, Lsk/mimac/slideshow/BackgroundService;->access$200(Lsk/mimac/slideshow/BackgroundService;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds ago, lastStartFileExists="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", restarting app"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackgroundService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/Shell;->process(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Can\'t get logcat"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lsk/mimac/slideshow/BackgroundService;->access$202(Lsk/mimac/slideshow/BackgroundService;J)J

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;->this$0:Lsk/mimac/slideshow/BackgroundService;

    const-class v2, Lsk/mimac/slideshow/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lsk/mimac/slideshow/BackgroundService$CheckTimerTask;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
