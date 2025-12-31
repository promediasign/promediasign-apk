.class public Lcom/fasterxml/aalto/impl/LocationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/stax2/XMLStreamLocation2;


# static fields
.field private static final EMPTY:Lcom/fasterxml/aalto/impl/LocationImpl;


# instance fields
.field protected final _charOffset:I

.field protected final _col:I

.field protected transient _desc:Ljava/lang/String;

.field protected final _publicId:Ljava/lang/String;

.field protected final _row:I

.field protected final _systemId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lcom/fasterxml/aalto/impl/LocationImpl;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v1, ""

    const-string v2, ""

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/impl/LocationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v6, Lcom/fasterxml/aalto/impl/LocationImpl;->EMPTY:Lcom/fasterxml/aalto/impl/LocationImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_desc:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_publicId:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_systemId:Ljava/lang/String;

    if-gez p3, :cond_0

    const p3, 0x7fffffff

    :cond_0
    iput p3, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_charOffset:I

    iput p5, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_col:I

    iput p4, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_row:I

    return-void
.end method

.method private appendDesc(Ljava/lang/StringBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_systemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "[row,col,system-id]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_systemId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_publicId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "[row,col,public-id]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_publicId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "[row,col {unknown-source}]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_row:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_col:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static fromZeroBased(Ljava/lang/String;Ljava/lang/String;JII)Lcom/fasterxml/aalto/impl/LocationImpl;
    .locals 6

    long-to-int v3, p2

    new-instance p2, Lcom/fasterxml/aalto/impl/LocationImpl;

    add-int/lit8 v4, p4, 0x1

    add-int/lit8 v5, p5, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/aalto/impl/LocationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object p2
.end method

.method public static getEmptyLocation()Lcom/fasterxml/aalto/impl/LocationImpl;
    .locals 1

    sget-object v0, Lcom/fasterxml/aalto/impl/LocationImpl;->EMPTY:Lcom/fasterxml/aalto/impl/LocationImpl;

    return-object v0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_charOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_col:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_row:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_desc:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/impl/LocationImpl;->appendDesc(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_desc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/impl/LocationImpl;->_desc:Ljava/lang/String;

    return-object v0
.end method
