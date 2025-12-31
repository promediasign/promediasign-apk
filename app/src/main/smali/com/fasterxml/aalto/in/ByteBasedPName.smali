.class public abstract Lcom/fasterxml/aalto/in/ByteBasedPName;
.super Lcom/fasterxml/aalto/in/PName;
.source "SourceFile"


# instance fields
.field protected final mHash:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/aalto/in/PName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    return-void
.end method


# virtual methods
.method public abstract equals(II)Z
.end method

.method public abstract equals([II)Z
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/in/ByteBasedPName;->mHash:I

    return v0
.end method

.method public abstract hashEquals(III)Z
.end method

.method public abstract hashEquals(I[II)Z
.end method
