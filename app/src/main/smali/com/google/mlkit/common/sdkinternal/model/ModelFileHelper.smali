.class public Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/String;

.field public static final zzb:Ljava/lang/String;

.field static final zzc:Ljava/lang/String;

.field private static final zzd:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelFileHelper"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->zzd:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "com.google.mlkit.translate.models"

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->zza:Ljava/lang/String;

    const-string v0, "com.google.mlkit.custom.models"

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->zzb:Ljava/lang/String;

    const-string v0, "com.google.mlkit.base.models"

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->zzc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;->zze:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method
