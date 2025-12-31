.class Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;
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
    name = "ConcatToken"
.end annotation


# instance fields
.field child:Lorg/apache/xmlbeans/impl/regex/Token;

.field child2:Lorg/apache/xmlbeans/impl/regex/Token;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child2:Lorg/apache/xmlbeans/impl/regex/Token;

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child2:Lorg/apache/xmlbeans/impl/regex/Token;

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child2:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuffer;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "+"

    .line 29
    .line 30
    :goto_0
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child2:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 36
    .line 37
    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 38
    .line 39
    const/16 v2, 0x9

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 48
    .line 49
    if-ne v0, v1, :cond_1

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v1, "+?"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ConcatToken;->child2:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_1
    return-object p1
.end method
