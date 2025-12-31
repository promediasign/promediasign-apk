.class public Lsk/mimac/slideshow/osc/OscService$AllMessageSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/MessageSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/osc/OscService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllMessageSelector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInfoRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matches(Lcom/illposed/osc/OSCMessageEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
