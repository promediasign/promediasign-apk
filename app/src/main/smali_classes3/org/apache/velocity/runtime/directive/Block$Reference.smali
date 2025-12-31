.class public Lorg/apache/velocity/runtime/directive/Block$Reference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/Renderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/directive/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# instance fields
.field private context:Lorg/apache/velocity/context/InternalContextAdapter;

.field private depth:I

.field private parent:Lorg/apache/velocity/runtime/directive/Block;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/context/InternalContextAdapter;Lorg/apache/velocity/runtime/directive/Block;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->context:Lorg/apache/velocity/context/InternalContextAdapter;

    iput-object p2, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->parent:Lorg/apache/velocity/runtime/directive/Block;

    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 2

    iget v0, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->parent:Lorg/apache/velocity/runtime/directive/Block;

    iget v1, v1, Lorg/apache/velocity/runtime/directive/Block;->maxDepth:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    .locals 4

    iget v0, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    iget-object v2, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->parent:Lorg/apache/velocity/runtime/directive/Block;

    iget v3, v2, Lorg/apache/velocity/runtime/directive/Block;->maxDepth:I

    if-le v0, v3, :cond_0

    iget-object p2, v2, Lorg/apache/velocity/runtime/directive/Block;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2, p1}, Lorg/apache/velocity/runtime/directive/Block;->id(Lorg/apache/velocity/context/InternalContextAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->parent:Lorg/apache/velocity/runtime/directive/Block;

    invoke-static {v0}, Lorg/apache/velocity/util/StringUtils;->formatFileString(Lorg/apache/velocity/runtime/directive/Directive;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Max recursion depth reached for {} at {}"

    invoke-interface {p2, v2, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v2, p1, p2}, Lorg/apache/velocity/runtime/directive/Block;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    iget p1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->depth:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/velocity/util/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/velocity/util/StringBuilderWriter;-><init>()V

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Block$Reference;->context:Lorg/apache/velocity/context/InternalContextAdapter;

    invoke-virtual {p0, v1, v0}, Lorg/apache/velocity/runtime/directive/Block$Reference;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/velocity/util/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
