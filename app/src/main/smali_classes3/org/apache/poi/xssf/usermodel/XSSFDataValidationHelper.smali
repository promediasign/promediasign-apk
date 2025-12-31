.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidationHelper;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public createDateConstraint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance p4, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v0, 0x4

    invoke-direct {p4, v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createExplicitListConstraint([Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public createFormulaListConstraint(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNumericConstraint(IILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createIntegerConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createDecimalConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationHelper;->createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public createTextLengthConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTimeConstraint(ILjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 2

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createValidation(Lorg/apache/poi/ss/usermodel/DataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;)Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 5

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    :goto_0
    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    goto :goto_1

    :pswitch_1
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->CUSTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TEXT_LENGTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TIME:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DATE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->LIST:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula1(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DECIMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    goto :goto_0

    :pswitch_7
    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->WHOLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getOperator()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setOperator(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula1(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setFormula2(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setSqref(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setAllowBlank(Z)V

    sget-object p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;)V

    new-instance p1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;

    invoke-direct {p1, v0, p2, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
