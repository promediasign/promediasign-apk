.class Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifierToken"
.end annotation


# instance fields
.field add:I

.field child:Lorg/apache/xmlbeans/impl/regex/Token;

.field mask:I


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/regex/Token;II)V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->add:I

    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->mask:I

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p1
.end method

.method public getOptions()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->add:I

    return v0
.end method

.method public getOptionsMask()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->mask:I

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "(?"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->add:I

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->mask:I

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    const-string v1, ":"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, ")"

    .line 47
    .line 48
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method
