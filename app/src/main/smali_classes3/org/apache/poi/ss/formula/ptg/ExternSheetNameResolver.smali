.class final Lorg/apache/poi/ss/formula/ptg/ExternSheetNameResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static prependSheetName(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuffer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {v2, p0, p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_0
    instance-of p0, v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz p0, :cond_3

    check-cast v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getFirstSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetFirstNameByExternSheet(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;->getSheetLastNameByExternSheet(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x1

    if-ge p1, v3, :cond_2

    const-string p0, "#REF"

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-static {v2, v0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    :goto_2
    const/16 p0, 0x21

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
