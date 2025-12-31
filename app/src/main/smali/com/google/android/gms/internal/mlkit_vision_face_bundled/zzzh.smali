.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

.field private zze:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zze:B

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzA()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-void
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    return-object v0
.end method


# virtual methods
.method public final zze()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvs;

    return-object v0
.end method

.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zze:B

    return-object v2

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzg;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzf;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zze:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
