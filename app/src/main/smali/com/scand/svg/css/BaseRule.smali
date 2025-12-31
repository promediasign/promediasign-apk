.class public abstract Lcom/scand/svg/css/BaseRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field properties:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/scand/svg/css/CSSValue;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/scand/svg/css/CSSValue;

    return-object p1
.end method

.method public properties()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract serialize(Ljava/io/PrintWriter;)V
.end method

.method public serializeProperties(Ljava/io/PrintWriter;Z)V
    .locals 3

    iget-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz p2, :cond_0

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v1, p1}, Lcom/scand/svg/css/CSSValue;->serialize(Ljava/io/PrintWriter;)V

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/scand/svg/css/CSSValue;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/scand/svg/css/BaseRule;->properties:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/scand/svg/css/BaseRule;->serialize(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
