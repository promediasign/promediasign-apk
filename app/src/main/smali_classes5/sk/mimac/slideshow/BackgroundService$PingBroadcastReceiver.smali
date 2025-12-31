.class Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/BackgroundService;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/BackgroundService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/BackgroundService;Lsk/mimac/slideshow/BackgroundService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;-><init>(Lsk/mimac/slideshow/BackgroundService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "BackgroundService"

    const-string p2, "Received ping from app"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lsk/mimac/slideshow/BackgroundService$PingBroadcastReceiver;->this$0:Lsk/mimac/slideshow/BackgroundService;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lsk/mimac/slideshow/BackgroundService;->access$202(Lsk/mimac/slideshow/BackgroundService;J)J

    return-void
.end method
