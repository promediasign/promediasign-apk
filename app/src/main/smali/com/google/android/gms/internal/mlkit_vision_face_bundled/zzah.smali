.class public final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzwt;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;


# instance fields
.field private zzd:I

.field private zze:F

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:F

.field private zzl:F

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzF(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzh:I

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzk:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzl:F

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzv()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zze:F

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzj:Z

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzm:Z

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzn:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzo:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzp:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzi:Z

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    return-void
.end method

.method public static synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzd:I

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
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzr;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzal;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    aput-object p2, p1, p3

    const-string p2, "zzh"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzap;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvr;

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "zzi"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string p2, "zzk"

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string p2, "zzl"

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string p2, "zzm"

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string p2, "zzn"

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string p2, "zzo"

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string p2, "zzp"

    const/16 p3, 0xf

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1001\u0006\u0008\u1001\u0007\t\u1007\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;->zzC(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzws;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzw;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public final zzl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzam;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method
