.class public Lcom/scand/svg/css/SelectorRule;
.super Lcom/scand/svg/css/BaseRule;
.source "SourceFile"


# instance fields
.field selectors:[Lcom/scand/svg/css/Selector;


# direct methods
.method public constructor <init>([Lcom/scand/svg/css/Selector;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/BaseRule;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/SelectorRule;->selectors:[Lcom/scand/svg/css/Selector;

    return-void
.end method


# virtual methods
.method public serialize(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/scand/svg/css/SelectorRule;->selectors:[Lcom/scand/svg/css/Selector;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/SelectorRule;->selectors:[Lcom/scand/svg/css/Selector;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/Selector;->serialize(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    const-string v0, ", "

    goto :goto_0

    :cond_0
    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/css/BaseRule;->serializeProperties(Ljava/io/PrintWriter;Z)V

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
