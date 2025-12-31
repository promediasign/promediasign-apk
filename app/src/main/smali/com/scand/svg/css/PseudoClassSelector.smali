.class public Lcom/scand/svg/css/PseudoClassSelector;
.super Lcom/scand/svg/css/Selector;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/Selector;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/PseudoClassSelector;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
    .locals 2

    iget-object v0, p0, Lcom/scand/svg/css/PseudoClassSelector;->name:Ljava/lang/String;

    const-string v1, "first-child"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/scand/svg/css/FirstChildElementMatcher;

    invoke-direct {v0, p0}, Lcom/scand/svg/css/FirstChildElementMatcher;-><init>(Lcom/scand/svg/css/PseudoClassSelector;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecificity()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/PseudoClassSelector;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
