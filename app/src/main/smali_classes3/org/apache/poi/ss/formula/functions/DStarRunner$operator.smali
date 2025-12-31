.class final enum Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/DStarRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

.field public static final enum smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v1, "largerThan"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    new-instance v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v3, "largerEqualThan"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    new-instance v3, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v5, "smallerThan"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    new-instance v5, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v7, "smallerEqualThan"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    new-instance v7, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const-string v9, "equal"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    return-object v0
.end method
