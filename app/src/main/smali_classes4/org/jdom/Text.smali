.class public Lorg/jdom/Text;
.super Lorg/jdom/Content;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Text.java,v $ $Revision: 1.25 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"

.field static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jdom/Text;->setText(Ljava/lang/String;)Lorg/jdom/Text;

    return-void
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_3

    const-string v6, " \t\n\r"

    aget-char v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x20

    aput-char v6, v0, v5

    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aget-char v6, p0, v3

    aput-char v6, v0, v5

    move v5, v4

    const/4 v4, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1, p1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public append(Lorg/jdom/Text;)V
    .locals 2

    .line 6
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Text;

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    iput-object v1, v0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
