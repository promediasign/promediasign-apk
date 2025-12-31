.class public abstract Lch/qos/logback/core/html/HTMLLayoutBase;
.super Lch/qos/logback/core/LayoutBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/LayoutBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected counter:J

.field protected cssBuilder:Lch/qos/logback/core/html/CssBuilder;

.field protected head:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected pattern:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lch/qos/logback/core/LayoutBase;-><init>()V

    const-string v0, "Logback Log Messages"

    iput-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->counter:J

    return-void
.end method

.method private buildHeaderRowForTable(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    const-string v1, "<tr class=\"header\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "<td class=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</td>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "</tr>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public computeConverterName(Lch/qos/logback/core/pattern/Converter;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Converter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/html"

    return-object v0
.end method

.method public getCssBuilder()Lch/qos/logback/core/html/CssBuilder;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    return-object v0
.end method

.method public abstract getDefaultConverterMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getEffectiveConverterMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->getDefaultConverterMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/LayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "PATTERN_RULE_REGISTRY"

    invoke-interface {v1, v2}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method public getFileFooter()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "</body></html>"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getFileHeader()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "<html>"

    .line 10
    .line 11
    const-string v3, "  <head>"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v1, v3}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "    <title>"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, "</title>"

    .line 27
    .line 28
    invoke-static {v0, v2, v3, v1}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    .line 32
    .line 33
    invoke-interface {v2, v0}, Lch/qos/logback/core/html/CssBuilder;->addCss(Ljava/lang/StringBuilder;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "  </head>"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "<body>"

    .line 48
    .line 49
    invoke-static {v2, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPresentationFooter()Ljava/lang/String;
    .locals 1

    const-string v0, "</table>"

    return-object v0
.end method

.method public getPresentationHeader()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "<hr/>"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v2, "<p>Log session start time "

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "</p><p></p>"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "<table cellspacing=\"0\">"

    .line 34
    .line 35
    invoke-static {v0, v1, v2, v1}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Lch/qos/logback/core/html/HTMLLayoutBase;->buildHeaderRowForTable(Ljava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCssBuilder(Lch/qos/logback/core/html/CssBuilder;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->cssBuilder:Lch/qos/logback/core/html/CssBuilder;

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->title:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 3

    :try_start_0
    new-instance v0, Lch/qos/logback/core/pattern/parser/Parser;

    iget-object v1, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/qos/logback/core/LayoutBase;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareBase;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Parser;->parse()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/html/HTMLLayoutBase;->getEffectiveConverterMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lch/qos/logback/core/pattern/parser/Parser;->compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->head:Lch/qos/logback/core/pattern/Converter;

    invoke-static {v0}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V
    :try_end_0
    .catch Lch/qos/logback/core/spi/ScanException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/LayoutBase;->started:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Incorrect pattern found"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public startNewTableIfLimitReached(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->counter:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2710

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-ltz v4, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lch/qos/logback/core/html/HTMLLayoutBase;->counter:J

    .line 12
    .line 13
    const-string v0, "</table>"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "<p></p>"

    .line 21
    .line 22
    const-string v2, "<table cellspacing=\"0\">"

    .line 23
    .line 24
    invoke-static {p1, v0, v1, v2, v0}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lch/qos/logback/core/html/HTMLLayoutBase;->buildHeaderRowForTable(Ljava/lang/StringBuilder;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
