.class public Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final format:Ljava/lang/String;

.field private final idx:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->idx:I

    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->format:Ljava/lang/String;

    return-void
.end method

.method public static from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getConditionalFormattingForCell(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getNumberFormat()Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static from(Lorg/apache/poi/ss/usermodel/CellStyle;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;
    .locals 2

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getIdx()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->idx:I

    return v0
.end method
