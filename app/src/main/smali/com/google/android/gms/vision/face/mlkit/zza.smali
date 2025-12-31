.class final Lcom/google/android/gms/vision/face/mlkit/zza;
.super Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztm;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

.field private final zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

.field private final zzf:Lcom/google/android/gms/vision/face/mlkit/zzb;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "FaceDetector"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;Lcom/google/android/gms/vision/face/mlkit/zzb;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztm;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    iput-object p1, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzc()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    move-result-object v1

    const-string v2, "models"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaj;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzai;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzt;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzs;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzao;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zzb(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzar;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzan;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzg(Z)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzf()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zza()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzf(F)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzh(Z)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    if-eqz v0, :cond_2

    const/4 p2, 0x4

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zze()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzd()I

    move-result v0

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzj(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;->zzb()I

    move-result p2

    if-eq p2, v3, :cond_8

    if-eq p2, v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;->zzi(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzag;

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    iput-object p2, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    iput-object p3, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iput-object p4, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzf:Lcom/google/android/gms/vision/face/mlkit/zzb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzj;->zza(Landroid/content/Context;)V

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;)Ljava/util/List;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;->zzc()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzh;->zze()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;

    iget-object v4, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzk()I

    move-result v4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-ne v4, v8, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzn()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x73ae198e

    if-eq v5, v6, :cond_2

    const v6, -0x6d89eac3

    if-eq v5, v6, :cond_1

    const v6, 0x19bd4

    if-eq v5, v6, :cond_0

    goto :goto_2

    :cond_0
    const-string v5, "joy"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_1
    const-string v5, "right_eye_closed"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_3

    :cond_2
    const-string v5, "left_eye_closed"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, -0x1

    :goto_3
    if-eqz v5, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v5, v9, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zzb()F

    move-result v5

    sub-float v12, v6, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zzb()F

    move-result v5

    sub-float v11, v6, v5

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzys;->zzb()F

    move-result v13

    goto :goto_1

    :cond_7
    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    goto :goto_4

    :cond_8
    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, -0x40800000    # -1.0f

    const/high16 v24, -0x40800000    # -1.0f

    :goto_4
    iget-object v4, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzl()I

    move-result v4

    const/4 v13, 0x7

    const/16 v14, 0x8

    const-string v15, "FaceDetector"

    const/4 v5, 0x4

    const/16 v6, 0x9

    if-ne v4, v8, :cond_e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzo()Ljava/util/List;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzg()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    if-eqz v8, :cond_b

    if-eq v8, v9, :cond_a

    if-eq v8, v6, :cond_9

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    sget-object v6, Lcom/google/android/gms/vision/face/mlkit/zza;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown landmark type: "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v15, v8}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    goto :goto_6

    :pswitch_0
    const/16 v6, 0x8

    goto :goto_6

    :pswitch_1
    const/4 v6, 0x2

    goto :goto_6

    :pswitch_2
    const/16 v6, 0x9

    goto :goto_6

    :pswitch_3
    const/4 v6, 0x3

    goto :goto_6

    :pswitch_4
    const/4 v6, 0x7

    goto :goto_6

    :pswitch_5
    const/4 v6, 0x1

    goto :goto_6

    :pswitch_6
    const/16 v6, 0xb

    goto :goto_6

    :pswitch_7
    const/4 v6, 0x5

    goto :goto_6

    :pswitch_8
    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    const/4 v6, 0x6

    goto :goto_6

    :cond_a
    const/16 v6, 0xa

    goto :goto_6

    :cond_b
    const/4 v6, 0x4

    :goto_6
    if-ltz v6, :cond_c

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztr;

    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzb()F

    move-result v11

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzzd;->zzd()F

    move-result v12

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v8, v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztr;-><init>(ILandroid/graphics/PointF;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/16 v6, 0x9

    const/4 v8, 0x3

    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    move-object v4, v7

    goto :goto_7

    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    iget-object v6, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;->zzl()I

    move-result v6

    if-ne v6, v5, :cond_12

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzas;->zza:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvl;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvj;->zzd(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzuw;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzd()I

    move-result v9

    add-int/2addr v9, v10

    packed-switch v9, :pswitch_data_2

    sget-object v11, Lcom/google/android/gms/vision/face/mlkit/zza;->zza:Lcom/google/android/gms/common/internal/GmsLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v5, "Unknown contour type: "

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v15, v5}, Lcom/google/android/gms/common/internal/GmsLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    goto :goto_9

    :pswitch_9
    const/16 v5, 0xf

    goto :goto_9

    :pswitch_a
    const/16 v5, 0xe

    goto :goto_9

    :pswitch_b
    const/16 v5, 0xd

    goto :goto_9

    :pswitch_c
    const/16 v5, 0xc

    goto :goto_9

    :pswitch_d
    const/16 v5, 0xb

    goto :goto_9

    :pswitch_e
    const/16 v5, 0xa

    goto :goto_9

    :pswitch_f
    const/16 v5, 0x9

    goto :goto_9

    :pswitch_10
    const/16 v5, 0x8

    goto :goto_9

    :pswitch_11
    const/4 v5, 0x7

    goto :goto_9

    :pswitch_12
    const/4 v5, 0x6

    goto :goto_9

    :pswitch_13
    const/4 v5, 0x5

    goto :goto_9

    :pswitch_14
    const/4 v5, 0x4

    goto :goto_9

    :pswitch_15
    const/4 v5, 0x3

    goto :goto_9

    :pswitch_16
    const/4 v5, 0x2

    goto :goto_9

    :pswitch_17
    const/4 v5, 0x1

    :goto_9
    if-eq v5, v10, :cond_10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzad;->zzc()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;

    new-instance v12, Landroid/graphics/PointF;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;->zza()F

    move-result v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzz;->zzb()F

    move-result v11

    invoke-direct {v12, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, -0x1

    goto :goto_a

    :cond_f
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztg;

    invoke-direct {v8, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztg;-><init>(ILjava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    const/4 v10, -0x1

    goto/16 :goto_8

    :cond_10
    const/4 v5, 0x4

    goto/16 :goto_8

    :cond_11
    move-object/from16 v27, v7

    goto :goto_b

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v5

    :goto_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzk()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzj()J

    move-result-wide v7

    long-to-int v8, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzb()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zze()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzd()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzyu;->zzg()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v7, v9, v10, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzh()F

    move-result v19

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzg()F

    move-result v20

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzi()F

    move-result v21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zzJ()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzze;->zze()F

    move-result v3

    move/from16 v25, v3

    goto :goto_c

    :cond_13
    const/high16 v25, -0x40800000    # -1.0f

    :goto_c
    move-object/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v26, v4

    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zztk;-><init>(ILandroid/graphics/Rect;FFFFFFFLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    return-object v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xee
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private static zzf(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Unsupported rotation degree: "

    .line 16
    .line 17
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    return v0

    .line 26
    :cond_2
    const/4 p0, 0x4

    .line 27
    return p0

    .line 28
    :cond_3
    return v0
.end method

.method private final zzg(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;I)Ljava/util/List;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzc()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/vision/face/mlkit/zza;->zzf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-lez p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzd(JLjava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzb(J[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    new-array p3, p3, [B

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzb(J[BLcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/face/mlkit/zza;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;)Ljava/util/List;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzb()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v9, 0x2

    if-eq v4, v5, :cond_7

    const/16 v5, 0x11

    if-eq v4, v5, :cond_6

    const/16 v5, 0x23

    if-eq v4, v5, :cond_1

    const v5, 0x32315659

    if-ne v4, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    const/4 v5, 0x7

    invoke-direct {v0, v4, v3, v5}, Lcom/google/android/gms/vision/face/mlkit/zza;->zzg(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;I)Ljava/util/List;

    move-result-object v4

    :goto_0
    move-object v10, v4

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzb()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported image format "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at API "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v4, 0x639f

    move-wide v6, v7

    move-wide v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zzc(IIJJ)V

    invoke-static {v1}, Lcom/google/android/gms/vision/face/mlkit/zze;->zza(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v10, v4, v5

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    aget-object v10, v4, v6

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    aget-object v10, v4, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;->zza()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzd()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzc(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zza()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zzc()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/vision/face/mlkit/zza;->zzf(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide v11

    const-wide/16 v17, 0x0

    cmp-long v13, v11, v17

    if-lez v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;->zze()J

    move-result-wide v11

    const-wide/16 v17, 0x3e8

    mul-long v11, v11, v17

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzo;

    :cond_2
    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvh;->zzn()Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzvn;

    move-result-object v10

    move-object/from16 v29, v10

    check-cast v29, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v11, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v12, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    aget-object v10, v4, v5

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    aget-object v10, v4, v6

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v10, v4, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v20

    aget-object v5, v4, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v21

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    move-object/from16 v23, v29

    invoke-virtual/range {v11 .. v23}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zze(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v11, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    aget-object v13, v4, v5

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v23

    aget-object v13, v4, v6

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v24

    aget-object v13, v4, v9

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v25

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v26

    aget-object v5, v4, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v27

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v28

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    invoke-virtual/range {v17 .. v29}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzc(J[B[B[BIIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v14}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    new-array v10, v10, [B

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    new-array v11, v11, [B

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v16}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    new-array v12, v12, [B

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-wide v14, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    aget-object v16, v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v23

    aget-object v16, v4, v6

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v24

    aget-object v16, v4, v9

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v25

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v26

    aget-object v5, v4, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v27

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v28

    move-object/from16 v17, v13

    move-wide/from16 v18, v14

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-virtual/range {v17 .. v29}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzc(J[B[B[BIIIIIILcom/google/android/gms/internal/mlkit_vision_face_bundled/zzp;)Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    invoke-direct {v0, v4}, Lcom/google/android/gms/vision/face/mlkit/zza;->zze(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzaf;)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    :goto_2
    invoke-direct {v0, v4, v3, v9}, Lcom/google/android/gms/vision/face/mlkit/zza;->zzg(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;I)Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzd;->zza(Landroid/graphics/Bitmap;Z)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_2

    :goto_3
    iget-object v4, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzf:Lcom/google/android/gms/vision/face/mlkit/zzb;

    iget-object v5, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, p2

    move-object v4, v10

    move-wide v5, v11

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/vision/face/mlkit/zzb;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzte;Ljava/util/List;J)V

    iget-object v3, v0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzg:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v4, 0x639f

    move-wide v6, v7

    move-wide v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzsv;->zzc(IIJJ)V

    return-object v10
.end method

.method public final zzc()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zza(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzah;Landroid/content/res/AssetManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzf:Lcom/google/android/gms/vision/face/mlkit/zzb;

    iget-object v1, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzc:Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/face/mlkit/zzb;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face_bundled/zzti;)V

    return-void
.end method

.method public final zzd()V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zze:Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/vision/face/FaceDetectorV2Jni;->zzf(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/vision/face/mlkit/zza;->zzh:J

    :cond_0
    return-void
.end method
