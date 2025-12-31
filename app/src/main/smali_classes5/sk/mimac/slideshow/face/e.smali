.class public final synthetic Lsk/mimac/slideshow/face/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/face/e;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/face/e;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    invoke-static {v0}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->c(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;)V

    return-void
.end method
