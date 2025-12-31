.class public final synthetic Lsk/mimac/slideshow/face/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

.field public final synthetic b:Landroid/media/Image;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;Landroid/media/Image;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/face/b;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    iput-object p2, p0, Lsk/mimac/slideshow/face/b;->b:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/face/b;->b:Landroid/media/Image;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lsk/mimac/slideshow/face/b;->a:Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;

    invoke-static {v1, v0, p1}, Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;->d(Lsk/mimac/slideshow/face/FaceDetectionService$CameraStateCallback;Landroid/media/Image;Ljava/util/List;)V

    return-void
.end method
