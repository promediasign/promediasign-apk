.class Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/DrawTextParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XlinkAttribute"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_HREF:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-virtual {v0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/DrawTextParagraph;->HYPERLINK_LABEL:Lorg/apache/poi/sl/draw/DrawTextParagraph$XlinkAttribute;

    invoke-virtual {v0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "unknown attribute name"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
