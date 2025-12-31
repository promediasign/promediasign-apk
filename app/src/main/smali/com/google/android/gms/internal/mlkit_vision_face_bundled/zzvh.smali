.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzy()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzt()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)V

    throw v1
.end method

.method public zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzI()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-object v0
.end method

.method public bridge synthetic zzp()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzo()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzs()V

    :cond_0
    return-void
.end method

.method public zzs()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzy()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    return-void
.end method

.method public final zzt()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzH(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;Z)Z

    move-result v0

    return v0
.end method
