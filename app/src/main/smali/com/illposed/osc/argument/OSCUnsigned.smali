.class public final Lcom/illposed/osc/argument/OSCUnsigned;
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
        "Lcom/illposed/osc/argument/OSCUnsigned;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

.field public static final MIN_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/illposed/osc/argument/OSCUnsigned;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/illposed/osc/argument/OSCUnsigned;-><init>(J)V

    sput-object v0, Lcom/illposed/osc/argument/OSCUnsigned;->MIN_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

    new-instance v0, Lcom/illposed/osc/argument/OSCUnsigned;

    const-wide v1, 0xffffffffL

    invoke-direct {v0, v1, v2}, Lcom/illposed/osc/argument/OSCUnsigned;-><init>(J)V

    sput-object v0, Lcom/illposed/osc/argument/OSCUnsigned;->MAX_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    return-void
.end method

.method public static valueOf(J)Lcom/illposed/osc/argument/OSCUnsigned;
    .locals 4

    sget-object v0, Lcom/illposed/osc/argument/OSCUnsigned;->MIN_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

    iget-wide v1, v0, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    sget-object v1, Lcom/illposed/osc/argument/OSCUnsigned;->MAX_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

    iget-wide v1, v1, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    new-instance v0, Lcom/illposed/osc/argument/OSCUnsigned;

    invoke-direct {v0, p0, p1}, Lcom/illposed/osc/argument/OSCUnsigned;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value "

    const-string v3, " lies not within 32bit unsigned integer range ("

    .line 1
    invoke-static {v2, p0, p1, v3}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    iget-wide v2, v0, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/illposed/osc/argument/OSCUnsigned;->MAX_VALUE:Lcom/illposed/osc/argument/OSCUnsigned;

    iget-wide v2, p1, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    const-string p1, ")."

    .line 3
    invoke-static {p0, v2, v3, p1}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf([B)Lcom/illposed/osc/argument/OSCUnsigned;
    .locals 7

    .line 12
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/illposed/osc/argument/OSCUnsigned;->valueOf(J)Lcom/illposed/osc/argument/OSCUnsigned;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "We need exactly 4 bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Lcom/illposed/osc/argument/OSCUnsigned;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/OSCUnsigned;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCUnsigned;->clone()Lcom/illposed/osc/argument/OSCUnsigned;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/illposed/osc/argument/OSCUnsigned;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCUnsigned;->toLong()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCUnsigned;->toLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/illposed/osc/argument/OSCUnsigned;

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/OSCUnsigned;->compareTo(Lcom/illposed/osc/argument/OSCUnsigned;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/illposed/osc/argument/OSCUnsigned;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/illposed/osc/argument/OSCUnsigned;->toLong()J

    move-result-wide v0

    check-cast p1, Lcom/illposed/osc/argument/OSCUnsigned;

    invoke-virtual {p1}, Lcom/illposed/osc/argument/OSCUnsigned;->toLong()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x1bd

    add-int/2addr v0, v1

    return v0
.end method

.method public toLong()J
    .locals 2

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/illposed/osc/argument/OSCUnsigned;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
