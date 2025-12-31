.class public final enum Lnet/lingala/zip4j/headers/HeaderSignature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/headers/HeaderSignature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/4 v1, 0x0

    const-wide/32 v2, 0x4034b50

    const-string v4, "LOCAL_FILE_HEADER"

    invoke-direct {v0, v4, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v2, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v3, "EXTRA_DATA_RECORD"

    const/4 v4, 0x1

    const-wide/32 v5, 0x8074b50

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v3, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/4 v7, 0x2

    const-wide/32 v8, 0x2014b50    # 1.6619997E-316

    const-string v10, "CENTRAL_DIRECTORY"

    invoke-direct {v3, v10, v7, v8, v9}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v8, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/4 v9, 0x3

    const-wide/32 v10, 0x6054b50

    const-string v12, "END_OF_CENTRAL_DIRECTORY"

    invoke-direct {v8, v12, v9, v10, v11}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v10, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/4 v11, 0x4

    const-wide/32 v12, 0x30304b50

    const-string v14, "TEMPORARY_SPANNING_MARKER"

    invoke-direct {v10, v14, v11, v12, v13}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v12, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/4 v13, 0x5

    const-wide/32 v14, 0x5054b50

    const-string v11, "DIGITAL_SIGNATURE"

    invoke-direct {v12, v11, v13, v14, v15}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v11, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/4 v14, 0x6

    move-object/from16 v16, v10

    const-wide/32 v9, 0x8064b50

    const-string v15, "ARCEXTDATREC"

    invoke-direct {v11, v15, v14, v9, v10}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lnet/lingala/zip4j/headers/HeaderSignature;->ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v9, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v10, "SPLIT_ZIP"

    const/4 v15, 0x7

    invoke-direct {v9, v10, v15, v5, v6}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v5, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/16 v6, 0x8

    const-wide/32 v14, 0x7064b50

    const-string v10, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    invoke-direct {v5, v10, v6, v14, v15}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v10, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/16 v14, 0x9

    const-wide/32 v6, 0x6064b50

    const-string v15, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    invoke-direct {v10, v15, v14, v6, v7}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v6, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/16 v7, 0xa

    const-wide/16 v14, 0x1

    const-string v13, "ZIP64_EXTRA_FIELD_SIGNATURE"

    invoke-direct {v6, v13, v7, v14, v15}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    new-instance v13, Lnet/lingala/zip4j/headers/HeaderSignature;

    const/16 v14, 0xb

    move-object v15, v8

    const-wide/32 v7, 0x9901

    const-string v4, "AES_EXTRA_DATA_RECORD"

    invoke-direct {v13, v4, v14, v7, v8}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v13, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    const/16 v4, 0xc

    new-array v4, v4, [Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v15, v4, v0

    const/4 v0, 0x4

    aput-object v16, v4, v0

    const/4 v0, 0x5

    aput-object v12, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v9, v4, v0

    const/16 v0, 0x8

    aput-object v5, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v6, v4, v0

    aput-object v13, v4, v14

    sput-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->$VALUES:[Lnet/lingala/zip4j/headers/HeaderSignature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1

    const-class v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object p0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1

    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->$VALUES:[Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/HeaderSignature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    return-wide v0
.end method
