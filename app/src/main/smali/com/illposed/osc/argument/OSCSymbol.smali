.class public Lcom/illposed/osc/argument/OSCSymbol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/illposed/osc/argument/OSCSymbol;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/argument/OSCSymbol;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/illposed/osc/argument/OSCSymbol;
    .locals 1

    new-instance v0, Lcom/illposed/osc/argument/OSCSymbol;

    invoke-direct {v0, p0}, Lcom/illposed/osc/argument/OSCSymbol;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/illposed/osc/argument/OSCSymbol;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/OSCSymbol;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCSymbol;->clone()Lcom/illposed/osc/argument/OSCSymbol;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/illposed/osc/argument/OSCSymbol;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCSymbol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCSymbol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/illposed/osc/argument/OSCSymbol;

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/OSCSymbol;->compareTo(Lcom/illposed/osc/argument/OSCSymbol;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/illposed/osc/argument/OSCSymbol;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCSymbol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/argument/OSCSymbol;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x103

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/argument/OSCSymbol;->value:Ljava/lang/String;

    return-object v0
.end method
