.class public Lcom/scand/svg/css/InlineRule;
.super Lcom/scand/svg/css/BaseRule;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/BaseRule;-><init>()V

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
    iget-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    check-cast p1, Lcom/scand/svg/css/InlineRule;

    iget-object p1, p1, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/scand/svg/css/BaseRule;->serializeProperties(Ljava/io/PrintWriter;Z)V

    return-void
.end method
