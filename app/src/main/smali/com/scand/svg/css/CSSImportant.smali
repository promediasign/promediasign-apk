.class public Lcom/scand/svg/css/CSSImportant;
.super Lcom/scand/svg/css/CSSValue;
.source "SourceFile"


# instance fields
.field private final value:Lcom/scand/svg/css/CSSValue;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/CSSValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSValue;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/CSSImportant;->value:Lcom/scand/svg/css/CSSValue;

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

    check-cast p1, Lcom/scand/svg/css/CSSImportant;

    iget-object p1, p1, Lcom/scand/svg/css/CSSImportant;->value:Lcom/scand/svg/css/CSSValue;

    iget-object v0, p0, Lcom/scand/svg/css/CSSImportant;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSImportant;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/scand/svg/css/CSSImportant;->value:Lcom/scand/svg/css/CSSValue;

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/CSSValue;->serialize(Ljava/io/PrintWriter;)V

    const-string v0, " !important"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
