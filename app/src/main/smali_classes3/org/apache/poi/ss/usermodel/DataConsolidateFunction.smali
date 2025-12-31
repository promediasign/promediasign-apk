.class public final enum Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

.field public static final enum VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v1, "Average"

    const-string v2, "AVERAGE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->AVERAGE:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v2, "COUNT"

    const/4 v5, 0x2

    const-string v6, "Count"

    invoke-direct {v1, v2, v4, v5, v6}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v7, "COUNT_NUMS"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v5, v8, v6}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->COUNT_NUMS:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v6, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v7, "Max"

    const-string v9, "MAX"

    const/4 v10, 0x4

    invoke-direct {v6, v9, v8, v10, v7}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MAX:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v7, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v9, "Min"

    const-string v11, "MIN"

    const/4 v12, 0x5

    invoke-direct {v7, v11, v10, v12, v9}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->MIN:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v9, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v11, "Product"

    const-string v13, "PRODUCT"

    const/4 v14, 0x6

    invoke-direct {v9, v13, v12, v14, v11}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->PRODUCT:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v11, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v13, "StdDev"

    const-string v15, "STD_DEV"

    const/4 v12, 0x7

    invoke-direct {v11, v15, v14, v12, v13}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEV:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v13, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v15, "StdDevp"

    const-string v14, "STD_DEVP"

    const/16 v10, 0x8

    invoke-direct {v13, v14, v12, v10, v15}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->STD_DEVP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v14, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v15, "Sum"

    const-string v12, "SUM"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v10, v8, v15}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->SUM:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v12, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const-string v15, "Var"

    const-string v10, "VAR"

    const/16 v5, 0xa

    invoke-direct {v12, v10, v8, v5, v15}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VAR:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-instance v10, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    const/16 v15, 0xb

    const-string v8, "Varp"

    const-string v4, "VARP"

    invoke-direct {v10, v4, v5, v15, v8}, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->VARP:Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    new-array v4, v15, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v14, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    aput-object v10, v4, v5

    sput-object v4, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->$VALUES:[Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/usermodel/DataConsolidateFunction;->value:I

    return v0
.end method
