.class Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDataValidations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private book:Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

.field final synthetic this$0:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field final synthetic val$hssfValidations:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->this$0:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->val$hssfValidations:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->book:Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    return-void
.end method


# virtual methods
.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/hssf/record/DVRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/apache/poi/hssf/record/DVRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getCellRangeAddress()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddressList;->copy()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->book:Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    invoke-static {p1, v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createDVConstraint(Lorg/apache/poi/hssf/record/DVRecord;Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;-><init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/apache/poi/ss/usermodel/DataValidationConstraint;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getErrorStyle()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setErrorStyle(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getEmptyCellAllowed()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setEmptyCellAllowed(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getSuppressDropdownArrow()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setSuppressDropDownArrow(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getPromptTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getPromptText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createPromptBox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getShowPromptOnCellSelected()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setShowPromptBox(Z)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getErrorTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getErrorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createErrorBox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/DVRecord;->getShowErrorOnInvalidValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setShowErrorBox(Z)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;->val$hssfValidations:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
