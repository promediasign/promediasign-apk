.class public Lcom/illposed/osc/argument/OSCMidiMessage;
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
        "Lcom/illposed/osc/argument/OSCMidiMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data1:B

.field private final data2:B

.field private final portId:B

.field private final status:B


# direct methods
.method public constructor <init>(BBBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->portId:B

    iput-byte p2, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->status:B

    iput-byte p3, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->data1:B

    iput-byte p4, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->data2:B

    return-void
.end method

.method public static valueOf([B)Lcom/illposed/osc/argument/OSCMidiMessage;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/illposed/osc/argument/OSCMidiMessage;

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/illposed/osc/argument/OSCMidiMessage;-><init>(BBBB)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The content has to be exactly 4 bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Lcom/illposed/osc/argument/OSCMidiMessage;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/OSCMidiMessage;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCMidiMessage;->clone()Lcom/illposed/osc/argument/OSCMidiMessage;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/illposed/osc/argument/OSCMidiMessage;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCMidiMessage;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCMidiMessage;->hashCode()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/illposed/osc/argument/OSCMidiMessage;

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/OSCMidiMessage;->compareTo(Lcom/illposed/osc/argument/OSCMidiMessage;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/illposed/osc/argument/OSCMidiMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/illposed/osc/argument/OSCMidiMessage;

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->portId:B

    iget-byte v1, p1, Lcom/illposed/osc/argument/OSCMidiMessage;->portId:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->status:B

    iget-byte v1, p1, Lcom/illposed/osc/argument/OSCMidiMessage;->status:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->data1:B

    iget-byte v1, p1, Lcom/illposed/osc/argument/OSCMidiMessage;->data1:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->data2:B

    iget-byte p1, p1, Lcom/illposed/osc/argument/OSCMidiMessage;->data2:B

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x2a7

    iget-byte v1, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->portId:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-byte v1, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->status:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-byte v1, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->data1:B

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x61

    iget-byte v1, p0, Lcom/illposed/osc/argument/OSCMidiMessage;->data2:B

    add-int/2addr v0, v1

    return v0
.end method
