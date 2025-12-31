.class public interface abstract Lorg/apache/xmlbeans/impl/richParser/XMLStreamReaderExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLStreamReader;


# static fields
.field public static final WS_COLLAPSE:I = 0x3

.field public static final WS_PRESERVE:I = 0x1

.field public static final WS_REPLACE:I = 0x2


# virtual methods
.method public abstract getAttributeBase64Value(I)Ljava/io/InputStream;
.end method

.method public abstract getAttributeBase64Value(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getAttributeBigDecimalValue(I)Ljava/math/BigDecimal;
.end method

.method public abstract getAttributeBigDecimalValue(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigDecimal;
.end method

.method public abstract getAttributeBigIntegerValue(I)Ljava/math/BigInteger;
.end method

.method public abstract getAttributeBigIntegerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract getAttributeBooleanValue(I)Z
.end method

.method public abstract getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAttributeByteValue(I)B
.end method

.method public abstract getAttributeByteValue(Ljava/lang/String;Ljava/lang/String;)B
.end method

.method public abstract getAttributeCalendarValue(I)Lorg/apache/xmlbeans/XmlCalendar;
.end method

.method public abstract getAttributeCalendarValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCalendar;
.end method

.method public abstract getAttributeDateValue(I)Ljava/util/Date;
.end method

.method public abstract getAttributeDateValue(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
.end method

.method public abstract getAttributeDoubleValue(I)D
.end method

.method public abstract getAttributeDoubleValue(Ljava/lang/String;Ljava/lang/String;)D
.end method

.method public abstract getAttributeFloatValue(I)F
.end method

.method public abstract getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method public abstract getAttributeGDateValue(I)Lorg/apache/xmlbeans/GDate;
.end method

.method public abstract getAttributeGDateValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/GDate;
.end method

.method public abstract getAttributeGDurationValue(I)Lorg/apache/xmlbeans/GDuration;
.end method

.method public abstract getAttributeGDurationValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/GDuration;
.end method

.method public abstract getAttributeHexBinaryValue(I)Ljava/io/InputStream;
.end method

.method public abstract getAttributeHexBinaryValue(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getAttributeIntValue(I)I
.end method

.method public abstract getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getAttributeLongValue(I)J
.end method

.method public abstract getAttributeLongValue(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getAttributeQNameValue(I)Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getAttributeQNameValue(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getAttributeShortValue(I)S
.end method

.method public abstract getAttributeShortValue(Ljava/lang/String;Ljava/lang/String;)S
.end method

.method public abstract getAttributeStringValue(I)Ljava/lang/String;
.end method

.method public abstract getAttributeStringValue(II)Ljava/lang/String;
.end method

.method public abstract getAttributeStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeStringValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getBase64Value()Ljava/io/InputStream;
.end method

.method public abstract getBigDecimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method

.method public abstract getBooleanValue()Z
.end method

.method public abstract getByteValue()B
.end method

.method public abstract getCalendarValue()Lorg/apache/xmlbeans/XmlCalendar;
.end method

.method public abstract getDateValue()Ljava/util/Date;
.end method

.method public abstract getDoubleValue()D
.end method

.method public abstract getFloatValue()F
.end method

.method public abstract getGDateValue()Lorg/apache/xmlbeans/GDate;
.end method

.method public abstract getGDurationValue()Lorg/apache/xmlbeans/GDuration;
.end method

.method public abstract getHexBinaryValue()Ljava/io/InputStream;
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getLongValue()J
.end method

.method public abstract getQNameValue()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getShortValue()S
.end method

.method public abstract getStringValue()Ljava/lang/String;
.end method

.method public abstract getStringValue(I)Ljava/lang/String;
.end method

.method public abstract setDefaultValue(Ljava/lang/String;)V
.end method
