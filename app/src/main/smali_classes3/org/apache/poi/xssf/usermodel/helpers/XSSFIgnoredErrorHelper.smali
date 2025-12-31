.class public Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addIgnoredErrors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;Ljava/lang/String;[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;)V
    .locals 2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setSqref(Ljava/util/List;)V

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    invoke-static {v1, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->set(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getErrorTypes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/usermodel/IgnoredErrorType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lorg/apache/poi/ss/usermodel/IgnoredErrorType;->values()[Lorg/apache/poi/ss/usermodel/IgnoredErrorType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4, p0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper;->isSet(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isSet(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper$1;->$SwitchMap$org$apache$poi$ss$usermodel$IgnoredErrorType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetUnlockedFormula()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetTwoDigitTextYear()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetNumberStoredAsText()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetListDataValidation()Z

    move-result p0

    return p0

    :pswitch_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetFormulaRange()Z

    move-result p0

    return p0

    :pswitch_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetFormula()Z

    move-result p0

    return p0

    :pswitch_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetEvalError()Z

    move-result p0

    return p0

    :pswitch_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetEmptyCellReference()Z

    move-result p0

    return p0

    :pswitch_8
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->isSetCalculatedColumn()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static set(Lorg/apache/poi/ss/usermodel/IgnoredErrorType;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFIgnoredErrorHelper$1;->$SwitchMap$org$apache$poi$ss$usermodel$IgnoredErrorType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setUnlockedFormula(Z)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setTwoDigitTextYear(Z)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setNumberStoredAsText(Z)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setListDataValidation(Z)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setFormulaRange(Z)V

    goto :goto_0

    :pswitch_5
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setFormula(Z)V

    goto :goto_0

    :pswitch_6
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setEvalError(Z)V

    goto :goto_0

    :pswitch_7
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setEmptyCellReference(Z)V

    goto :goto_0

    :pswitch_8
    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIgnoredError;->setCalculatedColumn(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
