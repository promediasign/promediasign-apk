.class public final enum Lcom/google/android/gms/internal/mlkit_common/zznq;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zznq;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/mlkit_common/zznq;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zznq;

    const-string v1, "SOURCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zznq;->zza:Lcom/google/android/gms/internal/mlkit_common/zznq;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zznq;

    const-string v3, "APP_ASSET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzb:Lcom/google/android/gms/internal/mlkit_common/zznq;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zznq;

    const-string v5, "LOCAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzc:Lcom/google/android/gms/internal/mlkit_common/zznq;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zznq;

    const-string v7, "CLOUD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzd:Lcom/google/android/gms/internal/mlkit_common/zznq;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zznq;

    const-string v9, "SDK_BUILT_IN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/mlkit_common/zznq;->zze:Lcom/google/android/gms/internal/mlkit_common/zznq;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zznq;

    const-string v11, "URI"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzf:Lcom/google/android/gms/internal/mlkit_common/zznq;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/mlkit_common/zznq;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzg:[Lcom/google/android/gms/internal/mlkit_common/zznq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zznq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zznq;->zzg:[Lcom/google/android/gms/internal/mlkit_common/zznq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zznq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zznq;

    return-object v0
.end method
