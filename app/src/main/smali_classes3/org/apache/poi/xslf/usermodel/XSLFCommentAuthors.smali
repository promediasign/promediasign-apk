.class public Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field private final _authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;


# virtual methods
.method public getAuthorById(J)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;->getCmAuthorArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthor;->getId()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCTCommentAuthorsList()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFCommentAuthors;->_authors:Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentAuthorList;

    return-object v0
.end method
