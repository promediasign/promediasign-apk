.class Lio/milton/http/webdav/PropPatchSaxHandler$Content;
.super Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropPatchSaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field private final value:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;-><init>(Lio/milton/http/webdav/PropPatchSaxHandler$2;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lio/milton/http/webdav/PropPatchSaxHandler$6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/milton/http/webdav/PropPatchSaxHandler$Content;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endSelf(Ljavax/xml/namespace/QName;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    invoke-interface {p2, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    invoke-interface {p2, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->value:Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method
