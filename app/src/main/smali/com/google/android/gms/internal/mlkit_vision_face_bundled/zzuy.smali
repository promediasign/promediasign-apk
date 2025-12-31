.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;


# instance fields
.field private final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzux;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzux;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zzd:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzux;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    const v2, 0xc0b2142

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzux;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuy;->zzd:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
