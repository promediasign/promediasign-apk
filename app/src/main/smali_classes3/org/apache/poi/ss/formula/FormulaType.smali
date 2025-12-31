.class public final enum Lorg/apache/poi/ss/formula/FormulaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/FormulaType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum CELL:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum CONDFORMAT:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

.field public static final enum SHARED:Lorg/apache/poi/ss/formula/FormulaType;


# instance fields
.field private final isSingleValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v1, "CELL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    new-instance v1, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v4, "SHARED"

    invoke-direct {v1, v4, v3, v3}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lorg/apache/poi/ss/formula/FormulaType;->SHARED:Lorg/apache/poi/ss/formula/FormulaType;

    new-instance v4, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v5, "ARRAY"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    new-instance v5, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v7, "CONDFORMAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lorg/apache/poi/ss/formula/FormulaType;->CONDFORMAT:Lorg/apache/poi/ss/formula/FormulaType;

    new-instance v7, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v9, "NAMEDRANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    new-instance v9, Lorg/apache/poi/ss/formula/FormulaType;

    const-string v11, "DATAVALIDATION_LIST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lorg/apache/poi/ss/formula/FormulaType;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lorg/apache/poi/ss/formula/FormulaType;->DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/poi/ss/formula/FormulaType;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/apache/poi/ss/formula/FormulaType;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue:Z

    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/ss/formula/FormulaType;
    .locals 2

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/poi/ss/formula/FormulaType;->values()[Lorg/apache/poi/ss/formula/FormulaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    if-ge p0, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lorg/apache/poi/ss/formula/FormulaType;->values()[Lorg/apache/poi/ss/formula/FormulaType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aget-object p0, v0, p0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Invalid FormulaType code: "

    .line 20
    .line 21
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/FormulaType;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/FormulaType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/FormulaType;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->$VALUES:[Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/FormulaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/FormulaType;

    return-object v0
.end method


# virtual methods
.method public isSingleValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue:Z

    return v0
.end method
