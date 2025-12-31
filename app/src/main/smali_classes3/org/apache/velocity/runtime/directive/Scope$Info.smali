.class public Lorg/apache/velocity/runtime/directive/Scope$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/velocity/runtime/directive/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field private directive:Lorg/apache/velocity/runtime/directive/Directive;

.field private scope:Lorg/apache/velocity/runtime/directive/Scope;

.field private template:Lorg/apache/velocity/Template;


# direct methods
.method public constructor <init>(Lorg/apache/velocity/runtime/directive/Scope;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/velocity/runtime/directive/Directive;

    iput-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    :cond_0
    instance-of v0, p2, Lorg/apache/velocity/Template;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/velocity/Template;

    iput-object p2, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->template:Lorg/apache/velocity/Template;

    :cond_1
    iput-object p1, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->scope:Lorg/apache/velocity/runtime/directive/Scope;

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Directive;->getColumn()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDepth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->scope:Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Scope;->getDepth()I

    move-result v0

    return v0
.end method

.method public getLine()I
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Directive;->getLine()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Directive;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->template:Lorg/apache/velocity/Template;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Directive;->getTemplateName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->template:Lorg/apache/velocity/Template;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/directive/Directive;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "line"

    return-object v0

    :cond_1
    const-string v0, "block"

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->template:Lorg/apache/velocity/Template;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/resource/Resource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->directive:Lorg/apache/velocity/runtime/directive/Directive;

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Scope$Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Scope$Info;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Scope$Info;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v2, " depth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lorg/apache/velocity/runtime/directive/Scope$Info;->template:Lorg/apache/velocity/Template;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Scope$Info;->getTemplate()Ljava/lang/String;

    move-result-object v1

    const-string v2, " template:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Scope$Info;->getLine()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " column:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/directive/Scope$Info;->getColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
