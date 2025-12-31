.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Landroid/graphics/Rect;

.field private final zzc:F

.field private final zzd:F

.field private final zze:F

.field private final zzf:F

.field private final zzg:F

.field private final zzh:F

.field private final zzi:F

.field private final zzj:Ljava/util/List;

.field private final zzk:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;FFFFFFFLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzb:Landroid/graphics/Rect;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzc:F

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzd:F

    iput p5, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zze:F

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzf:F

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzg:F

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzh:F

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzi:F

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzj:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzk:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzb:Landroid/graphics/Rect;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzc:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 p2, 0x4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzd:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 p2, 0x5

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zze:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 p2, 0x6

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzf:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 p2, 0x7

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzg:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0x8

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzh:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0x9

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzi:F

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzj:Ljava/util/List;

    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0xb

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;->zzk:Ljava/util/List;

    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
