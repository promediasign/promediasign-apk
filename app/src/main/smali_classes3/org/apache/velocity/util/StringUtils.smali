.class public abstract Lorg/apache/velocity/util/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static formatFileString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "<unknown template>"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[line "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", column "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 1
    invoke-static {v0, p2, p0}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Directive;->getColumn()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileString(Lorg/apache/velocity/runtime/parser/node/Node;)Ljava/lang/String;
    .locals 2

    .line 6
    invoke-interface {p0}, Lorg/apache/velocity/runtime/parser/node/Node;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileString(Lorg/apache/velocity/util/introspection/Info;)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
