.class public Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;
.super Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.source "SourceFile"


# instance fields
.field private field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    return-void
.end method


# virtual methods
.method public getCTField()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    return-object v0
.end method

.method public getFieldInstruction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->getInstr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFieldInstruction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFFieldRun;->field:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;->setInstr(Ljava/lang/String;)V

    return-void
.end method
