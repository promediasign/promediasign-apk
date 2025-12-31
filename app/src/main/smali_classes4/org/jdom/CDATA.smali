.class public Lorg/jdom/CDATA;
.super Lorg/jdom/Text;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: CDATA.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name:  $"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jdom/Text;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/jdom/Text;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jdom/CDATA;->setText(Ljava/lang/String;)Lorg/jdom/Text;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    if-ne v1, v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1, p1}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lorg/jdom/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-void

    :cond_2
    new-instance v0, Lorg/jdom/IllegalDataException;

    const-string v2, "CDATA section"

    invoke-direct {v0, p1, v2, v1}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public append(Lorg/jdom/Text;)V
    .locals 0

    .line 6
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jdom/CDATA;->append(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "CDATA section"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[CDATA: "

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
