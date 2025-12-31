.class public Lcom/scand/svg/css/AnyElementSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 1

    new-instance v0, Lcom/scand/svg/css/AnyElementMatcher;

    invoke-direct {v0, p0}, Lcom/scand/svg/css/AnyElementMatcher;-><init>(Lcom/scand/svg/css/AnyElementSelector;)V

    return-object v0
.end method

.method public getSpecificity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
