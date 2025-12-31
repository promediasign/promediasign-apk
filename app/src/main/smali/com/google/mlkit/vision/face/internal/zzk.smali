.class public final synthetic Lcom/google/mlkit/vision/face/internal/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/face/internal/zzk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zzk;

    invoke-direct {v0}, Lcom/google/mlkit/vision/face/internal/zzk;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/face/internal/zzk;->zza:Lcom/google/mlkit/vision/face/internal/zzk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/mlkit/vision/face/internal/zze;

    const-class v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/face/internal/zze;-><init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V

    return-object v0
.end method
