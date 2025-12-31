.class public Lorg/h2/engine/Mode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MODES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Mode;",
            ">;"
        }
    .end annotation
.end field

.field static final REGULAR:Ljava/lang/String; = "REGULAR"


# instance fields
.field public aliasColumnName:Z

.field public allowAffinityKey:Z

.field public allowPlusForStringConcat:Z

.field public convertInsertNullToZero:Z

.field public convertOnlyToSmallerScale:Z

.field public indexDefinitionInCreateTable:Z

.field public isolationLevelInSelectOrInsertStatement:Z

.field public logIsLogBase10:Z

.field public lowerCaseIdentifiers:Z

.field private final name:Ljava/lang/String;

.field public nullConcatIsNull:Z

.field public onDuplicateKeyUpdate:Z

.field public prohibitEmptyInPredicate:Z

.field public serialColumnIsNotPK:Z

.field public squareBracketQuotedNames:Z

.field public supportOffsetFetch:Z

.field public supportPoundSymbolForColumnNames:Z

.field public supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

.field public swapConvertFunctionParameters:Z

.field public sysDummy1:Z

.field public systemColumns:Z

.field public treatEmptyStringsAsNull:Z

.field public uniqueIndexSingleNull:Z

.field public uniqueIndexSingleNullExceptAllColumnsAreNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/Mode;->MODES:Ljava/util/HashMap;

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "DB2"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->sysDummy1:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    const-string v2, "ApplicationName|ClientAccountingInformation|ClientUser|ClientCorrelationToken"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->prohibitEmptyInPredicate:Z

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "Derby"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->sysDummy1:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->isolationLevelInSelectOrInsertStatement:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v3, "HSQLDB"

    invoke-direct {v0, v3}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v3, "MSSQLServer"

    invoke-direct {v0, v3}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->squareBracketQuotedNames:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->allowPlusForStringConcat:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->swapConvertFunctionParameters:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportPoundSymbolForColumnNames:Z

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "MySQL"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->convertInsertNullToZero:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->indexDefinitionInCreateTable:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->lowerCaseIdentifiers:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->onDuplicateKeyUpdate:Z

    const-string v2, ".*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->prohibitEmptyInPredicate:Z

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "Oracle"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->convertOnlyToSmallerScale:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNullExceptAllColumnsAreNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->treatEmptyStringsAsNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportPoundSymbolForColumnNames:Z

    const-string v2, ".*\\..*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->prohibitEmptyInPredicate:Z

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "PostgreSQL"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->aliasColumnName:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->systemColumns:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->logIsLogBase10:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->serialColumnIsNotPK:Z

    const-string v2, "ApplicationName"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, v0, Lorg/h2/engine/Mode;->supportedClientInfoPropertiesRegEx:Ljava/util/regex/Pattern;

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->prohibitEmptyInPredicate:Z

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    new-instance v0, Lorg/h2/engine/Mode;

    const-string v2, "Ignite"

    invoke-direct {v0, v2}, Lorg/h2/engine/Mode;-><init>(Ljava/lang/String;)V

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->nullConcatIsNull:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->allowAffinityKey:Z

    iput-boolean v1, v0, Lorg/h2/engine/Mode;->indexDefinitionInCreateTable:Z

    invoke-static {v0}, Lorg/h2/engine/Mode;->add(Lorg/h2/engine/Mode;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/Mode;->supportOffsetFetch:Z

    iput-object p1, p0, Lorg/h2/engine/Mode;->name:Ljava/lang/String;

    return-void
.end method

.method private static add(Lorg/h2/engine/Mode;)V
    .locals 2

    sget-object v0, Lorg/h2/engine/Mode;->MODES:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/engine/Mode;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;
    .locals 1

    sget-object v0, Lorg/h2/engine/Mode;->MODES:Ljava/util/HashMap;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/engine/Mode;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
