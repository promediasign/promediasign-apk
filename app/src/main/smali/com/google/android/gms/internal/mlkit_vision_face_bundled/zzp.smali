.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Z

.field private zzj:J

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzv()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zze:I

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzj:J

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzf:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 p2, 0x1

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzn;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzm;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u1007\u0004\u0006\u1002\u0005\u0007\u1008\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
