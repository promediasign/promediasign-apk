.class public Lcom/scand/svg/parser/Text;
.super Lcom/scand/svg/parser/TextSpan;
.source "SourceFile"


# instance fields
.field private currentSpans:Ljava/util/Stack;

.field public spans:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/scand/svg/parser/TextProperties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scand/svg/parser/TextSpan;-><init>(Lcom/scand/svg/parser/TextProperties;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/Text;->spans:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/parser/Text;->currentSpans:Ljava/util/Stack;

    iget-object p1, p0, Lcom/scand/svg/parser/Text;->spans:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addSpan(Lcom/scand/svg/parser/TextProperties;)V
    .locals 1

    new-instance v0, Lcom/scand/svg/parser/TextSpan;

    invoke-direct {v0, p1}, Lcom/scand/svg/parser/TextSpan;-><init>(Lcom/scand/svg/parser/TextProperties;)V

    iget-object p1, p0, Lcom/scand/svg/parser/Text;->spans:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/scand/svg/parser/Text;->currentSpans:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/scand/svg/parser/TextSpan;->parent:Lcom/scand/svg/parser/TextSpan;

    return-void
.end method

.method public endSpan()V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/parser/Text;->currentSpans:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/parser/Text;->currentSpans:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/scand/svg/parser/Text;->currentSpans:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/parser/TextSpan;

    iget-object v0, v0, Lcom/scand/svg/parser/TextSpan;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scand/svg/parser/Text;->currentSpans:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scand/svg/parser/TextSpan;

    invoke-virtual {v0, p1}, Lcom/scand/svg/parser/TextSpan;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scand/svg/parser/Text;->spans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/scand/svg/parser/TextSpan;->props:Lcom/scand/svg/parser/TextProperties;

    invoke-virtual {v0}, Lcom/scand/svg/parser/TextProperties;->cloneStyle()Lcom/scand/svg/parser/TextProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scand/svg/parser/Text;->addSpan(Lcom/scand/svg/parser/TextProperties;)V

    invoke-virtual {p0, p1}, Lcom/scand/svg/parser/Text;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/scand/svg/parser/TextSpan;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scand/svg/parser/Text;->spans:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/scand/svg/parser/TextSpan;

    .line 20
    .line 21
    invoke-static {v1}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2}, Lcom/scand/svg/parser/TextSpan;->asString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\n"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "["

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "]"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
