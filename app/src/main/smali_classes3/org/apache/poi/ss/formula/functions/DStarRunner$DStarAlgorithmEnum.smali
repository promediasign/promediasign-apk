.class public final enum Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/DStarRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DStarAlgorithmEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DGET:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DMIN:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    const-string v1, "DGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DGET:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    const-string v3, "DMIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DMIN:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-object v0
.end method
