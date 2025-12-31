.class public Lcom/scand/svg/css/ClassSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    check-cast p1, Lcom/scand/svg/css/ClassSelector;

    iget-object p1, p1, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 2

    new-instance v0, Lcom/scand/svg/css/ClassElementMatcher;

    iget-object v1, p0, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/scand/svg/css/ClassElementMatcher;-><init>(Lcom/scand/svg/css/ClassSelector;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSpecificity()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lcom/scand/svg/css/ClassSelector;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
