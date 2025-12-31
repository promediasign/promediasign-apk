.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztp;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.mlkit.vision.face.aidls.IFaceDetectorCreator"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.mlkit.vision.face.aidls.IFaceDetectorCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztq;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztq;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzto;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzto;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzc;->zzb(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztq;->newFaceDetector(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztn;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :goto_1
    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
