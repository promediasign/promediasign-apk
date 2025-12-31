.class public Lorg/mozilla/javascript/ast/Symbol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private containingTable:Lorg/mozilla/javascript/ast/Scope;

.field private declType:I

.field private index:I

.field private name:Ljava/lang/String;

.field private node:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/Symbol;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Symbol;->setDeclType(I)V

    return-void
.end method


# virtual methods
.method public getContainingTable()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Symbol;->containingTable:Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public getDeclType()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/Symbol;->declType:I

    return v0
.end method

.method public getDeclTypeName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/Symbol;->declType:I

    invoke-static {v0}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lorg/mozilla/javascript/Node;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    return-object v0
.end method

.method public setContainingTable(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Symbol;->containingTable:Lorg/mozilla/javascript/ast/Scope;

    return-void
.end method

.method public setDeclType(I)V
    .locals 2

    .line 1
    const/16 v0, 0x6e

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x58

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x7b

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x9a

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x9b

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Invalid declType: "

    .line 25
    .line 26
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :goto_0
    iput p1, p0, Lorg/mozilla/javascript/ast/Symbol;->declType:I

    .line 35
    .line 36
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/javascript/ast/Symbol;->index:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Symbol;->name:Ljava/lang/String;

    return-void
.end method

.method public setNode(Lorg/mozilla/javascript/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Symbol ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Symbol;->getDeclTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    if-eqz v1, :cond_0

    const-string v1, " line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/Symbol;->node:Lorg/mozilla/javascript/Node;

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
