.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbh;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbb;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
