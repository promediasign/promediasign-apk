.class public abstract Lcom/fasterxml/aalto/impl/ErrorConsts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ERR_NS_EMPTY:Ljava/lang/String; = "Non-default namespace can not map to empty URI (as per Namespace 1.0 # 2) in XML 1.0 documents"

.field public static ERR_NS_REDECL_XML:Ljava/lang/String; = "Trying to redeclare prefix \'xml\' from its default URI \'http://www.w3.org/XML/1998/namespace\' to \"{0}\""

.field public static ERR_NS_REDECL_XMLNS:Ljava/lang/String; = "Trying to declare prefix \'xmlns\' (illegal as per NS 1.1 #4)"

.field public static ERR_NS_REDECL_XMLNS_URI:Ljava/lang/String; = "Trying to bind URI \'http://www.w3.org/2000/xmlns/ to prefix \"{0}\" (can not be explicitly bound)"

.field public static ERR_NS_REDECL_XML_URI:Ljava/lang/String; = "Trying to bind URI \'http://www.w3.org/XML/1998/namespace to prefix \"{0}\" (can only bind to \'xml\')"

.field public static ERR_NULL_ARG:Ljava/lang/String; = "Illegal to pass null as argument"

.field public static ERR_STATE_NOT_ELEM:Ljava/lang/String; = "Current state not START_ELEMENT or END_ELEMENT"

.field public static ERR_STATE_NOT_PI:Ljava/lang/String; = "Current state not PROCESSING_INSTRUCTION"

.field public static ERR_STATE_NOT_STELEM:Ljava/lang/String; = "Current state not START_ELEMENT"

.field public static ERR_WF_DUP_ATTRS:Ljava/lang/String; = "Duplicate attributes \"{0}\" (index {1}), \"{2}\" (index {3})"

.field public static ERR_WF_PI_XML_TARGET:Ljava/lang/String; = "Illegal processing instruction target: \'xml\' (case insensitive) is reserved by the xml specification"

.field public static SUFFIX_IN_EPILOG:Ljava/lang/String; = " in epilog"

.field public static SUFFIX_IN_PROLOG:Ljava/lang/String; = " in prolog"

.field public static SUFFIX_IN_TREE:Ljava/lang/String; = " in xml document"

.field public static VERR_ANY:Ljava/lang/String; = "Element <{0}> has ANY content specification; can not contain {1}"

.field public static VERR_EMPTY:Ljava/lang/String; = "Element <{0}> has EMPTY content specification; can not contain {1}"

.field public static VERR_NON_MIXED:Ljava/lang/String; = "Element <{0}> has non-mixed content specification; can not contain non-white space text, or any CDATA sections"

.field public static WERR_ATTR_NO_ELEM:Ljava/lang/String; = "Trying to write an attribute when there is no open start element."

.field public static WERR_CDATA_CONTENT:Ljava/lang/String; = "Illegal input: CDATA block has embedded \']]>\' in it (index {0})"

.field public static WERR_COMMENT_CONTENT:Ljava/lang/String; = "Illegal input: comment content has embedded \'--\' in it (index {0})"

.field public static WERR_DUP_XML_DECL:Ljava/lang/String; = "Can not output XML declaration, after other output has already been done."

.field public static WERR_NAME_EMPTY:Ljava/lang/String; = "Illegal to pass empty name"

.field public static WERR_NO_ESCAPING:Ljava/lang/String; = "Illegal input: {0} contains a character (code {1}) that can only be output as character entity"

.field public static WERR_NS_NO_ELEM:Ljava/lang/String; = "Trying to write a namespace declaration when there is no open start element."

.field public static WERR_PI_CONTENT:Ljava/lang/String; = "Illegal input: processing instruction content has embedded \'?>\' in it (index {0})"

.field public static WERR_PROLOG_CDATA:Ljava/lang/String; = "Trying to output a CDATA block outside main element tree (in prolog or epilog)"

.field public static WERR_PROLOG_ENTITY:Ljava/lang/String; = "Trying to output an entity reference outside main element tree (in prolog or epilog)"

.field public static WERR_PROLOG_NO_ROOT:Ljava/lang/String; = "Trying to write END_DOCUMENT when document has no root (ie. trying to output empty document)."

.field public static WERR_PROLOG_SECOND_ROOT:Ljava/lang/String; = "Trying to output second root, <{0}>"

.field public static WERR_SPACE_CONTENT:Ljava/lang/String; = "Illegal input: SPACE content has a non-whitespace character (code {0}) in it (index {1})"

.field public static WT_XML_DECL:Ljava/lang/String; = "xml declaration"

.field public static W_MIXED_ENCODINGS:Ljava/lang/String; = "Inconsistent text encoding; declared as \"{0}\" in xml declaration, application had passed \"{1}\""


# direct methods
.method public static throwInternalError()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/aalto/impl/ErrorConsts;->throwInternalError(Ljava/lang/String;)V

    return-void
.end method

.method public static throwInternalError(Ljava/lang/String;)V
    .locals 1

    .line 2
    if-eqz p0, :cond_0

    const-string v0, "Internal error: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Internal error"

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tokenTypeDesc(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "["

    .line 5
    .line 6
    const-string v1, "]"

    .line 7
    .line 8
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_1
    const-string p0, "CDATA"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    const-string p0, "DTD"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string p0, "ENTITY_REFERENCE"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    const-string p0, "END_DOCUMENT"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    const-string p0, "START_DOCUMENT"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    const-string p0, "SPACE"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_7
    const-string p0, "COMMENT"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_8
    const-string p0, "CHARACTERS"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_9
    const-string p0, "PROCESSING_INSTRUCTION"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_a
    const-string p0, "END_ELEMENT"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_b
    const-string p0, "START_ELEMENT"

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
