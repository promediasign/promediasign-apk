.class public abstract Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_CUSTOM_ICA:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_CROP:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_DETECT:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_ENHANCE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_SHADOW_REMOVAL:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_STAIN_REMOVAL:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_DOCSCAN_UI:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_FACE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_ICA:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_IMAGE_CAPTION:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_IMAGE_QUALITY_AESTHETIC:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_IMAGE_QUALITY_TECHNICAL:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_LANGID:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_MLKIT_BARCODE_UI:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_NLCLASSIFIER:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_CHINESE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_COMMON:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_DEVANAGARI:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_JAPANESE:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_OCR_KOREAN:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_SMART_REPLY:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_SUBJECT_SEGMENTATION:Lcom/google/android/gms/common/Feature;

.field public static final FEATURE_TFLITE_DYNAMITE:Lcom/google/android/gms/common/Feature;

.field private static final zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzat;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "vision.barcode"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_BARCODE:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "vision.custom.ica"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_CUSTOM_ICA:Lcom/google/android/gms/common/Feature;

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v5, "vision.face"

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_FACE:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "vision.ica"

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_ICA:Lcom/google/android/gms/common/Feature;

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v7, "vision.ocr"

    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.ocr.chinese"

    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_CHINESE:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.ocr.common"

    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_COMMON:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.ocr.devanagari"

    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_DEVANAGARI:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.ocr.japanese"

    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_JAPANESE:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.ocr.korean"

    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR_KOREAN:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "mlkit.langid"

    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_LANGID:Lcom/google/android/gms/common/Feature;

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v9, "mlkit.nlclassifier"

    invoke-direct {v8, v9, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_NLCLASSIFIER:Lcom/google/android/gms/common/Feature;

    new-instance v9, Lcom/google/android/gms/common/Feature;

    const-string v10, "tflite_dynamite"

    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v9, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_TFLITE_DYNAMITE:Lcom/google/android/gms/common/Feature;

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v12, "mlkit.barcode.ui"

    invoke-direct {v11, v12, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v11, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_MLKIT_BARCODE_UI:Lcom/google/android/gms/common/Feature;

    new-instance v12, Lcom/google/android/gms/common/Feature;

    const-string v13, "mlkit.smartreply"

    invoke-direct {v12, v13, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v12, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_SMART_REPLY:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.image.caption"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_IMAGE_CAPTION:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.docscan.detect"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_DETECT:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.docscan.crop"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_CROP:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.docscan.enhance"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_ENHANCE:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.docscan.ui"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_UI:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.docscan.stain"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_STAIN_REMOVAL:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.docscan.shadow"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_DOCSCAN_SHADOW_REMOVAL:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.quality.aesthetic"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_IMAGE_QUALITY_AESTHETIC:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.quality.technical"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_IMAGE_QUALITY_TECHNICAL:Lcom/google/android/gms/common/Feature;

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v14, "mlkit.segmentation.subject"

    invoke-direct {v13, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v13, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_SUBJECT_SEGMENTATION:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const-string v3, "barcode"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "custom_ica"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "face"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "ica"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "ocr"

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "langid"

    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "nlclassifier"

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "barcode_ui"

    invoke-virtual {v2, v3, v11}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v3, "smart_reply"

    invoke-virtual {v2, v3, v12}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzat;

    move-result-object v2

    sput-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const-string v3, "com.google.android.gms.vision.barcode"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.vision.custom.ica"

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.vision.face"

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.vision.ica"

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.vision.ocr"

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.mlkit.langid"

    invoke-virtual {v2, v0, v7}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.mlkit.nlclassifier"

    invoke-virtual {v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.tflite_dynamite"

    invoke-virtual {v2, v0, v9}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    const-string v0, "com.google.android.gms.mlkit_smartreply"

    invoke-virtual {v2, v0, v12}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzat;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzat;

    return-void
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0xd33d260

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza:Lcom/google/android/gms/internal/mlkit_common/zzat;

    invoke-static {v0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->zza(Ljava/util/Map;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.vision.DEPENDENCY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.vision.DEPENDENCIES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "requester_app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestDownload(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;->newBuilder()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/zzo;

    invoke-direct {v1, p1}, Lcom/google/mlkit/common/sdkinternal/zzo;-><init>([Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->addApi(Lcom/google/android/gms/common/api/OptionalModuleApi;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest$Builder;->build()Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;

    move-result-object p1

    invoke-static {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstall;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;->installModules(Lcom/google/android/gms/common/moduleinstall/ModuleInstallRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Lcom/google/mlkit/common/sdkinternal/zzp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/util/List;)[Lcom/google/android/gms/common/Feature;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/Feature;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
