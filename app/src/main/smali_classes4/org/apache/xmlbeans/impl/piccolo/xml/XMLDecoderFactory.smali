.class public Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static decoders:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/UTF8XMLDecoder;-><init>()V

    new-instance v1, Lorg/apache/xmlbeans/impl/piccolo/xml/ASCIIXMLDecoder;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/ASCIIXMLDecoder;-><init>()V

    new-instance v2, Lorg/apache/xmlbeans/impl/piccolo/xml/ISO8859_1XMLDecoder;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/piccolo/xml/ISO8859_1XMLDecoder;-><init>()V

    new-instance v3, Lorg/apache/xmlbeans/impl/piccolo/xml/UnicodeBigXMLDecoder;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/piccolo/xml/UnicodeBigXMLDecoder;-><init>()V

    new-instance v4, Lorg/apache/xmlbeans/impl/piccolo/xml/UnicodeLittleXMLDecoder;

    invoke-direct {v4}, Lorg/apache/xmlbeans/impl/piccolo/xml/UnicodeLittleXMLDecoder;-><init>()V

    sget-object v5, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v6, "UTF8"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v5, "US-ASCII"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v5, "ASCII"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UNICODELITTLE"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UNICODELITTLEUNMARKED"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UTF-16BE"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UTF-16"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UNICODEBIG"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    const-string v1, "UNICODEBIGUNMARKED"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDecoder(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->decoders:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;->newXMLDecoder()Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    .line 21
    .line 22
    const-string v1, "Encoding \'"

    .line 23
    .line 24
    const-string v2, "\' not supported"

    .line 25
    .line 26
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method
