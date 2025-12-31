.class Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;
.super Lorg/apache/poi/xssf/usermodel/XSSFTextRun;
.source "SourceFile"


# instance fields
.field private final _brProps:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFTextRun;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;Lorg/apache/poi/xssf/usermodel/XSSFTextParagraph;)V

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;->_brProps:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-void
.end method


# virtual methods
.method public getRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFLineBreak;->_brProps:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot change text of a line break, it is always \'\\n\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
