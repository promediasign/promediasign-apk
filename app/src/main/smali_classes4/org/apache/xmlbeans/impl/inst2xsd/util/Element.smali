.class public Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final UNBOUNDED:I = -0x1

.field static synthetic class$org$apache$xmlbeans$impl$inst2xsd$util$Element:Ljava/lang/Class;


# instance fields
.field private _comment:Ljava/lang/String;

.field private _isGlobal:Z

.field private _isNillable:Z

.field private _maxOccurs:I

.field private _minOccurs:I

.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _ref:Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

.field private _type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->class$org$apache$xmlbeans$impl$inst2xsd$util$Element:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.inst2xsd.util.Element"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->class$org$apache$xmlbeans$impl$inst2xsd$util$Element:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_ref:Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isGlobal:Z

    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_minOccurs:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_maxOccurs:I

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isNillable:Z

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_comment:Ljava/lang/String;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_comment:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxOccurs()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_maxOccurs:I

    return v0
.end method

.method public getMinOccurs()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_minOccurs:I

    return v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getRef()Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_ref:Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    return-object v0
.end method

.method public getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getRef()Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->getType()Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    :goto_0
    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isGlobal:Z

    return v0
.end method

.method public isNillable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isNillable:Z

    return v0
.end method

.method public isRef()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_ref:Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_comment:Ljava/lang/String;

    return-void
.end method

.method public setGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isGlobal:Z

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_minOccurs:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_maxOccurs:I

    return-void
.end method

.method public setMaxOccurs(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_maxOccurs:I

    return-void
.end method

.method public setMinOccurs(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_minOccurs:I

    return-void
.end method

.method public setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public setNillable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isNillable:Z

    return-void
.end method

.method public setRef(Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isGlobal:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_ref:Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-void
.end method

.method public setType(Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->isRef()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "\n  Element{ _name = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, ", _ref = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_ref:Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string v1, ", _isGlobal = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isGlobal:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    const-string v1, ", _minOccurs = "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_minOccurs:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const-string v1, ", _maxOccurs = "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_maxOccurs:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    const-string v1, ", _isNillable = "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_isNillable:Z

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    const-string v1, ", _comment = "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_comment:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    const-string v1, ",\n    _type = "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    .line 84
    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    const-string v1, "null"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->isGlobal()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    .line 97
    .line 98
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/util/Element;->_type:Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;

    .line 108
    .line 109
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/util/Type;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :goto_1
    const-string v2, "\n  }"

    .line 114
    .line 115
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
