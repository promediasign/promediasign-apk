.class public final enum Lorg/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const-string v1, "0.9"

    const-string v2, "JAVA_0_9"

    const/4 v3, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    const v2, 0x3f8ccccd    # 1.1f

    const-string v5, "1.1"

    const-string v6, "JAVA_1_1"

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7, v2, v5}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    const v5, 0x3f99999a    # 1.2f

    const-string v6, "1.2"

    const-string v8, "JAVA_1_2"

    const/4 v9, 0x2

    invoke-direct {v2, v8, v9, v5, v6}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    const v6, 0x3fa66666    # 1.3f

    const-string v8, "1.3"

    const-string v10, "JAVA_1_3"

    const/4 v11, 0x3

    invoke-direct {v5, v10, v11, v6, v8}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v6, Lorg/apache/commons/lang3/JavaVersion;

    const v8, 0x3fb33333    # 1.4f

    const-string v10, "1.4"

    const-string v12, "JAVA_1_4"

    const/4 v13, 0x4

    invoke-direct {v6, v12, v13, v8, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v8, Lorg/apache/commons/lang3/JavaVersion;

    const/4 v10, 0x5

    const-string v12, "1.5"

    const-string v14, "JAVA_1_5"

    invoke-direct {v8, v14, v10, v4, v12}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v4, Lorg/apache/commons/lang3/JavaVersion;

    const v12, 0x3fcccccd    # 1.6f

    const-string v14, "1.6"

    const-string v15, "JAVA_1_6"

    const/4 v10, 0x6

    invoke-direct {v4, v15, v10, v12, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v12, Lorg/apache/commons/lang3/JavaVersion;

    const v14, 0x3fd9999a    # 1.7f

    const-string v15, "1.7"

    const-string v10, "JAVA_1_7"

    const/4 v13, 0x7

    invoke-direct {v12, v10, v13, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v10, Lorg/apache/commons/lang3/JavaVersion;

    const v14, 0x3fe66666    # 1.8f

    const-string v15, "1.8"

    const-string v13, "JAVA_1_8"

    const/16 v11, 0x8

    invoke-direct {v10, v13, v11, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v13, Lorg/apache/commons/lang3/JavaVersion;

    const-string v14, "JAVA_1_9"

    const/16 v15, 0x9

    const/high16 v11, 0x41100000    # 9.0f

    const-string v9, "9"

    invoke-direct {v13, v14, v15, v11, v9}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v14, Lorg/apache/commons/lang3/JavaVersion;

    const-string v15, "JAVA_9"

    const/16 v7, 0xa

    invoke-direct {v14, v15, v7, v11, v9}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v14, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v9, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v11, 0x41200000    # 10.0f

    const-string v15, "10"

    const-string v7, "JAVA_10"

    const/16 v3, 0xb

    invoke-direct {v9, v7, v3, v11, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v7, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v11, 0x41300000    # 11.0f

    const-string v15, "11"

    const-string v3, "JAVA_11"

    move-object/from16 v16, v9

    const/16 v9, 0xc

    invoke-direct {v7, v3, v9, v11, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v3, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v11, 0x41400000    # 12.0f

    const-string v15, "12"

    const-string v9, "JAVA_12"

    move-object/from16 v17, v7

    const/16 v7, 0xd

    invoke-direct {v3, v9, v7, v11, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v9, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v11, 0x41500000    # 13.0f

    const-string v15, "13"

    const-string v7, "JAVA_13"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v9, v7, v3, v11, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    new-instance v7, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v11

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v15

    const-string v3, "JAVA_RECENT"

    move-object/from16 v19, v9

    const/16 v9, 0xf

    invoke-direct {v7, v3, v9, v11, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    const/16 v3, 0x10

    new-array v3, v3, [Lorg/apache/commons/lang3/JavaVersion;

    const/4 v11, 0x0

    aput-object v0, v3, v11

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v4, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v14, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    aput-object v7, v3, v9

    sput-object v3, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iput-object p4, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method private static maxVersion()F
    .locals 2

    const-string v0, "java.specification.version"

    const-string v1, "99.0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x42c60000    # 99.0f

    return v0
.end method

.method private static toFloatVersion(Ljava/lang/String;)F
    .locals 3

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    const-class v0, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/JavaVersion;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
