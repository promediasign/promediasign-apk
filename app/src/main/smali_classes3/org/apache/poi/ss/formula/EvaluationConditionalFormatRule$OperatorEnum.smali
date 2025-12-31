.class public abstract enum Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "OperatorEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum BETWEEN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum GREATER_OR_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum GREATER_THAN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum LESS_OR_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum LESS_THAN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum NOT_BETWEEN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum NOT_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

.field public static final enum NO_COMPARISON:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$1;

    const-string v1, "NO_COMPARISON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->NO_COMPARISON:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$2;

    const-string v3, "BETWEEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->BETWEEN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$3;

    const-string v5, "NOT_BETWEEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->NOT_BETWEEN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v5, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$4;

    const-string v7, "EQUAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v7, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$5;

    const-string v9, "NOT_EQUAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->NOT_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v9, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$6;

    const-string v11, "GREATER_THAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->GREATER_THAN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v11, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$7;

    const-string v13, "LESS_THAN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->LESS_THAN:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v13, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$8;

    const-string v15, "GREATER_OR_EQUAL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->GREATER_OR_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    new-instance v15, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$9;

    const-string v14, "LESS_OR_EQUAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum$9;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->LESS_OR_EQUAL:Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    const/16 v14, 0x9

    new-array v14, v14, [Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->$VALUES:[Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->$VALUES:[Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule$OperatorEnum;

    return-object v0
.end method


# virtual methods
.method public abstract isValid(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "TC;>;>(TC;TC;TC;)Z"
        }
    .end annotation
.end method
