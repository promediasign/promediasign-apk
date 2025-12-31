.class Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;
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
    name = "ParenToken"
.end annotation


# instance fields
.field child:Lorg/apache/xmlbeans/impl/regex/Token;

.field parennumber:I


# direct methods
.method public constructor <init>(ILorg/apache/xmlbeans/impl/regex/Token;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->parennumber:I

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    return-object p1
.end method

.method public getParenNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->parennumber:I

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
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_2

    .line 13
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 14
    .line 15
    const-string v1, "(?>"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-static {v0, p1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_2

    .line 31
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 32
    .line 33
    const-string v1, "(?<!"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->child:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    .line 46
    .line 47
    const-string v1, "(?<="

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    const-string v1, "(?!"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 62
    .line 63
    const-string v1, "(?="

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token$ParenToken;->parennumber:I

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    .line 74
    .line 75
    const-string v1, "(?:"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 82
    .line 83
    const-string v1, "("

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_2
    return-object p1

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
