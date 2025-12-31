.class public Lcom/scand/svg/css/PseudoElementSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/PseudoElementSelector;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 2

    new-instance v0, Lcom/scand/svg/css/PseudoElementMatcher;

    iget-object v1, p0, Lcom/scand/svg/css/PseudoElementSelector;->name:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/scand/svg/css/PseudoElementMatcher;-><init>(Lcom/scand/svg/css/PseudoElementSelector;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSpecificity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/PseudoElementSelector;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
