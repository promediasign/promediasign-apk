.class public final enum Lcom/fasterxml/aalto/sax/SAXProperty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/aalto/sax/SAXProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/aalto/sax/SAXProperty;

.field public static final enum DECLARATION_HANDLER:Lcom/fasterxml/aalto/sax/SAXProperty;

.field public static final enum DOCUMENT_XML_VERSION:Lcom/fasterxml/aalto/sax/SAXProperty;

.field public static final enum DOM_NODE:Lcom/fasterxml/aalto/sax/SAXProperty;

.field public static final enum LEXICAL_HANDLER:Lcom/fasterxml/aalto/sax/SAXProperty;

.field public static final enum XML_STRING:Lcom/fasterxml/aalto/sax/SAXProperty;


# instance fields
.field private final mSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/fasterxml/aalto/sax/SAXProperty;

    const/4 v1, 0x0

    const-string v2, "declaration-handler"

    const-string v3, "DECLARATION_HANDLER"

    invoke-direct {v0, v3, v1, v2}, Lcom/fasterxml/aalto/sax/SAXProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fasterxml/aalto/sax/SAXProperty;->DECLARATION_HANDLER:Lcom/fasterxml/aalto/sax/SAXProperty;

    new-instance v2, Lcom/fasterxml/aalto/sax/SAXProperty;

    const/4 v3, 0x1

    const-string v4, "document-xml-version"

    const-string v5, "DOCUMENT_XML_VERSION"

    invoke-direct {v2, v5, v3, v4}, Lcom/fasterxml/aalto/sax/SAXProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/fasterxml/aalto/sax/SAXProperty;->DOCUMENT_XML_VERSION:Lcom/fasterxml/aalto/sax/SAXProperty;

    new-instance v4, Lcom/fasterxml/aalto/sax/SAXProperty;

    const/4 v5, 0x2

    const-string v6, "dom-node"

    const-string v7, "DOM_NODE"

    invoke-direct {v4, v7, v5, v6}, Lcom/fasterxml/aalto/sax/SAXProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/fasterxml/aalto/sax/SAXProperty;->DOM_NODE:Lcom/fasterxml/aalto/sax/SAXProperty;

    new-instance v6, Lcom/fasterxml/aalto/sax/SAXProperty;

    const/4 v7, 0x3

    const-string v8, "lexical-handler"

    const-string v9, "LEXICAL_HANDLER"

    invoke-direct {v6, v9, v7, v8}, Lcom/fasterxml/aalto/sax/SAXProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/fasterxml/aalto/sax/SAXProperty;->LEXICAL_HANDLER:Lcom/fasterxml/aalto/sax/SAXProperty;

    new-instance v8, Lcom/fasterxml/aalto/sax/SAXProperty;

    const/4 v9, 0x4

    const-string v10, "xml-string"

    const-string v11, "XML_STRING"

    invoke-direct {v8, v11, v9, v10}, Lcom/fasterxml/aalto/sax/SAXProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/fasterxml/aalto/sax/SAXProperty;->XML_STRING:Lcom/fasterxml/aalto/sax/SAXProperty;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/fasterxml/aalto/sax/SAXProperty;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/fasterxml/aalto/sax/SAXProperty;->$VALUES:[Lcom/fasterxml/aalto/sax/SAXProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fasterxml/aalto/sax/SAXProperty;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/aalto/sax/SAXProperty;
    .locals 1

    const-class v0, Lcom/fasterxml/aalto/sax/SAXProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/aalto/sax/SAXProperty;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/aalto/sax/SAXProperty;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/sax/SAXProperty;->$VALUES:[Lcom/fasterxml/aalto/sax/SAXProperty;

    invoke-virtual {v0}, [Lcom/fasterxml/aalto/sax/SAXProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/aalto/sax/SAXProperty;

    return-object v0
.end method
