.class public Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidation;


# static fields
.field static errorStyleMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;",
            ">;"
        }
    .end annotation
.end field

.field static operatorTypeMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;",
            ">;"
        }
    .end annotation
.end field

.field static operatorTypeReverseMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static validationTypeMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;",
            ">;"
        }
    .end annotation
.end field

.field static validationTypeReverseMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

.field private regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

.field private validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeReverseMappings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeReverseMappings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->INFORMATION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->STOP:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle;->WARNING:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->NOT_BETWEEN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    sget-object v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->NOT_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->GREATER_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->GREATER_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->LESS_THAN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator;->LESS_THAN_OR_EQUAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    sget-object v10, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v9, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->CUSTOM:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DATE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->DECIMAL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->LIST:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->NONE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TEXT_LENGTH:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->TIME:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType;->WHOLE:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->getConstraint(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-void
.end method

.method private encodeUtf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-char v3, p1, v2

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2

    const-string v4, "_x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "000"

    goto :goto_1

    :cond_1
    const-string v4, "00"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getConstraint(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;)Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;
    .locals 4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getFormula1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getFormula2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getOperator()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationOperator$Enum;

    move-result-object v2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationType$Enum;

    move-result-object p0

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v3, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->operatorTypeReverseMappings:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, p0, v2, v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public createErrorBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xff

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error-title cannot be longer than 32 characters, but had: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error-text cannot be longer than 255 characters, but had: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setError(Ljava/lang/String;)V

    return-void
.end method

.method public createPromptBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0xff

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error-title cannot be longer than 32 characters, but had: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error-text cannot be longer than 255 characters, but had: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setPromptTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->encodeUtf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setPrompt(Ljava/lang/String;)V

    return-void
.end method

.method public getCtDdataValidation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    return-object v0
.end method

.method public getEmptyCellAllowed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getAllowBlank()Z

    move-result v0

    return v0
.end method

.method public getErrorBoxText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorBoxTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorStyle()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getErrorStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v0

    return v0
.end method

.method public getPromptBoxText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getPrompt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromptBoxTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getPromptTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegions()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object v0
.end method

.method public getShowErrorBox()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getShowErrorMessage()Z

    move-result v0

    return v0
.end method

.method public getShowPromptBox()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getShowInputMessage()Z

    move-result v0

    return v0
.end method

.method public getSuppressDropDownArrow()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->getShowDropDown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    return-object v0
.end method

.method public prettyPrint()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->prettyPrint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyCellAllowed(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setAllowBlank(Z)V

    return-void
.end method

.method public setErrorStyle(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->errorStyleMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setErrorStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationErrorStyle$Enum;)V

    return-void
.end method

.method public setShowErrorBox(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setShowErrorMessage(Z)V

    return-void
.end method

.method public setShowPromptBox(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setShowInputMessage(Z)V

    return-void
.end method

.method public setSuppressDropDownArrow(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->validationConstraint:Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFDataValidationConstraint;->getValidationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;->ctDdataValidation:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataValidation;->setShowDropDown(Z)V

    :cond_0
    return-void
.end method
