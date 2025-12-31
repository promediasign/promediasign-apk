.class public final Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final header:Lorg/apache/poi/hssf/record/CFHeaderBase;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/CFRuleBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    array-length v2, p2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    sget-object v2, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Excel versions before 2007 require that No more than 3 rules may be specified, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p2

    const-string v5, " were found, this file will cause problems with old Excel versions"

    .line 1
    invoke-static {v5, v4, v3}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 2
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    array-length v2, p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v3

    if-ne v2, v3, :cond_2

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    new-instance p1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p2, v0

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/apache/poi/util/RecordFormatException;

    const-string p2, "Mismatch number of rules"

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rules must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 0

    .line 6
    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->createHeader([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-void
.end method

.method private checkRuleIndex(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Bad rule record index ("

    .line 15
    .line 16
    const-string v2, ") nRules="

    .line 17
    .line 18
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method private checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    instance-of v0, v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    if-eqz v0, :cond_1

    instance-of p1, p1, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header and Rule must both be CF or both be CF12, can\'t mix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createCFAggregate(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x1b0

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x879

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "next record sid was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instead of 432 or 2169 as expected"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast v0, Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getNumberOfConditionalFormats()I

    move-result v1

    new-array v2, v1, [Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/CFRuleBase;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object p0
.end method

.method private static createHeader([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleBase;)Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeader12Record;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/record/CFHeader12Record;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    :goto_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setNeedRecalculation(Z)V

    return-object v0
.end method

.method private static shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 10

    new-instance v9, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    aget-object p0, v0, v1

    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p1

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected shifted ptg class ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Excel versions before 2007 cannot cope with any more than 3 - this file will cause problems with old Excel versions"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setNumberOfConditionalFormats(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/CFRuleBase;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/CFRuleBase;->clone()Lorg/apache/poi/hssf/record/CFRuleBase;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFHeaderBase;->clone()Lorg/apache/poi/hssf/record/CFHeaderBase;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderBase;[Lorg/apache/poi/hssf/record/CFRuleBase;)V

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    return-object v0
.end method

.method public getNumberOfRules()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/record/CFRuleBase;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/CFRuleBase;

    return-object p1
.end method

.method public setRule(ILorg/apache/poi/hssf/record/CFRuleBase;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleType(Lorg/apache/poi/hssf/record/CFRuleBase;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "r must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 9
    .line 10
    instance-of v1, v1, Lorg/apache/poi/hssf/record/CFHeader12Record;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "CF12"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "CF"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "]\n"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lorg/apache/poi/hssf/record/CFRuleBase;

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string v3, "[/"

    .line 57
    .line 58
    invoke-static {v0, v3, v1, v2}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)Z
    .locals 9

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v0, v4

    invoke-static {p1, v7, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v8, v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CFRuleBase;->setParsedExpression1([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    :cond_6
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CFRuleBase;->setParsedExpression2([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    :cond_7
    instance-of v2, v1, Lorg/apache/poi/hssf/record/CFRule12Record;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/apache/poi/hssf/record/CFRule12Record;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getParsedExpressionScale()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/CFRule12Record;->setParsedExpressionScale([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_3

    :cond_8
    return v6
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderBase;

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CFRuleBase;

    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0

    :cond_0
    return-void
.end method
