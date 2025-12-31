.class public final Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;,
        Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)Lorg/apache/poi/xssf/streaming/SXSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 22
    .line 23
    check-cast v3, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 24
    .line 25
    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->areAllRowsFlushed()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;

    .line 33
    .line 34
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$SheetsFlushedException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lorg/apache/poi/ss/usermodel/Sheet;

    .line 53
    .line 54
    move-object v3, v2

    .line 55
    check-cast v3, Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    .line 56
    .line 57
    invoke-virtual {v3}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getLastFlushedRowNum()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, -0x1

    .line 62
    if-le v3, v4, :cond_4

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    sget-object v4, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->logger:Lorg/apache/poi/util/POILogger;

    .line 67
    .line 68
    const-string v5, "Rows up to "

    .line 69
    .line 70
    const-string v6, " have already been flushed, skipping"

    .line 71
    .line 72
    invoke-static {v3, v5, v6}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/4 v5, 0x1

    .line 77
    new-array v5, v5, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v3, v5, v0

    .line 80
    .line 81
    const/4 v3, 0x3

    .line 82
    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    new-instance p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator$RowFlushedException;-><init>(I)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lorg/apache/poi/ss/usermodel/Row;

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Lorg/apache/poi/ss/usermodel/Cell;

    .line 123
    .line 124
    invoke-interface {v4}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    sget-object v6, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    .line 129
    .line 130
    if-ne v5, v6, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    return-void
.end method


# virtual methods
.method public evaluateAll()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Z)V

    return-void
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object p1
.end method

.method public toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type of cell: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Only SXSSFCells can be evaluated."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
