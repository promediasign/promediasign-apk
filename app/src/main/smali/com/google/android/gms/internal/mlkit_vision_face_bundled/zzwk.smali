.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxg;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwj;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvg;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvg;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwj;-><init>([Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvt;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxf;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzr(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    move-result-object v0

    :goto_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzww;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwy;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwg;->zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwg;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    move-result-object v5

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    move-result-object v6

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwo;->zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwn;

    move-result-object v7

    :goto_2
    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwv;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwy;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwg;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwn;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwv;

    move-result-object p1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwk;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwp;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwz;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwy;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwg;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwg;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxh;->zzm()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzxw;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvb;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuz;

    move-result-object v6

    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwo;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwn;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :goto_4
    return-object p1
.end method
