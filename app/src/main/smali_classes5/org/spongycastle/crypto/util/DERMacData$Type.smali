.class public final enum Lorg/spongycastle/crypto/util/DERMacData$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/spongycastle/crypto/util/DERMacData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/spongycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALU:Lorg/spongycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALV:Lorg/spongycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALU:Lorg/spongycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALV:Lorg/spongycastle/crypto/util/DERMacData$Type;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/spongycastle/crypto/util/DERMacData$Type;

    const/4 v1, 0x0

    const-string v2, "KC_1_U"

    const-string v3, "UNILATERALU"

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/spongycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/spongycastle/crypto/util/DERMacData$Type;

    new-instance v2, Lorg/spongycastle/crypto/util/DERMacData$Type;

    const/4 v3, 0x1

    const-string v4, "KC_1_V"

    const-string v5, "UNILATERALV"

    invoke-direct {v2, v5, v3, v4}, Lorg/spongycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/spongycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/spongycastle/crypto/util/DERMacData$Type;

    new-instance v4, Lorg/spongycastle/crypto/util/DERMacData$Type;

    const/4 v5, 0x2

    const-string v6, "KC_2_U"

    const-string v7, "BILATERALU"

    invoke-direct {v4, v7, v5, v6}, Lorg/spongycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/spongycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/spongycastle/crypto/util/DERMacData$Type;

    new-instance v6, Lorg/spongycastle/crypto/util/DERMacData$Type;

    const/4 v7, 0x3

    const-string v8, "KC_2_V"

    const-string v9, "BILATERALV"

    invoke-direct {v6, v9, v7, v8}, Lorg/spongycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/spongycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/spongycastle/crypto/util/DERMacData$Type;

    const/4 v8, 0x4

    new-array v8, v8, [Lorg/spongycastle/crypto/util/DERMacData$Type;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lorg/spongycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/spongycastle/crypto/util/DERMacData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/spongycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/spongycastle/crypto/util/DERMacData$Type;
    .locals 1

    const-class v0, Lorg/spongycastle/crypto/util/DERMacData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/util/DERMacData$Type;

    return-object p0
.end method

.method public static values()[Lorg/spongycastle/crypto/util/DERMacData$Type;
    .locals 1

    sget-object v0, Lorg/spongycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/spongycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, [Lorg/spongycastle/crypto/util/DERMacData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/spongycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method
