.class public Lorg/apache/velocity/runtime/parser/TemplateParseException;
.super Lorg/apache/velocity/runtime/parser/ParseException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/exception/ExtendedParseException;


# static fields
.field private static final serialVersionUID:J = -0x2ba9fc38cf68378eL


# instance fields
.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>()V

    const-string v0, "*unset*"

    iput-object v0, p0, Lorg/apache/velocity/runtime/parser/TemplateParseException;->templateName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>(Ljava/lang/String;)V

    const-string p1, "*unset*"

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/TemplateParseException;->templateName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;)V

    const-string p1, "*unset*"

    iput-object p1, p0, Lorg/apache/velocity/runtime/parser/TemplateParseException;->templateName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/velocity/runtime/parser/ParseException;-><init>(Lorg/apache/velocity/runtime/parser/Token;[[I[Ljava/lang/String;)V

    iput-object p4, p0, Lorg/apache/velocity/runtime/parser/TemplateParseException;->templateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTemplateInfo(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/TemplateParseException;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/TemplateParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/parser/TemplateParseException;->getColumnNumber()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 13

    iget-boolean v0, p0, Lorg/apache/velocity/runtime/parser/ParseException;->specialConstructor:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/velocity/runtime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/parser/TemplateParseException;->appendTemplateInfo(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, " "

    const-string v7, "    "

    const/4 v8, 0x1

    if-ge v4, v2, :cond_4

    aget-object v9, v1, v4

    array-length v10, v9

    if-ge v5, v10, :cond_1

    array-length v5, v9

    :cond_1
    const/4 v10, 0x0

    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_2

    iget-object v11, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget v12, v9, v10

    aget-object v11, v11, v12

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    array-length v6, v9

    sub-int/2addr v6, v8

    aget v6, v9, v6

    if-eqz v6, :cond_3

    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v6, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    if-eqz v4, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v9, v2, Lorg/apache/velocity/runtime/parser/Token;->kind:I

    if-nez v9, :cond_6

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    iget-object v9, v2, Lorg/apache/velocity/runtime/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lorg/apache/velocity/runtime/parser/ParseException;->add_escapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const-string v2, "\" at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lorg/apache/velocity/runtime/parser/TemplateParseException;->appendTemplateInfo(Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->expectedTokenSequences:[[I

    array-length v2, v2

    if-ne v2, v8, :cond_8

    const-string v2, "Was expecting:"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/velocity/runtime/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string v2, "Was expecting one of:"

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/parser/TemplateParseException;->templateName:Ljava/lang/String;

    return-object v0
.end method
