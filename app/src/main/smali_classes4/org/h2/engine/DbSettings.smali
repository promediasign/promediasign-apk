.class public Lorg/h2/engine/DbSettings;
.super Lorg/h2/engine/SettingsBase;
.source "SourceFile"


# static fields
.field private static defaultSettings:Lorg/h2/engine/DbSettings;


# instance fields
.field public final aliasColumnName:Z

.field public final analyzeAuto:I

.field public final analyzeSample:I

.field public final compressData:Z

.field public final databaseToUpper:Z

.field public final dbCloseOnExit:Z

.field public defaultConnection:Z

.field public final defaultEscape:Ljava/lang/String;

.field public final defaultTableEngine:Ljava/lang/String;

.field public final defragAlways:Z

.field public final dropRestrict:Z

.field public final earlyFilter:Z

.field public final estimatedFunctionTableRows:I

.field public final functionsInSchema:Z

.field public final largeTransactions:Z

.field public final lobTimeout:I

.field public final maxCompactCount:I

.field public final maxCompactTime:I

.field public maxQueryTimeout:I

.field public final multiThreaded:Z

.field public mvStore:Z

.field public final nestedJoins:Z

.field public final optimizeDistinct:Z

.field public final optimizeEvaluatableSubqueries:Z

.field public final optimizeInList:Z

.field public final optimizeInSelect:Z

.field public final optimizeInsertFromSelect:Z

.field public final optimizeIsNull:Z

.field public final optimizeOr:Z

.field public final optimizeTwoEquals:Z

.field public final optimizeUpdate:Z

.field public final pageStoreInternalCount:Z

.field public final pageStoreMaxGrowth:I

.field public final pageStoreTrim:Z

.field public final queryCacheSize:I

.field public final recompileAlways:Z

.field public final reconnectCheckDelay:I

.field public final reuseSpace:Z

.field public final rowId:Z

.field public final selectForUpdateMvcc:Z

.field public final shareLinkedConnections:Z


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/h2/engine/SettingsBase;-><init>(Ljava/util/HashMap;)V

    const-string p1, "ALIAS_COLUMN_NAME"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->aliasColumnName:Z

    const-string p1, "ANALYZE_AUTO"

    const/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->analyzeAuto:I

    const-string p1, "ANALYZE_SAMPLE"

    const/16 v1, 0x2710

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->analyzeSample:I

    const-string p1, "DATABASE_TO_UPPER"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    const-string p1, "DB_CLOSE_ON_EXIT"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->dbCloseOnExit:Z

    const-string p1, "DEFAULT_CONNECTION"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->defaultConnection:Z

    const-string p1, "DEFAULT_ESCAPE"

    const-string v2, "\\"

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/DbSettings;->defaultEscape:Ljava/lang/String;

    const-string p1, "DEFRAG_ALWAYS"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->defragAlways:Z

    const-string p1, "DROP_RESTRICT"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->dropRestrict:Z

    const-string p1, "EARLY_FILTER"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->earlyFilter:Z

    const-string p1, "ESTIMATED_FUNCTION_TABLE_ROWS"

    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->estimatedFunctionTableRows:I

    const-string p1, "FUNCTIONS_IN_SCHEMA"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->functionsInSchema:Z

    const-string p1, "LARGE_TRANSACTIONS"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->largeTransactions:Z

    const-string p1, "LOB_TIMEOUT"

    const v2, 0x493e0

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->lobTimeout:I

    const-string p1, "MAX_COMPACT_COUNT"

    const v2, 0x7fffffff

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->maxCompactCount:I

    const-string p1, "MAX_COMPACT_TIME"

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->maxCompactTime:I

    const-string p1, "MAX_QUERY_TIMEOUT"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->maxQueryTimeout:I

    const-string p1, "NESTED_JOINS"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->nestedJoins:Z

    const-string p1, "OPTIMIZE_DISTINCT"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeDistinct:Z

    const-string p1, "OPTIMIZE_EVALUATABLE_SUBQUERIES"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeEvaluatableSubqueries:Z

    const-string p1, "OPTIMIZE_INSERT_FROM_SELECT"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeInsertFromSelect:Z

    const-string p1, "OPTIMIZE_IN_LIST"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeInList:Z

    const-string p1, "OPTIMIZE_IN_SELECT"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeInSelect:Z

    const-string p1, "OPTIMIZE_IS_NULL"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeIsNull:Z

    const-string p1, "OPTIMIZE_OR"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeOr:Z

    const-string p1, "OPTIMIZE_TWO_EQUALS"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeTwoEquals:Z

    const-string p1, "OPTIMIZE_UPDATE"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->optimizeUpdate:Z

    const-string p1, "PAGE_STORE_MAX_GROWTH"

    const/high16 v3, 0x20000

    invoke-virtual {p0, p1, v3}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->pageStoreMaxGrowth:I

    const-string p1, "PAGE_STORE_INTERNAL_COUNT"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->pageStoreInternalCount:Z

    const-string p1, "PAGE_STORE_TRIM"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->pageStoreTrim:Z

    const-string p1, "QUERY_CACHE_SIZE"

    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->queryCacheSize:I

    const-string p1, "RECOMPILE_ALWAYS"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->recompileAlways:Z

    const-string p1, "RECONNECT_CHECK_DELAY"

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/h2/engine/DbSettings;->reconnectCheckDelay:I

    const-string p1, "REUSE_SPACE"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->reuseSpace:Z

    const-string p1, "ROWID"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->rowId:Z

    const-string p1, "SELECT_FOR_UPDATE_MVCC"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->selectForUpdateMvcc:Z

    const-string p1, "SHARE_LINKED_CONNECTIONS"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->shareLinkedConnections:Z

    const-string p1, "DEFAULT_TABLE_ENGINE"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/DbSettings;->defaultTableEngine:Ljava/lang/String;

    const-string p1, "MV_STORE"

    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->mvStore:Z

    const-string p1, "COMPRESS"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->compressData:Z

    const-string p1, "MULTI_THREADED"

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/SettingsBase;->get(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/engine/DbSettings;->multiThreaded:Z

    return-void
.end method

.method public static getDefaultSettings()Lorg/h2/engine/DbSettings;
    .locals 2

    sget-object v0, Lorg/h2/engine/DbSettings;->defaultSettings:Lorg/h2/engine/DbSettings;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/engine/DbSettings;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/h2/engine/DbSettings;-><init>(Ljava/util/HashMap;)V

    sput-object v0, Lorg/h2/engine/DbSettings;->defaultSettings:Lorg/h2/engine/DbSettings;

    :cond_0
    sget-object v0, Lorg/h2/engine/DbSettings;->defaultSettings:Lorg/h2/engine/DbSettings;

    return-object v0
.end method

.method public static getInstance(Ljava/util/HashMap;)Lorg/h2/engine/DbSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/h2/engine/DbSettings;"
        }
    .end annotation

    new-instance v0, Lorg/h2/engine/DbSettings;

    invoke-direct {v0, p0}, Lorg/h2/engine/DbSettings;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method
