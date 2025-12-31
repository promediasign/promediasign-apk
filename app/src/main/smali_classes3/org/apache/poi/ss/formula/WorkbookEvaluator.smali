.class public final Lorg/apache/poi/ss/formula/WorkbookEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final EVAL_LOG:Lorg/apache/poi/util/POILogger;

.field private _cache:Lorg/apache/poi/ss/formula/EvaluationCache;

.field private _collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

.field private final _evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

.field private _ignoreMissingWorkbooks:Z

.field private final _sheetIndexesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheetIndexesBySheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/EvaluationSheet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

.field private final _udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

.field private _workbookIx:I

.field private dbgEvaluationOutputForNextEval:Z

.field private dbgEvaluationOutputIndent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "POI.FormulaEval"

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    sget-object p2, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    iput-object p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p1, p4}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->add(Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IEvaluationListener;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method private addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;
    .locals 8

    const-string v0, "Error evaluating cell "

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v3

    new-instance p2, Lorg/apache/poi/ss/util/CellReference;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    invoke-direct {p3, p2, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p2

    sget-object p3, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "Can\'t add exception info"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    const/4 v0, 0x1

    aput-object p2, p4, v0

    const/4 p2, 0x7

    invoke-virtual {p3, p2, p4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object p1
.end method

.method private static countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I
    .locals 2

    move v0, p1

    :goto_0
    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    sub-int/2addr p2, v1

    if-ltz p2, :cond_1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Skip distance too far (ran out of formula tokens)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bad skip distance (wrong token size calculation)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sub-int/2addr v0, p1

    return v0
.end method

.method public static dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, p1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    .line 3
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    invoke-static {p1, v0, p4, v5, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    new-instance p3, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v7

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v8, p2}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    invoke-virtual {p4}, Lorg/apache/poi/ss/formula/FormulaType;->isSingleValue()Z

    move-result v9

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sheet name is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    move/from16 v12, p4

    .line 10
    .line 11
    move-object/from16 v13, p5

    .line 12
    .line 13
    const-string v14, "Unexpected cell type \'"

    .line 14
    .line 15
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_stabilityClassifier:Lorg/apache/poi/ss/formula/IStabilityClassifier;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0, v10, v11, v12}, Lorg/apache/poi/ss/formula/IStabilityClassifier;->isCellFinal(III)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    if-eqz v9, :cond_2

    .line 30
    .line 31
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    .line 36
    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    :cond_2
    move v4, v11

    .line 40
    goto/16 :goto_8

    .line 41
    .line 42
    :cond_3
    iget-object v1, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    .line 43
    .line 44
    invoke-virtual {v1, v9}, Lorg/apache/poi/ss/formula/EvaluationCache;->getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->isInputSensitive()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    :cond_4
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptFormulaDependency(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 57
    .line 58
    .line 59
    :cond_5
    iget-object v0, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    .line 60
    .line 61
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_f

    .line 66
    .line 67
    invoke-virtual {v13, v7}, Lorg/apache/poi/ss/formula/EvaluationTracker;->startEvaluate(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_6

    .line 72
    .line 73
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_6
    new-instance v6, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 77
    .line 78
    iget-object v3, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 79
    .line 80
    move-object v1, v6

    .line 81
    move-object/from16 v2, p0

    .line 82
    .line 83
    move/from16 v4, p2

    .line 84
    .line 85
    move/from16 v5, p3

    .line 86
    .line 87
    move-object v15, v6

    .line 88
    move/from16 v6, p4

    .line 89
    .line 90
    move-object v11, v7

    .line 91
    move-object/from16 v7, p5

    .line 92
    .line 93
    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    iget-object v1, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 97
    .line 98
    invoke-interface {v1, v9}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v0, :cond_7

    .line 103
    .line 104
    invoke-virtual {v8, v15, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    move-object v1, v11

    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_4

    .line 115
    :catch_1
    move-exception v0

    .line 116
    move/from16 v4, p3

    .line 117
    .line 118
    move-object v1, v11

    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_7
    invoke-interface {v0, v9, v11}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onStartEvaluate(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v15, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v0, v11, v1}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onEndEvaluate(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 129
    .line 130
    .line 131
    move-object v0, v1

    .line 132
    :goto_2
    invoke-virtual {v13, v0}, Lorg/apache/poi/ss/formula/EvaluationTracker;->updateCacheResult(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/NotImplementedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-virtual {v13, v11}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :goto_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    instance-of v1, v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    .line 145
    .line 146
    if-eqz v1, :cond_e

    .line 147
    .line 148
    iget-boolean v1, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    .line 149
    .line 150
    if-eqz v1, :cond_e

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, " - Continuing with cached value!"

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logInfo(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    .line 181
    .line 182
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    aget v0, v0, v1

    .line 191
    .line 192
    const/4 v1, 0x1

    .line 193
    if-eq v0, v1, :cond_c

    .line 194
    .line 195
    const/4 v1, 0x2

    .line 196
    if-eq v0, v1, :cond_b

    .line 197
    .line 198
    const/4 v1, 0x3

    .line 199
    if-eq v0, v1, :cond_a

    .line 200
    .line 201
    const/4 v1, 0x4

    .line 202
    if-eq v0, v1, :cond_9

    .line 203
    .line 204
    const/4 v1, 0x5

    .line 205
    if-ne v0, v1, :cond_8

    .line 206
    .line 207
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    goto :goto_3

    .line 216
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v2, "\' found!"

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto :goto_3

    .line 252
    :cond_a
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_b
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 256
    .line 257
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_c
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 267
    .line 268
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :goto_5
    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_d

    .line 282
    .line 283
    invoke-virtual {v8, v10}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    .line 288
    .line 289
    move/from16 v4, p3

    .line 290
    .line 291
    invoke-direct {v2, v4, v12}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 292
    .line 293
    .line 294
    const-string v3, "Evaluated "

    .line 295
    .line 296
    const-string v4, "!"

    .line 297
    .line 298
    invoke-static {v3, v1, v4}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v2, " to "

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->logDebug(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :cond_d
    return-object v0

    .line 325
    :cond_e
    move-object v1, v11

    .line 326
    :try_start_2
    throw v0

    .line 327
    :catchall_1
    move-exception v0

    .line 328
    goto :goto_7

    .line 329
    :goto_6
    invoke-direct {v8, v0, v10, v4, v12}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->addExceptionInfo(Lorg/apache/poi/ss/formula/eval/NotImplementedException;III)Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    :goto_7
    invoke-virtual {v13, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;->endEvaluate(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_f
    move-object v1, v7

    .line 339
    move v4, v11

    .line 340
    if-eqz v0, :cond_10

    .line 341
    .line 342
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-interface {v0, v10, v4, v12, v2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 347
    .line 348
    .line 349
    :cond_10
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    return-object v0

    .line 354
    :goto_8
    invoke-static/range {p1 .. p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    if-eqz v0, :cond_11

    .line 359
    .line 360
    iget v2, v8, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    .line 361
    .line 362
    move-object/from16 v1, p5

    .line 363
    .line 364
    move/from16 v3, p2

    .line 365
    .line 366
    move/from16 v4, p3

    .line 367
    .line 368
    move/from16 v5, p4

    .line 369
    .line 370
    move-object v6, v7

    .line 371
    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/EvaluationTracker;->acceptPlainValueDependency(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 372
    .line 373
    .line 374
    :cond_11
    return-object v7
.end method

.method private getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t now how to evalate name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_3

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_4

    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    if-eqz v0, :cond_5

    new-instance p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->getValue()Z

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;

    if-eqz v0, :cond_8

    sget-object p1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    return-object p1

    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    if-nez v0, :cond_12

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_b
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_d

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_d
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_e
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_f

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/UnknownPtg;

    if-nez p2, :cond_11

    instance-of p2, p1, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz p2, :cond_10

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ExpPtg currently not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected ptg class ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UnknownPtg not allowed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getNotSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Specified sheet from a different book"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->getSupportedFunctionNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    return-object p0

    :cond_4
    new-instance v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method private static isDebugLogEnabled()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static isInfoLogEnabled()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    return v0
.end method

.method private static logDebug(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->isInfoLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private processNameEval(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->getName()Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForNameRecord(Lorg/apache/poi/ss/formula/EvaluationName;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V

    return-void
.end method


# virtual methods
.method public adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;II)Z
    .locals 9

    .line 1
    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p1, v1

    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    iget-object v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isRowRelative()Z

    move-result v5

    const-string v6, " was requested."

    const-string v7, " files can only have "

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v5

    if-gt v2, v5, :cond_0

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " rows, but row "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->isColRelative()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result v5

    if-gt v2, v5, :cond_2

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setColumn(I)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxColumns()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " columns, but column "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return v2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset column must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset row must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z
    .locals 2

    .line 2
    invoke-virtual {p3, p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p2

    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->adjustRegionRelativeReference([Lorg/apache/poi/ss/formula/ptg/Ptg;II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not within "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iput p3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    return-void
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationCache;->clear()V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesBySheet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->clearAllCachedResultValues()V

    return-void
.end method

.method public detachFromEnvironment()V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    return-void
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    .line 1
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-nez p2, :cond_2

    const/4 v9, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    move v9, v2

    :goto_2
    if-nez p2, :cond_3

    const/4 v7, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    move v7, v1

    :goto_3
    new-instance p2, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v4

    new-instance v8, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v8, v1}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v2, p2

    move-object v3, p0

    move v5, v0

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v2, v0, v9}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v5

    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v6, v0}, Lorg/apache/poi/ss/formula/EvaluationTracker;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iput v3, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 9
    .line 10
    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    .line 11
    .line 12
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 13
    .line 14
    const-string v4, ""

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    const/16 v5, 0x64

    .line 19
    .line 20
    mul-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const-string v5, "                                                                                                    "

    .line 27
    .line 28
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v5, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    .line 33
    .line 34
    const-string v6, "- evaluateFormula(\'"

    .line 35
    .line 36
    invoke-static {v1, v6}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v7, "\'/"

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-direct {v7, v8, v9}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v7, "): "

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, "\\Qorg.apache.poi.ss.formula.ptg.\\E"

    .line 86
    .line 87
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-array v6, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    aput-object v4, v6, v2

    .line 101
    .line 102
    const/4 v4, 0x5

    .line 103
    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 107
    .line 108
    add-int/2addr v4, v3

    .line 109
    iput v4, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 110
    .line 111
    move-object v4, v1

    .line 112
    :cond_1
    new-instance v1, Ljava/util/Stack;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 115
    .line 116
    .line 117
    array-length v5, p2

    .line 118
    const/4 v6, 0x0

    .line 119
    :goto_0
    const-string v7, ": "

    .line 120
    .line 121
    const/4 v8, 0x3

    .line 122
    if-ge v6, v5, :cond_12

    .line 123
    .line 124
    aget-object v9, p2, v6

    .line 125
    .line 126
    iget v10, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 127
    .line 128
    if-lez v10, :cond_2

    .line 129
    .line 130
    iget-object v10, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    .line 131
    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v12, "  * ptg "

    .line 141
    .line 142
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v7, ", stack: "

    .line 155
    .line 156
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    new-array v11, v3, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v7, v11, v2

    .line 169
    .line 170
    invoke-virtual {v10, v8, v11}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 174
    .line 175
    if-eqz v7, :cond_9

    .line 176
    .line 177
    move-object v7, v9

    .line 178
    check-cast v7, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 179
    .line 180
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_3

    .line 185
    .line 186
    sget-object v9, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 187
    .line 188
    :cond_3
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-eqz v10, :cond_6

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    check-cast v8, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 199
    .line 200
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getJumpTable()[I

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    array-length v10, v9

    .line 205
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    invoke-static {v8, v11, v12}, Lorg/apache/poi/ss/formula/functions/Choose;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-lt v8, v3, :cond_5

    .line 218
    .line 219
    if-le v8, v10, :cond_4

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_4
    sub-int/2addr v8, v3

    .line 223
    aget v7, v9, v8

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :catch_0
    move-exception v8

    .line 227
    goto :goto_2

    .line 228
    :cond_5
    :goto_1
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 229
    .line 230
    invoke-virtual {v1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    .line 234
    .line 235
    .line 236
    move-result v7
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_3

    .line 238
    :goto_2
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getChooseFuncOffset()I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    :goto_3
    add-int/lit8 v7, v7, 0x4

    .line 250
    .line 251
    :goto_4
    mul-int/lit8 v10, v10, 0x2

    .line 252
    .line 253
    add-int/lit8 v10, v10, 0x2

    .line 254
    .line 255
    sub-int/2addr v7, v10

    .line 256
    :goto_5
    invoke-static {p2, v6, v7}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    add-int/2addr v6, v7

    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_6
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    .line 264
    .line 265
    .line 266
    move-result v10

    .line 267
    if-eqz v10, :cond_8

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    check-cast v8, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 274
    .line 275
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    invoke-static {v8, v9, v10}, Lorg/apache/poi/ss/formula/functions/IfFunc;->evaluateFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    .line 284
    .line 285
    .line 286
    move-result v8
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    if-eqz v8, :cond_7

    .line 288
    .line 289
    goto/16 :goto_8

    .line 290
    .line 291
    :cond_7
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    invoke-static {p2, v6, v7}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    add-int/2addr v6, v7

    .line 300
    add-int/lit8 v7, v6, 0x1

    .line 301
    .line 302
    aget-object v8, p2, v7

    .line 303
    .line 304
    aget-object v9, p2, v6

    .line 305
    .line 306
    instance-of v9, v9, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 307
    .line 308
    if-eqz v9, :cond_11

    .line 309
    .line 310
    instance-of v9, v8, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 311
    .line 312
    if-eqz v9, :cond_11

    .line 313
    .line 314
    check-cast v8, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    .line 315
    .line 316
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    if-ne v8, v3, :cond_11

    .line 321
    .line 322
    sget-object v6, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 323
    .line 324
    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move v6, v7

    .line 328
    goto/16 :goto_8

    .line 329
    .line 330
    :catch_1
    move-exception v8

    .line 331
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    invoke-virtual {v1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    invoke-static {p2, v6, v7}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    add-int/2addr v6, v7

    .line 347
    aget-object v7, p2, v6

    .line 348
    .line 349
    check-cast v7, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 350
    .line 351
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    add-int/2addr v7, v3

    .line 356
    goto :goto_5

    .line 357
    :cond_8
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    .line 358
    .line 359
    .line 360
    move-result v10

    .line 361
    if-eqz v10, :cond_9

    .line 362
    .line 363
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getData()S

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    add-int/2addr v7, v3

    .line 368
    invoke-static {p2, v6, v7}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->countTokensToBeSkipped([Lorg/apache/poi/ss/formula/ptg/Ptg;II)I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    add-int/2addr v6, v7

    .line 373
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    sget-object v8, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    .line 378
    .line 379
    if-ne v7, v8, :cond_11

    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    sget-object v7, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 385
    .line 386
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    goto/16 :goto_8

    .line 390
    .line 391
    :cond_9
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    .line 392
    .line 393
    if-eqz v7, :cond_a

    .line 394
    .line 395
    goto/16 :goto_8

    .line 396
    .line 397
    :cond_a
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    .line 398
    .line 399
    if-nez v7, :cond_11

    .line 400
    .line 401
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    .line 402
    .line 403
    if-eqz v7, :cond_b

    .line 404
    .line 405
    goto/16 :goto_8

    .line 406
    .line 407
    :cond_b
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    .line 408
    .line 409
    if-eqz v7, :cond_c

    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_c
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    .line 413
    .line 414
    if-eqz v7, :cond_d

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    check-cast v7, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    check-cast v8, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 427
    .line 428
    new-instance v9, Lorg/apache/poi/ss/formula/eval/RefListEval;

    .line 429
    .line 430
    invoke-direct {v9, v8, v7}, Lorg/apache/poi/ss/formula/eval/RefListEval;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_d
    instance-of v7, v9, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 438
    .line 439
    if-eqz v7, :cond_f

    .line 440
    .line 441
    check-cast v9, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 442
    .line 443
    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    .line 444
    .line 445
    .line 446
    move-result v7

    .line 447
    new-array v10, v7, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 448
    .line 449
    sub-int/2addr v7, v3

    .line 450
    :goto_6
    if-ltz v7, :cond_e

    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    check-cast v11, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 457
    .line 458
    aput-object v11, v10, v7

    .line 459
    .line 460
    add-int/2addr v7, v0

    .line 461
    goto :goto_6

    .line 462
    :cond_e
    invoke-static {v9, v10, p1}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    goto :goto_7

    .line 467
    :cond_f
    invoke-direct {p0, v9, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 468
    .line 469
    .line 470
    move-result-object v7

    .line 471
    :goto_7
    if-eqz v7, :cond_10

    .line 472
    .line 473
    invoke-virtual {v1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    iget v9, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 477
    .line 478
    if-lez v9, :cond_11

    .line 479
    .line 480
    iget-object v9, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    .line 481
    .line 482
    new-instance v10, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v11, "    = "

    .line 491
    .line 492
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    new-array v10, v3, [Ljava/lang/Object;

    .line 503
    .line 504
    aput-object v7, v10, v2

    .line 505
    .line 506
    invoke-virtual {v9, v8, v10}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 511
    .line 512
    const-string p2, "Evaluation result must not be null"

    .line 513
    .line 514
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    throw p1

    .line 518
    :cond_11
    :goto_8
    add-int/2addr v6, v3

    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_12
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    check-cast p2, Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-eqz v1, :cond_15

    .line 532
    .line 533
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->isSingleValue()Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-eqz v1, :cond_13

    .line 538
    .line 539
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    invoke-static {p2, v1, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    :cond_13
    iget v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 552
    .line 553
    if-lez v1, :cond_14

    .line 554
    .line 555
    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->EVAL_LOG:Lorg/apache/poi/util/POILogger;

    .line 556
    .line 557
    const-string v5, "finshed eval of "

    .line 558
    .line 559
    invoke-static {v4, v5}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    new-instance v5, Lorg/apache/poi/ss/util/CellReference;

    .line 564
    .line 565
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    .line 570
    .line 571
    .line 572
    move-result p1

    .line 573
    invoke-direct {v5, v6, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    new-array v4, v3, [Ljava/lang/Object;

    .line 594
    .line 595
    aput-object p1, v4, v2

    .line 596
    .line 597
    invoke-virtual {v1, v8, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    iget p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 601
    .line 602
    sub-int/2addr p1, v3

    .line 603
    iput p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 604
    .line 605
    if-ne p1, v3, :cond_14

    .line 606
    .line 607
    iput v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputIndent:I

    .line 608
    .line 609
    :cond_14
    return-object p2

    .line 610
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 611
    .line 612
    const-string p2, "evaluation stack not empty"

    .line 613
    .line 614
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    throw p1
.end method

.method public evaluateList(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->DATAVALIDATION_LIST:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/formula/FormulaType;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvalForPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateFormula(Lorg/apache/poi/ss/formula/OperationEvaluationContext;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    invoke-interface {p1, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateAny(Lorg/apache/poi/ss/formula/EvaluationCell;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_udfFinder:Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/udf/AggregatingUDFFinder;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object p1

    return-object p1
.end method

.method public getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-object v0
.end method

.method public getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    return-object v0
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    return-object p1
.end method

.method public getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_collaboratingWorkbookEnvironment:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p1

    return-object p1
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object p1

    return-object p1
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_sheetIndexesByName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method

.method public isDebugEvaluationOutputForNextEval()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    return v0
.end method

.method public isIgnoreMissingWorkbooks()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    return v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_cache:Lorg/apache/poi/ss/formula/EvaluationCache;

    iget v2, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_workbookIx:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/poi/ss/formula/EvaluationCache;->notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dbgEvaluationOutputForNextEval:Z

    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->_ignoreMissingWorkbooks:Z

    return-void
.end method
