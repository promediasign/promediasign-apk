.class public Lorg/apache/poi/hssf/dev/FormulaViewer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private file:Ljava/lang/String;

.field private list:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    return-void
.end method

.method private static composeFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private formulaString(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    const/16 v6, 0x40

    if-eq v4, v6, :cond_0

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/FormulaViewer;->throwInvalidRVAToken(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_2

    :cond_0
    const-string v3, "(A)"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v3, "(V)"

    goto :goto_1

    :cond_2
    const-string v3, "(R)"

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private listFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 11

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v4, v2, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v5

    const-string v6, "REF"

    const-string v7, "ARRAY"

    const/16 v8, 0x40

    const/16 v9, 0x20

    const-string v10, "VALUE"

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/FormulaViewer;->throwInvalidRVAToken(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-le v0, v2, :cond_6

    add-int/lit8 v0, v0, -0x2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_5

    invoke-static {p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->throwInvalidRVAToken(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v1, p0, v0

    const-string v2, "--listFunctions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/poi/hssf/dev/FormulaViewer;

    invoke-direct {v0}, Lorg/apache/poi/hssf/dev/FormulaViewer;-><init>()V

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setFile(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setList(Z)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/FormulaViewer;->run()V

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/dev/FormulaViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;-><init>()V

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setFile(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->run()V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "FormulaViewer .8 proof that the devil lies in the details (or just in BIFF8 files in general)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "usage: Give me a big fat file name"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static throwInvalidRVAToken(Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid RVA type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "). This should never happen."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parseFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=============================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "row = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", col = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getColumn()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xf = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CellRecord;->getXFIndex()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", number of ptgs = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", options = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RPN List = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->formulaString(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Formula text = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->composeFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 6

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->file:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/dev/FormulaViewer;->listFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    check-cast v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/dev/FormulaViewer;->parseFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->file:Ljava/lang/String;

    return-void
.end method

.method public setList(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    return-void
.end method
