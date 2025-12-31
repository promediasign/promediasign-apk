.class public enum Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/DataValidationEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ValidationEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum ANY:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum DATE:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum DECIMAL:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum FORMULA:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum INTEGER:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum LIST:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum TEXT_LENGTH:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

.field public static final enum TIME:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$1;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->ANY:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v1, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$2;

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->INTEGER:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v3, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const-string v5, "DECIMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->DECIMAL:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v5, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;

    const-string v7, "LIST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$3;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->LIST:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v7, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const-string v9, "DATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->DATE:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v9, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const-string v11, "TIME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->TIME:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v11, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$4;

    const-string v13, "TEXT_LENGTH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$4;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->TEXT_LENGTH:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    new-instance v13, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$5;

    const-string v15, "FORMULA"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum$5;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->FORMULA:Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    const/16 v15, 0x8

    new-array v15, v15, [Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->$VALUES:[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/poi/ss/formula/DataValidationEvaluator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private evalOrConstant(Ljava/lang/String;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/lang/Double;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getTarget()Lorg/apache/poi/ss/util/CellReference;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    instance-of v1, p2, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    check-cast p2, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 45
    .line 46
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-interface {p2, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :cond_1
    instance-of v1, p2, Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    instance-of v1, p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    check-cast p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 64
    .line 65
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_3
    instance-of v1, p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    check-cast p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 79
    .line 80
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_5
    :goto_0
    return-object v0

    .line 103
    :cond_6
    new-instance p2, Ljava/lang/NumberFormatException;

    .line 104
    .line 105
    const-string v0, "Formula \'"

    .line 106
    .line 107
    const-string v1, "\' evaluates to something other than a number"

    .line 108
    .line 109
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p2, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p2

    .line 117
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static isValid(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->values()[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->$VALUES:[Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;

    return-object v0
.end method


# virtual methods
.method public isValidNumericCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidNumericValue(Ljava/lang/Double;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result p1

    return p1
.end method

.method public isValidNumericValue(Ljava/lang/Double;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getFormula1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->evalOrConstant(Ljava/lang/String;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getOperator()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getOperator()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getFormula2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->evalOrConstant(Ljava/lang/String;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-static {}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;->values()[Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getOperator()I

    move-result p2

    aget-object p2, v2, p2

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;->isValid(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValidValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValidNumericCell(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result p1

    return p1
.end method
