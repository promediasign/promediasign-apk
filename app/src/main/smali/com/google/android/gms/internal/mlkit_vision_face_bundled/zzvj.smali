.class public abstract Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuw;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvd;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzb:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;->zzh:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;

    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzym;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;->zzh:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyn;

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :cond_2
    move-object v0, v2

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
