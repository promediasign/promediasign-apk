.class public Lcom/scand/svg/css/CSSName;
.super Lcom/scand/svg/css/CSSValue;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSValue;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/CSSName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/scand/svg/css/CSSName;

    iget-object p1, p1, Lcom/scand/svg/css/CSSName;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/scand/svg/css/CSSName;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSName;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSName;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSName;->name:Ljava/lang/String;

    return-object v0
.end method
