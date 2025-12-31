.class public Lorg/apache/velocity/exception/ParseErrorException;
.super Lorg/apache/velocity/exception/VelocityException;
.source "SourceFile"


# static fields
.field private static final lexError:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = -0x5c7f8a354e7c84a8L


# instance fields
.field private columnNumber:I

.field private invalidSyntax:Ljava/lang/String;

.field private lineNumber:I

.field private msg:Ljava/lang/String;

.field private templateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Lexical error.*TokenMgrError.*line (\\d+),.*column (\\d+)\\.(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/velocity/exception/ParseErrorException;->lexError:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/velocity/util/introspection/Info;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    iput p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    const-string p1, "*unset*"

    iput-object p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    move-result p1

    iput p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    invoke-virtual {p2}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/exception/VelocityException;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    iput v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    const-string v0, "*unset*"

    iput-object v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->msg:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    :cond_0
    instance-of p2, p1, Lorg/apache/velocity/exception/ExtendedParseException;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/apache/velocity/exception/ExtendedParseException;

    invoke-interface {p1}, Lorg/apache/velocity/exception/ExtendedParseException;->getColumnNumber()I

    move-result p2

    iput p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    invoke-interface {p1}, Lorg/apache/velocity/exception/ExtendedParseException;->getLineNumber()I

    move-result p2

    iput p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    invoke-interface {p1}, Lorg/apache/velocity/exception/ExtendedParseException;->getTemplateName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lorg/apache/velocity/runtime/parser/ParseException;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/apache/velocity/runtime/parser/ParseException;

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz p1, :cond_2

    iget p2, p1, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    iput p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    iget p1, p1, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    iput p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    iput v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    const-string v0, "*unset*"

    iput-object v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->msg:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    :cond_0
    instance-of p2, p1, Lorg/apache/velocity/exception/ExtendedParseException;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/apache/velocity/exception/ExtendedParseException;

    invoke-interface {p1}, Lorg/apache/velocity/exception/ExtendedParseException;->getColumnNumber()I

    move-result p2

    iput p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    invoke-interface {p1}, Lorg/apache/velocity/exception/ExtendedParseException;->getLineNumber()I

    move-result p2

    iput p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    invoke-interface {p1}, Lorg/apache/velocity/exception/ExtendedParseException;->getTemplateName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/velocity/exception/ParseErrorException;->lexError:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Lexical error, "

    const-string v1, " at "

    .line 3
    invoke-static {v0, p2, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->templateName:Ljava/lang/String;

    iget v1, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    iget v2, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    invoke-static {v0, v1, v2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->msg:Ljava/lang/String;

    :cond_2
    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/ParseException;->currentToken:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/apache/velocity/runtime/parser/Token;->next:Lorg/apache/velocity/runtime/parser/Token;

    if-eqz p1, :cond_3

    iget p2, p1, Lorg/apache/velocity/runtime/parser/Token;->beginColumn:I

    iput p2, p0, Lorg/apache/velocity/exception/ParseErrorException;->columnNumber:I

    iget p1, p1, Lorg/apache/velocity/runtime/parser/Token;->beginLine:I

    iput p1, p0, Lorg/apache/velocity/exception/ParseErrorException;->lineNumber:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/exception/ParseErrorException;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
