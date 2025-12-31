.class public Lorg/apache/velocity/util/introspection/Info;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private column:I

.field private line:I

.field private templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/util/introspection/Info;->templateName:Ljava/lang/String;

    iput p2, p0, Lorg/apache/velocity/util/introspection/Info;->line:I

    iput p3, p0, Lorg/apache/velocity/util/introspection/Info;->column:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/velocity/runtime/parser/node/Node;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getLine()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/velocity/runtime/parser/node/Node;->getColumn()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/velocity/util/introspection/Info;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/util/introspection/Info;->column:I

    return v0
.end method

.method public getLine()I
    .locals 1

    iget v0, p0, Lorg/apache/velocity/util/introspection/Info;->line:I

    return v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/util/introspection/Info;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/Info;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/Info;->getLine()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/velocity/util/introspection/Info;->getColumn()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
