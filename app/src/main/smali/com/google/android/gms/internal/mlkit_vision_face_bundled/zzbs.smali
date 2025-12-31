.class final Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzc:I

    return-void
.end method

.method public static zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbk;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;
    .locals 1

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    aget-object v0, p1, p2

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbc;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzc:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v2, v3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzc:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbf;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzc:I

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbr;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbr;-><init>([Ljava/lang/Object;II)V

    return-object v1
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbm;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzb:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;[Ljava/lang/Object;II)V

    return-object v2
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbm;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzc:I

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbr;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbs;->zzb:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbr;-><init>([Ljava/lang/Object;II)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbl;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzbj;)V

    return-object v0
.end method
