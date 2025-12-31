.class public final synthetic Lsk/mimac/slideshow/face/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/face/d;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/face/d;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->a(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
