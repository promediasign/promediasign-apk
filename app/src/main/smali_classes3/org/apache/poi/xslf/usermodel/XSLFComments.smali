.class public Lorg/apache/poi/xslf/usermodel/XSLFComments;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final _comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;


# virtual methods
.method public getCTCommentsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    return-object v0
.end method

.method public getCommentAt(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->getCmArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;

    move-result-object p1

    return-object p1
.end method

.method public getNumberOfComments()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFComments;->_comments:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->sizeOfCmArray()I

    move-result v0

    return v0
.end method
