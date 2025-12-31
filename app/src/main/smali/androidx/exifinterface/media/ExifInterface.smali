.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field private static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEBUG:Z

.field static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field private static final NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final PNG_CHUNK_TYPE_EXIF:[B

.field private static final PNG_CHUNK_TYPE_IEND:[B

.field private static final PNG_CHUNK_TYPE_IHDR:[B

.field private static final PNG_SIGNATURE:[B

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8_SIGNATURE:[B

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatterPrimary:Ljava/text/SimpleDateFormat;

.field private static sFormatterSecondary:Ljava/text/SimpleDateFormat;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mMimeType:I

.field private mOffsetToExifData:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpIsFromSeparateMarker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 108

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Integer;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    aput-object v5, v9, v0

    const/4 v5, 0x2

    aput-object v2, v9, v5

    aput-object v7, v9, v1

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v11, v8, [Ljava/lang/Integer;

    aput-object v9, v11, v10

    aput-object v12, v11, v0

    aput-object v13, v11, v5

    aput-object v15, v11, v1

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    filled-new-array {v6, v6, v6}, [I

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    filled-new-array {v8}, [I

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    filled-new-array {v6}, [I

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    new-array v11, v1, [B

    fill-array-data v11, :array_0

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_1

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_2

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_3

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    new-array v11, v4, [B

    fill-array-data v11, :array_4

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v13, 0xa

    new-array v11, v13, [B

    fill-array-data v11, :array_5

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    new-array v11, v6, [B

    fill-array-data v11, :array_6

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_7

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_8

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_9

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_a

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_b

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    new-array v11, v8, [B

    fill-array-data v11, :array_c

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    new-array v11, v1, [B

    fill-array-data v11, :array_d

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    const-string v11, "VP8X"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    const-string v11, "VP8L"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    const-string v11, "VP8 "

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    const-string v11, "ANIM"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    const-string v11, "ANMF"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    const-string v29, "DOUBLE"

    const-string v30, "IFD"

    const-string v17, ""

    const-string v18, "BYTE"

    const-string v19, "STRING"

    const-string v20, "USHORT"

    const-string v21, "ULONG"

    const-string v22, "URATIONAL"

    const-string v23, "SBYTE"

    const-string v24, "UNDEFINED"

    const-string v25, "SSHORT"

    const-string v26, "SLONG"

    const-string v27, "SRATIONAL"

    const-string v28, "SINGLE"

    filled-new-array/range {v17 .. v30}, [Ljava/lang/String;

    move-result-object v11

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v11, 0xe

    new-array v13, v11, [I

    fill-array-data v13, :array_e

    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    new-array v13, v6, [B

    fill-array-data v13, :array_f

    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "NewSubfileType"

    const/16 v6, 0xfe

    invoke-direct {v13, v11, v6, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v6, v11, v10, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ImageWidth"

    const/16 v0, 0x100

    invoke-direct {v10, v11, v0, v1, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v0, "ImageLength"

    const/16 v4, 0x101

    invoke-direct {v11, v0, v4, v1, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v0, v4, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Compression"

    const/16 v8, 0x103

    invoke-direct {v4, v14, v8, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PhotometricInterpretation"

    const/16 v5, 0x106

    invoke-direct {v8, v14, v5, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ImageDescription"

    const/16 v1, 0x10e

    move-object/from16 v29, v7

    const/4 v7, 0x2

    invoke-direct {v5, v14, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    move-object/from16 v30, v12

    const/16 v12, 0x10f

    invoke-direct {v1, v14, v12, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    move-object/from16 v31, v2

    const/16 v2, 0x110

    invoke-direct {v12, v14, v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "StripOffsets"

    const/16 v14, 0x111

    move-object/from16 v33, v3

    move-object/from16 v32, v9

    const/4 v3, 0x4

    const/4 v9, 0x3

    invoke-direct {v2, v7, v14, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Orientation"

    move-object/from16 v34, v15

    const/16 v15, 0x112

    invoke-direct {v3, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    move-object/from16 v35, v7

    const/16 v7, 0x115

    invoke-direct {v14, v15, v7, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "RowsPerStrip"

    move-object/from16 v36, v14

    const/16 v14, 0x116

    move-object/from16 v37, v3

    const/4 v3, 0x4

    invoke-direct {v7, v15, v14, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "StripByteCounts"

    move-object/from16 v38, v7

    const/16 v7, 0x117

    invoke-direct {v14, v15, v7, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "XResolution"

    const/16 v9, 0x11a

    const/4 v15, 0x5

    invoke-direct {v3, v7, v9, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "YResolution"

    move-object/from16 v39, v3

    const/16 v3, 0x11b

    invoke-direct {v7, v9, v3, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v40, v7

    const/4 v7, 0x3

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    move-object/from16 v41, v3

    const/16 v3, 0x128

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "TransferFunction"

    move-object/from16 v42, v9

    const/16 v9, 0x12d

    invoke-direct {v3, v15, v9, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "Software"

    const/16 v15, 0x131

    move-object/from16 v43, v3

    const/4 v3, 0x2

    invoke-direct {v7, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DateTime"

    move-object/from16 v44, v7

    const/16 v7, 0x132

    invoke-direct {v9, v15, v7, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Artist"

    move-object/from16 v45, v9

    const/16 v9, 0x13b

    invoke-direct {v7, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v46, v7

    const/4 v7, 0x5

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v47, v3

    const/16 v3, 0x13f

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubIFDPointer"

    const/16 v15, 0x14a

    move-object/from16 v48, v9

    const/4 v9, 0x4

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v49, v7

    const-string v7, "JPEGInterchangeFormat"

    move-object/from16 v50, v3

    const/16 v3, 0x201

    invoke-direct {v15, v7, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "JPEGInterchangeFormatLength"

    move-object/from16 v51, v15

    const/16 v15, 0x202

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v52, v3

    const/4 v3, 0x5

    invoke-direct {v7, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v53, v7

    const/4 v7, 0x3

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v54, v3

    const/16 v3, 0x213

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v55, v9

    const/4 v9, 0x5

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "Copyright"

    const v15, 0x8298

    move-object/from16 v56, v3

    const/4 v3, 0x2

    invoke-direct {v7, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const v9, 0x8769

    const-string v15, "ExifIFDPointer"

    move-object/from16 v57, v7

    const/4 v7, 0x4

    invoke-direct {v3, v15, v9, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v58, v15

    const-string v15, "GPSInfoIFDPointer"

    move-object/from16 v59, v3

    const v3, 0x8825

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SensorTopBorder"

    invoke-direct {v3, v15, v7, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v60, v3

    const-string v3, "SensorLeftBorder"

    move-object/from16 v61, v9

    const/4 v9, 0x5

    invoke-direct {v15, v3, v9, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "SensorBottomBorder"

    move-object/from16 v62, v15

    const/4 v15, 0x6

    invoke-direct {v3, v9, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SensorRightBorder"

    move-object/from16 v63, v3

    const/4 v3, 0x7

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ISO"

    const/16 v3, 0x17

    move-object/from16 v64, v9

    const/4 v9, 0x3

    invoke-direct {v7, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "JpgFromRaw"

    const/16 v3, 0x2e

    move-object/from16 v65, v7

    const/4 v7, 0x7

    invoke-direct {v9, v15, v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Xmp"

    const/16 v15, 0x2bc

    move-object/from16 v66, v9

    const/4 v9, 0x1

    invoke-direct {v3, v7, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x2a

    new-array v7, v7, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v15, 0x0

    aput-object v13, v7, v15

    aput-object v6, v7, v9

    const/4 v6, 0x2

    aput-object v10, v7, v6

    const/4 v6, 0x3

    aput-object v11, v7, v6

    const/4 v6, 0x4

    aput-object v0, v7, v6

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v8, v7, v0

    const/4 v0, 0x7

    aput-object v5, v7, v0

    const/16 v0, 0x8

    aput-object v1, v7, v0

    const/16 v0, 0x9

    aput-object v12, v7, v0

    const/16 v1, 0xa

    aput-object v2, v7, v1

    const/16 v1, 0xb

    aput-object v37, v7, v1

    const/16 v2, 0xc

    aput-object v36, v7, v2

    const/16 v4, 0xd

    aput-object v38, v7, v4

    const/16 v4, 0xe

    aput-object v14, v7, v4

    const/16 v4, 0xf

    aput-object v39, v7, v4

    const/16 v5, 0x10

    aput-object v40, v7, v5

    const/16 v6, 0x11

    aput-object v41, v7, v6

    const/16 v8, 0x12

    aput-object v42, v7, v8

    const/16 v9, 0x13

    aput-object v43, v7, v9

    const/16 v9, 0x14

    aput-object v44, v7, v9

    const/16 v9, 0x15

    aput-object v45, v7, v9

    const/16 v9, 0x16

    aput-object v46, v7, v9

    const/16 v9, 0x17

    aput-object v47, v7, v9

    const/16 v9, 0x18

    aput-object v48, v7, v9

    const/16 v9, 0x19

    aput-object v50, v7, v9

    const/16 v9, 0x1a

    aput-object v51, v7, v9

    const/16 v9, 0x1b

    aput-object v52, v7, v9

    const/16 v9, 0x1c

    aput-object v53, v7, v9

    const/16 v9, 0x1d

    aput-object v54, v7, v9

    const/16 v9, 0x1e

    aput-object v55, v7, v9

    const/16 v9, 0x1f

    aput-object v56, v7, v9

    const/16 v9, 0x20

    aput-object v57, v7, v9

    const/16 v9, 0x21

    aput-object v59, v7, v9

    const/16 v9, 0x22

    aput-object v61, v7, v9

    const/16 v9, 0x23

    aput-object v60, v7, v9

    const/16 v9, 0x24

    aput-object v62, v7, v9

    const/16 v9, 0x25

    aput-object v63, v7, v9

    const/16 v9, 0x26

    aput-object v64, v7, v9

    const/16 v9, 0x27

    aput-object v65, v7, v9

    const/16 v9, 0x28

    aput-object v66, v7, v9

    const/16 v9, 0x29

    aput-object v3, v7, v9

    sput-object v7, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "ExposureTime"

    const v10, 0x829a

    const/4 v11, 0x5

    invoke-direct {v3, v9, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "FNumber"

    const v12, 0x829d

    invoke-direct {v9, v10, v12, v11}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExposureProgram"

    const v12, 0x8822

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SpectralSensitivity"

    const v14, 0x8824

    const/4 v15, 0x2

    invoke-direct {v11, v12, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PhotographicSensitivity"

    const v15, 0x8827

    invoke-direct {v12, v14, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "OECF"

    const v8, 0x8828

    const/4 v6, 0x7

    invoke-direct {v14, v15, v8, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "SensitivityType"

    const v15, 0x8830

    invoke-direct {v6, v8, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "StandardOutputSensitivity"

    const v15, 0x8831

    const/4 v5, 0x4

    invoke-direct {v8, v13, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "RecommendedExposureIndex"

    const v4, 0x8832

    invoke-direct {v13, v15, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ISOSpeed"

    const v2, 0x8833

    invoke-direct {v4, v15, v2, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ISOSpeedLatitudeyyy"

    const v1, 0x8834

    invoke-direct {v2, v15, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ISOSpeedLatitudezzz"

    const v0, 0x8835

    invoke-direct {v1, v15, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "ExifVersion"

    const v15, 0x9000

    move-object/from16 v43, v7

    const/4 v7, 0x2

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DateTimeOriginal"

    move-object/from16 v44, v0

    const v0, 0x9003

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DateTimeDigitized"

    move-object/from16 v45, v5

    const v5, 0x9004

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "OffsetTime"

    move-object/from16 v46, v0

    const v0, 0x9010

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "OffsetTimeOriginal"

    move-object/from16 v47, v5

    const v5, 0x9011

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "OffsetTimeDigitized"

    move-object/from16 v48, v0

    const v0, 0x9012

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ComponentsConfiguration"

    const v15, 0x9101

    move-object/from16 v50, v5

    const/4 v5, 0x7

    invoke-direct {v0, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "CompressedBitsPerPixel"

    const v15, 0x9102

    move-object/from16 v51, v0

    const/4 v0, 0x5

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ShutterSpeedValue"

    const v0, 0x9201

    move-object/from16 v52, v5

    const/16 v5, 0xa

    invoke-direct {v7, v15, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ApertureValue"

    const v5, 0x9202

    move-object/from16 v53, v7

    const/4 v7, 0x5

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "BrightnessValue"

    const v15, 0x9203

    move-object/from16 v54, v0

    const/16 v0, 0xa

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ExposureBiasValue"

    move-object/from16 v55, v5

    const v5, 0x9204

    invoke-direct {v7, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "MaxApertureValue"

    const v15, 0x9205

    move-object/from16 v56, v7

    const/4 v7, 0x5

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SubjectDistance"

    move-object/from16 v57, v0

    const v0, 0x9206

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "MeteringMode"

    const v15, 0x9207

    move-object/from16 v59, v5

    const/4 v5, 0x3

    invoke-direct {v0, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "LightSource"

    move-object/from16 v60, v0

    const v0, 0x9208

    invoke-direct {v7, v15, v0, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Flash"

    move-object/from16 v61, v7

    const v7, 0x9209

    invoke-direct {v0, v15, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "FocalLength"

    const v5, 0x920a

    move-object/from16 v62, v0

    const/4 v0, 0x5

    invoke-direct {v7, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "SubjectArea"

    const v15, 0x9214

    move-object/from16 v63, v7

    const/4 v7, 0x3

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "MakerNote"

    const v15, 0x927c

    move-object/from16 v64, v0

    const/4 v0, 0x7

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "UserComment"

    move-object/from16 v65, v5

    const v5, 0x9286

    invoke-direct {v7, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "SubSecTime"

    const v15, 0x9290

    move-object/from16 v66, v7

    const/4 v7, 0x2

    invoke-direct {v0, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SubSecTimeOriginal"

    move-object/from16 v67, v0

    const v0, 0x9291

    invoke-direct {v5, v15, v0, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SubSecTimeDigitized"

    move-object/from16 v68, v5

    const v5, 0x9292

    invoke-direct {v0, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FlashpixVersion"

    const v15, 0xa000

    move-object/from16 v69, v0

    const/4 v0, 0x7

    invoke-direct {v5, v7, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ColorSpace"

    const v15, 0xa001

    move-object/from16 v70, v5

    const/4 v5, 0x3

    invoke-direct {v0, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "PixelXDimension"

    move-object/from16 v71, v0

    const v0, 0xa002

    move-object/from16 v72, v1

    const/4 v1, 0x4

    invoke-direct {v7, v15, v0, v5, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "PixelYDimension"

    move-object/from16 v73, v7

    const v7, 0xa003

    invoke-direct {v0, v15, v7, v5, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "RelatedSoundFile"

    const v15, 0xa004

    const/4 v1, 0x2

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "InteroperabilityIFDPointer"

    const v15, 0xa005

    move-object/from16 v74, v5

    const/4 v5, 0x4

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FlashEnergy"

    const v15, 0xa20b

    move-object/from16 v75, v1

    const/4 v1, 0x5

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SpatialFrequencyResponse"

    const v1, 0xa20c

    move-object/from16 v76, v5

    const/4 v5, 0x7

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "FocalPlaneXResolution"

    const v15, 0xa20e

    move-object/from16 v77, v7

    const/4 v7, 0x5

    invoke-direct {v1, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "FocalPlaneYResolution"

    move-object/from16 v78, v1

    const v1, 0xa20f

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    move-object/from16 v79, v5

    const/4 v5, 0x3

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SubjectLocation"

    move-object/from16 v80, v1

    const v1, 0xa214

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ExposureIndex"

    const v5, 0xa215

    move-object/from16 v81, v7

    const/4 v7, 0x5

    invoke-direct {v1, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SensingMethod"

    const v15, 0xa217

    move-object/from16 v82, v1

    const/4 v1, 0x3

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "FileSource"

    const v15, 0xa300

    move-object/from16 v83, v5

    const/4 v5, 0x7

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SceneType"

    move-object/from16 v84, v1

    const v1, 0xa301

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "CFAPattern"

    move-object/from16 v85, v7

    const v7, 0xa302

    invoke-direct {v1, v15, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "CustomRendered"

    const v15, 0xa401

    move-object/from16 v86, v1

    const/4 v1, 0x3

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ExposureMode"

    move-object/from16 v87, v5

    const v5, 0xa402

    invoke-direct {v7, v15, v5, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "WhiteBalance"

    move-object/from16 v88, v7

    const v7, 0xa403

    invoke-direct {v5, v15, v7, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DigitalZoomRatio"

    const v1, 0xa404

    move-object/from16 v89, v5

    const/4 v5, 0x5

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    move-object/from16 v90, v7

    const/4 v7, 0x3

    invoke-direct {v1, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SceneCaptureType"

    move-object/from16 v91, v1

    const v1, 0xa406

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GainControl"

    move-object/from16 v92, v5

    const v5, 0xa407

    invoke-direct {v1, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Contrast"

    move-object/from16 v93, v1

    const v1, 0xa408

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Saturation"

    move-object/from16 v94, v5

    const v5, 0xa409

    invoke-direct {v1, v15, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Sharpness"

    move-object/from16 v95, v1

    const v1, 0xa40a

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DeviceSettingDescription"

    const v7, 0xa40b

    move-object/from16 v96, v5

    const/4 v5, 0x7

    invoke-direct {v1, v15, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "SubjectDistanceRange"

    const v15, 0xa40c

    move-object/from16 v97, v1

    const/4 v1, 0x3

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ImageUniqueID"

    const v15, 0xa420

    move-object/from16 v98, v5

    const/4 v5, 0x2

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "CameraOwnerName"

    move-object/from16 v99, v1

    const v1, 0xa430

    invoke-direct {v7, v15, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "BodySerialNumber"

    move-object/from16 v100, v7

    const v7, 0xa431

    invoke-direct {v1, v15, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "LensSpecification"

    const v5, 0xa432

    move-object/from16 v101, v1

    const/4 v1, 0x5

    invoke-direct {v7, v15, v5, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "LensMake"

    const v15, 0xa433

    move-object/from16 v102, v7

    const/4 v7, 0x2

    invoke-direct {v1, v5, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "LensModel"

    move-object/from16 v103, v1

    const v1, 0xa434

    invoke-direct {v5, v15, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "Gamma"

    const v15, 0xa500

    move-object/from16 v104, v5

    const/4 v5, 0x5

    invoke-direct {v1, v7, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "DNGVersion"

    const v15, 0xc612

    move-object/from16 v105, v1

    const/4 v1, 0x1

    invoke-direct {v5, v7, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DefaultCropSize"

    const v1, 0xc620

    move-object/from16 v107, v0

    move-object/from16 v106, v5

    const/4 v0, 0x4

    const/4 v5, 0x3

    invoke-direct {v7, v15, v1, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x4a

    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v15, 0x0

    aput-object v3, v1, v15

    const/4 v3, 0x1

    aput-object v9, v1, v3

    const/4 v3, 0x2

    aput-object v10, v1, v3

    aput-object v11, v1, v5

    aput-object v12, v1, v0

    const/4 v0, 0x5

    aput-object v14, v1, v0

    const/4 v0, 0x6

    aput-object v6, v1, v0

    const/4 v0, 0x7

    aput-object v8, v1, v0

    const/16 v0, 0x8

    aput-object v13, v1, v0

    const/16 v0, 0x9

    aput-object v4, v1, v0

    const/16 v0, 0xa

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v72, v1, v0

    const/16 v0, 0xc

    aput-object v44, v1, v0

    const/16 v0, 0xd

    aput-object v45, v1, v0

    const/16 v0, 0xe

    aput-object v46, v1, v0

    const/16 v0, 0xf

    aput-object v47, v1, v0

    const/16 v0, 0x10

    aput-object v48, v1, v0

    const/16 v0, 0x11

    aput-object v50, v1, v0

    const/16 v0, 0x12

    aput-object v51, v1, v0

    const/16 v0, 0x13

    aput-object v52, v1, v0

    const/16 v0, 0x14

    aput-object v53, v1, v0

    const/16 v0, 0x15

    aput-object v54, v1, v0

    const/16 v0, 0x16

    aput-object v55, v1, v0

    const/16 v0, 0x17

    aput-object v56, v1, v0

    const/16 v0, 0x18

    aput-object v57, v1, v0

    const/16 v0, 0x19

    aput-object v59, v1, v0

    const/16 v0, 0x1a

    aput-object v60, v1, v0

    const/16 v0, 0x1b

    aput-object v61, v1, v0

    const/16 v0, 0x1c

    aput-object v62, v1, v0

    const/16 v0, 0x1d

    aput-object v63, v1, v0

    const/16 v0, 0x1e

    aput-object v64, v1, v0

    const/16 v0, 0x1f

    aput-object v65, v1, v0

    const/16 v0, 0x20

    aput-object v66, v1, v0

    const/16 v0, 0x21

    aput-object v67, v1, v0

    const/16 v0, 0x22

    aput-object v68, v1, v0

    const/16 v0, 0x23

    aput-object v69, v1, v0

    const/16 v0, 0x24

    aput-object v70, v1, v0

    const/16 v0, 0x25

    aput-object v71, v1, v0

    const/16 v0, 0x26

    aput-object v73, v1, v0

    const/16 v0, 0x27

    aput-object v107, v1, v0

    const/16 v0, 0x28

    aput-object v74, v1, v0

    const/16 v0, 0x29

    aput-object v75, v1, v0

    const/16 v0, 0x2a

    aput-object v76, v1, v0

    const/16 v0, 0x2b

    aput-object v77, v1, v0

    const/16 v0, 0x2c

    aput-object v78, v1, v0

    const/16 v0, 0x2d

    aput-object v79, v1, v0

    const/16 v0, 0x2e

    aput-object v80, v1, v0

    const/16 v0, 0x2f

    aput-object v81, v1, v0

    const/16 v0, 0x30

    aput-object v82, v1, v0

    const/16 v0, 0x31

    aput-object v83, v1, v0

    const/16 v0, 0x32

    aput-object v84, v1, v0

    const/16 v0, 0x33

    aput-object v85, v1, v0

    const/16 v0, 0x34

    aput-object v86, v1, v0

    const/16 v0, 0x35

    aput-object v87, v1, v0

    const/16 v0, 0x36

    aput-object v88, v1, v0

    const/16 v0, 0x37

    aput-object v89, v1, v0

    const/16 v0, 0x38

    aput-object v90, v1, v0

    const/16 v0, 0x39

    aput-object v91, v1, v0

    const/16 v0, 0x3a

    aput-object v92, v1, v0

    const/16 v0, 0x3b

    aput-object v93, v1, v0

    const/16 v0, 0x3c

    aput-object v94, v1, v0

    const/16 v0, 0x3d

    aput-object v95, v1, v0

    const/16 v0, 0x3e

    aput-object v96, v1, v0

    const/16 v0, 0x3f

    aput-object v97, v1, v0

    const/16 v0, 0x40

    aput-object v98, v1, v0

    const/16 v0, 0x41

    aput-object v99, v1, v0

    const/16 v0, 0x42

    aput-object v100, v1, v0

    const/16 v0, 0x43

    aput-object v101, v1, v0

    const/16 v0, 0x44

    aput-object v102, v1, v0

    const/16 v0, 0x45

    aput-object v103, v1, v0

    const/16 v0, 0x46

    aput-object v104, v1, v0

    const/16 v0, 0x47

    aput-object v105, v1, v0

    const/16 v0, 0x48

    aput-object v106, v1, v0

    const/16 v0, 0x49

    aput-object v7, v1, v0

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "GPSVersionID"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "GPSLatitudeRef"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "GPSLatitude"

    const/4 v6, 0x5

    const/16 v7, 0xa

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSLongitudeRef"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSLongitude"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "GPSAltitudeRef"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v6, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "GPSAltitude"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSTimeStamp"

    const/4 v11, 0x7

    invoke-direct {v9, v10, v11, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSSatellites"

    const/16 v11, 0x8

    const/4 v12, 0x2

    invoke-direct {v6, v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSStatus"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    const/16 v12, 0xb

    const/4 v15, 0x5

    invoke-direct {v13, v14, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    move-object/from16 v16, v1

    const/16 v1, 0xc

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    move-object/from16 v44, v12

    const/16 v12, 0xd

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    move-object/from16 v45, v1

    const/16 v1, 0xe

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    move-object/from16 v46, v12

    const/16 v12, 0xf

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    move-object/from16 v47, v1

    const/16 v1, 0x10

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    move-object/from16 v48, v12

    const/16 v12, 0x11

    const/4 v15, 0x5

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    move-object/from16 v50, v1

    const/16 v1, 0x12

    const/4 v15, 0x2

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    move-object/from16 v51, v12

    const/16 v12, 0x13

    invoke-direct {v1, v14, v12, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    move-object/from16 v52, v1

    const/4 v1, 0x5

    invoke-direct {v12, v14, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSDestLongitudeRef"

    const/16 v1, 0x15

    move-object/from16 v53, v12

    const/4 v12, 0x2

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSDestLongitude"

    const/16 v12, 0x16

    move-object/from16 v54, v14

    const/4 v14, 0x5

    invoke-direct {v1, v15, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSDestBearingRef"

    move-object/from16 v55, v1

    const/4 v1, 0x2

    const/16 v14, 0x17

    invoke-direct {v12, v15, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSDestBearing"

    const/16 v1, 0x18

    move-object/from16 v56, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSDestDistanceRef"

    const/16 v12, 0x19

    move-object/from16 v57, v14

    const/4 v14, 0x2

    invoke-direct {v1, v15, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistance"

    move-object/from16 v59, v1

    const/16 v1, 0x1a

    const/4 v15, 0x5

    invoke-direct {v12, v14, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    move-object/from16 v60, v12

    const/4 v12, 0x7

    invoke-direct {v1, v14, v15, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSAreaInformation"

    move-object/from16 v61, v1

    const/16 v1, 0x1c

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDateStamp"

    const/16 v15, 0x1d

    move-object/from16 v62, v14

    const/4 v14, 0x2

    invoke-direct {v1, v12, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    move-object/from16 v63, v1

    const/4 v1, 0x3

    invoke-direct {v12, v14, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "GPSHPositioningError"

    const/16 v1, 0x1f

    move-object/from16 v64, v12

    const/4 v12, 0x5

    invoke-direct {v14, v15, v1, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v15, 0x0

    aput-object v0, v1, v15

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    aput-object v7, v1, v12

    const/4 v0, 0x6

    aput-object v8, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    const/16 v0, 0x8

    aput-object v6, v1, v0

    const/16 v0, 0x9

    aput-object v10, v1, v0

    const/16 v0, 0xa

    aput-object v11, v1, v0

    const/16 v0, 0xb

    aput-object v13, v1, v0

    const/16 v0, 0xc

    aput-object v44, v1, v0

    const/16 v0, 0xd

    aput-object v45, v1, v0

    const/16 v0, 0xe

    aput-object v46, v1, v0

    const/16 v0, 0xf

    aput-object v47, v1, v0

    const/16 v0, 0x10

    aput-object v48, v1, v0

    const/16 v0, 0x11

    aput-object v50, v1, v0

    const/16 v0, 0x12

    aput-object v51, v1, v0

    const/16 v0, 0x13

    aput-object v52, v1, v0

    const/16 v0, 0x14

    aput-object v53, v1, v0

    const/16 v0, 0x15

    aput-object v54, v1, v0

    const/16 v0, 0x16

    aput-object v55, v1, v0

    const/16 v0, 0x17

    aput-object v56, v1, v0

    const/16 v0, 0x18

    aput-object v57, v1, v0

    const/16 v0, 0x19

    aput-object v59, v1, v0

    const/16 v0, 0x1a

    aput-object v60, v1, v0

    const/16 v0, 0x1b

    aput-object v61, v1, v0

    const/16 v0, 0x1c

    aput-object v62, v1, v0

    const/16 v0, 0x1d

    aput-object v63, v1, v0

    const/16 v0, 0x1e

    aput-object v64, v1, v0

    const/16 v0, 0x1f

    aput-object v14, v1, v0

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "InteroperabilityIndex"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v2, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "NewSubfileType"

    const/16 v4, 0xfe

    const/4 v5, 0x4

    invoke-direct {v0, v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v4, "SubfileType"

    const/16 v6, 0xff

    invoke-direct {v3, v4, v6, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ThumbnailImageWidth"

    const/4 v7, 0x3

    const/16 v8, 0x100

    invoke-direct {v4, v6, v8, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageLength"

    const/16 v9, 0x101

    invoke-direct {v6, v8, v9, v7, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v8, "BitsPerSample"

    const/16 v9, 0x102

    invoke-direct {v5, v8, v9, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v9, "Compression"

    const/16 v10, 0x103

    invoke-direct {v8, v9, v10, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "PhotometricInterpretation"

    const/16 v11, 0x106

    invoke-direct {v9, v10, v11, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageDescription"

    const/16 v11, 0x10e

    const/4 v12, 0x2

    invoke-direct {v7, v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Make"

    const/16 v13, 0x10f

    invoke-direct {v10, v11, v13, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v14, 0x110

    invoke-direct {v11, v13, v14, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v14, v35

    const/4 v13, 0x3

    const/16 v15, 0x111

    move-object/from16 v35, v2

    const/4 v2, 0x4

    invoke-direct {v12, v14, v15, v13, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ThumbnailOrientation"

    move-object/from16 v44, v1

    const/16 v1, 0x112

    invoke-direct {v2, v15, v1, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    move-object/from16 v45, v14

    const/16 v14, 0x115

    invoke-direct {v1, v15, v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "RowsPerStrip"

    move-object/from16 v46, v1

    const/16 v1, 0x116

    move-object/from16 v47, v2

    const/4 v2, 0x4

    invoke-direct {v14, v15, v1, v13, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "StripByteCounts"

    move-object/from16 v48, v14

    const/16 v14, 0x117

    invoke-direct {v1, v15, v14, v13, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "XResolution"

    const/16 v14, 0x11a

    const/4 v15, 0x5

    invoke-direct {v2, v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "YResolution"

    move-object/from16 v50, v2

    const/16 v2, 0x11b

    invoke-direct {v13, v14, v2, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PlanarConfiguration"

    const/16 v15, 0x11c

    move-object/from16 v51, v13

    const/4 v13, 0x3

    invoke-direct {v2, v14, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    move-object/from16 v52, v2

    const/16 v2, 0x128

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "TransferFunction"

    move-object/from16 v53, v14

    const/16 v14, 0x12d

    invoke-direct {v2, v15, v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Software"

    const/16 v15, 0x131

    move-object/from16 v54, v2

    const/4 v2, 0x2

    invoke-direct {v13, v14, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DateTime"

    move-object/from16 v55, v13

    const/16 v13, 0x132

    invoke-direct {v14, v15, v13, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Artist"

    move-object/from16 v56, v14

    const/16 v14, 0x13b

    invoke-direct {v13, v15, v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    move-object/from16 v57, v13

    const/4 v13, 0x5

    invoke-direct {v2, v14, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    move-object/from16 v59, v2

    const/16 v2, 0x13f

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v13, v49

    const/16 v15, 0x14a

    move-object/from16 v49, v14

    const/4 v14, 0x4

    invoke-direct {v2, v13, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v60, v13

    const-string v13, "JPEGInterchangeFormat"

    move-object/from16 v61, v2

    const/16 v2, 0x201

    invoke-direct {v15, v13, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormatLength"

    move-object/from16 v62, v15

    const/16 v15, 0x202

    invoke-direct {v2, v13, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "YCbCrCoefficients"

    const/16 v15, 0x211

    move-object/from16 v63, v2

    const/4 v2, 0x5

    invoke-direct {v13, v14, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "YCbCrSubSampling"

    const/16 v15, 0x212

    move-object/from16 v64, v13

    const/4 v13, 0x3

    invoke-direct {v2, v14, v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "YCbCrPositioning"

    move-object/from16 v65, v2

    const/16 v2, 0x213

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    move-object/from16 v66, v14

    const/4 v14, 0x5

    invoke-direct {v2, v13, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Copyright"

    const v15, 0x8298

    move-object/from16 v67, v2

    const/4 v2, 0x2

    invoke-direct {v13, v14, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const v14, 0x8769

    move-object/from16 v15, v58

    move-object/from16 v58, v13

    const/4 v13, 0x4

    invoke-direct {v2, v15, v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v68, v15

    const-string v15, "GPSInfoIFDPointer"

    move-object/from16 v69, v2

    const v2, 0x8825

    invoke-direct {v14, v15, v2, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DNGVersion"

    const v13, 0xc612

    move-object/from16 v70, v14

    const/4 v14, 0x1

    invoke-direct {v2, v15, v13, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "DefaultCropSize"

    const v14, 0xc620

    move-object/from16 v72, v1

    move-object/from16 v71, v2

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v13, v15, v14, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v14, 0x25

    new-array v14, v14, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v3, v14, v0

    const/4 v0, 0x2

    aput-object v4, v14, v0

    aput-object v6, v14, v2

    aput-object v5, v14, v1

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v9, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    const/16 v0, 0xb

    aput-object v47, v14, v0

    const/16 v0, 0xc

    aput-object v46, v14, v0

    const/16 v0, 0xd

    aput-object v48, v14, v0

    const/16 v0, 0xe

    aput-object v72, v14, v0

    const/16 v0, 0xf

    aput-object v50, v14, v0

    const/16 v0, 0x10

    aput-object v51, v14, v0

    const/16 v0, 0x11

    aput-object v52, v14, v0

    const/16 v0, 0x12

    aput-object v53, v14, v0

    const/16 v0, 0x13

    aput-object v54, v14, v0

    const/16 v0, 0x14

    aput-object v55, v14, v0

    const/16 v0, 0x15

    aput-object v56, v14, v0

    const/16 v0, 0x16

    aput-object v57, v14, v0

    const/16 v0, 0x17

    aput-object v59, v14, v0

    const/16 v0, 0x18

    aput-object v49, v14, v0

    const/16 v0, 0x19

    aput-object v61, v14, v0

    const/16 v0, 0x1a

    aput-object v62, v14, v0

    const/16 v0, 0x1b

    aput-object v63, v14, v0

    const/16 v0, 0x1c

    aput-object v64, v14, v0

    const/16 v0, 0x1d

    aput-object v65, v14, v0

    const/16 v0, 0x1e

    aput-object v66, v14, v0

    const/16 v0, 0x1f

    aput-object v67, v14, v0

    const/16 v0, 0x20

    aput-object v58, v14, v0

    const/16 v0, 0x21

    aput-object v69, v14, v0

    const/16 v0, 0x22

    aput-object v70, v14, v0

    const/16 v0, 0x23

    aput-object v71, v14, v0

    const/16 v0, 0x24

    aput-object v13, v14, v0

    sput-object v14, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v2, v45

    const/4 v1, 0x3

    const/16 v3, 0x111

    invoke-direct {v0, v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v1, "ThumbnailImage"

    const/4 v2, 0x7

    const/16 v3, 0x100

    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "CameraSettingsIFDPointer"

    const/16 v3, 0x2020

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v5, 0x2040

    invoke-direct {v2, v3, v5, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    new-array v5, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    aput-object v2, v5, v1

    sput-object v5, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "PreviewImageStart"

    const/16 v7, 0x101

    invoke-direct {v2, v6, v7, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "PreviewImageLength"

    const/16 v8, 0x102

    invoke-direct {v6, v7, v8, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v4, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v2, v4, v3

    aput-object v6, v4, v0

    sput-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v2, "AspectFrame"

    const/16 v6, 0x1113

    const/4 v7, 0x3

    invoke-direct {v1, v2, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v2, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v1, v2, v3

    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const/16 v8, 0x37

    invoke-direct {v1, v6, v8, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-array v6, v0, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v1, v6, v3

    sput-object v6, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v1, 0xa

    new-array v1, v1, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v43, v1, v3

    aput-object v16, v1, v0

    const/4 v0, 0x2

    aput-object v44, v1, v0

    aput-object v35, v1, v7

    const/4 v0, 0x4

    aput-object v14, v1, v0

    const/4 v3, 0x5

    aput-object v43, v1, v3

    const/4 v3, 0x6

    aput-object v5, v1, v3

    const/4 v3, 0x7

    aput-object v4, v1, v3

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object v6, v1, v2

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    move-object/from16 v3, v60

    const/16 v4, 0x14a

    invoke-direct {v2, v3, v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const v4, 0x8769

    move-object/from16 v5, v68

    invoke-direct {v3, v5, v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v6, 0x8825

    invoke-direct {v4, v5, v6, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v5, v6, v7, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v6, "CameraSettingsIFDPointer"

    const/16 v7, 0x2020

    const/4 v8, 0x1

    invoke-direct {v0, v6, v7, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v7, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v6, v7, v9, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    new-array v7, v7, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    aput-object v3, v7, v8

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v0, v7, v2

    const/4 v0, 0x5

    aput-object v6, v7, v0

    sput-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v1

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    array-length v0, v1

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "SubjectDistance"

    const-string v2, "GPSTimeStamp"

    const-string v3, "FNumber"

    const-string v4, "DigitalZoomRatio"

    const-string v5, "ExposureTime"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v15, 0x0

    :goto_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    if-ge v15, v1, :cond_1

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v15

    aget-object v0, v0, v15

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget v5, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v4, v4, v15

    iget-object v5, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v34

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v3

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_f
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    new-instance p2, Ljava/io/BufferedInputStream;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v2, v2

    invoke-direct {p2, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_1

    :cond_1
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    :goto_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    :cond_2
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inputStream cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2

    if-eqz p1, :cond_4

    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "PhotographicSensitivity"

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 13

    const-string v0, "yes"

    const-string v1, "Heif meta: "

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_e

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$1;

    invoke-direct {v3, p0, p1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x1d

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x1e

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    const-string v9, "ImageWidth"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    const-string v9, "ImageLength"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v8, 0x6

    if-eqz v6, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_6

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_5

    const/16 v10, 0x10e

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/16 v9, 0x8

    goto :goto_1

    :cond_5
    const/4 v9, 0x3

    goto :goto_1

    :cond_6
    const/4 v9, 0x6

    :goto_1
    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v7

    const-string v11, "Orientation"

    iget-object v12, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v8, :cond_b

    int-to-long v9, v3

    invoke-virtual {p1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    new-array v9, v8, [B

    invoke-virtual {p1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v8, :cond_a

    add-int/2addr v3, v8

    add-int/lit8 v4, v4, -0x6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_9

    new-array v8, v4, [B

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_8

    iput v3, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    invoke-direct {p0, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rotation "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getJpegAttributes starting with: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const-string v5, "Invalid marker: "

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    const/16 v8, -0x28

    if-ne v7, v8, :cond_10

    const/4 v3, 0x2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found JPEG segment indicator: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v9, v5, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v8, -0x27

    if-eq v5, v8, :cond_e

    const/16 v8, -0x26

    if-ne v5, v8, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    const/4 v10, 0x4

    add-int/2addr v3, v10

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "JPEG segment: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v11, v5, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (length: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v7, "Invalid length"

    if-ltz v9, :cond_d

    const/16 v11, -0x1f

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v5, v11, :cond_9

    const/4 v11, -0x2

    if-eq v5, v11, :cond_6

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    :goto_1
    move-object/from16 v20, v7

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    if-eq v2, v10, :cond_4

    const-string v9, "ImageLength"

    goto :goto_2

    :cond_4
    const-string v9, "ThumbnailImageLength"

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    if-eq v2, v10, :cond_5

    const-string v9, "ImageWidth"

    goto :goto_3

    :cond_5
    const-string v9, "ThumbnailImageWidth"

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    int-to-long v10, v10

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v8, -0x7

    goto :goto_1

    :cond_6
    new-array v5, v9, [B

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v9, :cond_8

    const-string v8, "UserComment"

    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v12

    new-instance v10, Ljava/lang/String;

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v10, v5, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v9, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v20, v7

    :goto_4
    const/4 v9, 0x0

    goto :goto_6

    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-array v5, v9, [B

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int v8, v3, v9

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v5, v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v11

    if-eqz v11, :cond_b

    array-length v11, v10

    invoke-static {v5, v11, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int v3, p2, v3

    array-length v9, v10

    add-int/2addr v3, v9

    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    invoke-direct {v0, v5, v2}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v3, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    :cond_a
    move-object/from16 v20, v7

    goto :goto_5

    :cond_b
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v5, v10}, Landroidx/exifinterface/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v11

    if-eqz v11, :cond_a

    array-length v11, v10

    add-int/2addr v3, v11

    array-length v10, v10

    invoke-static {v5, v10, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    const-string v9, "Xmp"

    invoke-virtual {v0, v9}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v13

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v15, v5

    move-object/from16 v20, v7

    int-to-long v6, v3

    const/4 v3, 0x1

    move-object v14, v11

    move/from16 v16, v15

    move v15, v3

    move-wide/from16 v17, v6

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v19}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v12, v0, Landroidx/exifinterface/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    :goto_5
    move v3, v8

    goto :goto_4

    :goto_6
    if-ltz v9, :cond_c

    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/2addr v3, v9

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/io/IOException;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v2, v7

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid marker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isHeifFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    return p1

    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    return p1

    :cond_3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    return p1

    :cond_4
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isPngFormat([B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xd

    return p1

    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isWebpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xe

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v2, p1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v4, v3

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_1

    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_6

    const/4 v4, 0x3

    aget v4, p1, v4

    aget p1, p1, v0

    if-le v4, p1, :cond_6

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    sub-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_4

    add-int/2addr v1, v4

    sub-int v4, v1, v4

    sub-int/2addr v1, v4

    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v2

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid aspect frame values. frame="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method private getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPngAttributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    array-length v0, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x4

    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_7

    add-int/lit8 v0, v0, 0x8

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_5

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p1

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v4, v3

    if-ne v4, p1, :cond_4

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    :goto_2
    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 7

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v1, "ExifInterface"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRafAttributes starting with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v2, 0x54

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/4 v2, 0x4

    new-array v3, v2, [B

    new-array v4, v2, [B

    new-array v2, v2, [B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v4, v4, [B

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    const/4 v4, 0x5

    invoke-direct {p0, v5, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "numberOfDirectoryEntry: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget v6, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v4, v6, :cond_3

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageWidth"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Updated to length: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->validateImages()V

    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    const/16 p1, 0x9

    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 4

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRw2Attributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "JpgFromRaw"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-wide v2, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    long-to-int p1, v2

    const/4 v2, 0x5

    invoke-direct {p0, v1, p1, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ISO"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 2

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    array-length p1, v0

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    return-void
.end method

.method private getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWebpAttributes starting with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x4

    :try_start_0
    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v2, :cond_6

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    add-int/lit8 v1, v1, 0x8

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v2, :cond_1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/2addr v1, v2

    if-ne v1, v0, :cond_4

    :goto_1
    return-void

    :cond_4
    if-gt v1, v0, :cond_5

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered WebP file with invalid chunk size"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 4

    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    :cond_0
    if-lez v0, :cond_2

    if-lez p2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    new-array v1, p2, [B

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    :cond_1
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExifInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v3

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v2

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_a

    array-length v5, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_9

    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v5, v3

    array-length v6, v2

    if-eq v5, v6, :cond_2

    const-string v1, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    array-length v5, v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_3

    aget-wide v10, v2, v9

    add-long/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    long-to-int v5, v7

    new-array v7, v5, [B

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    array-length v12, v3

    if-ge v9, v12, :cond_8

    aget-wide v12, v3, v9

    long-to-int v13, v12

    aget-wide v14, v2, v9

    long-to-int v12, v14

    array-length v14, v3

    sub-int/2addr v14, v8

    if-ge v9, v14, :cond_4

    add-int v14, v13, v12

    int-to-long v14, v14

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, v3, v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_4

    iput-boolean v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    :cond_4
    sub-int/2addr v13, v10

    if-gez v13, :cond_5

    const-string v1, "Invalid strip offset value"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    int-to-long v14, v13

    invoke-virtual {v1, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v16

    const-string v8, " bytes."

    cmp-long v18, v16, v14

    if-eqz v18, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to skip "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    add-int/2addr v10, v13

    new-array v13, v12, [B

    invoke-virtual {v1, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-eq v14, v12, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    add-int/2addr v10, v12

    invoke-static {v13, v6, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_8
    iput-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    iget-boolean v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v1, :cond_b

    aget-wide v1, v3, v6

    long-to-int v2, v1

    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    iput v5, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    goto :goto_4

    :cond_9
    :goto_2
    const-string v1, "stripByteCounts should not be null or have zero length."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_3
    const-string v1, "stripOffsets should not be null or have zero length."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-void
.end method

.method private static isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .locals 4

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    array-length v0, v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isHeifFormat([B)Z
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    new-array v5, v1, [B

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x8

    const-wide/16 v7, 0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v9, 0x10

    cmp-long v11, v3, v9

    if-gez v11, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :cond_1
    move-wide v9, v5

    :cond_2
    :try_start_3
    array-length v11, p1

    int-to-long v11, v11

    cmp-long v13, v3, v11

    if-lez v13, :cond_3

    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p1

    :cond_3
    sub-long/2addr v3, v9

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_4
    :try_start_4
    new-array p1, v1, [B

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, 0x4

    div-long v11, v3, v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_a

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v11, v1, :cond_5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_5
    cmp-long v11, v5, v7

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    :try_start_5
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_8

    const/4 v10, 0x1

    :cond_8
    :goto_1
    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v12

    :cond_9
    :goto_2
    add-long/2addr v5, v7

    goto :goto_0

    :cond_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_6
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ExifInterface"

    const-string v3, "Exception parsing HEIF file type box."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    :goto_4
    return v0

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_d
    throw p1
.end method

.method private static isJpegFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    return v0
.end method

.method private isPngFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5

    const-string v0, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 3

    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    nop

    sget-boolean p0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExifInterface"

    const-string v0, "The file descriptor for the given input is not seekable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5

    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const-string v2, "PhotometricInterpretation"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v3, :cond_1

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    :cond_3
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "ExifInterface"

    const-string v0, "Unsupported data type value"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWebpFormat([B)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    move-object p1, v1

    :cond_1
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->shouldSupportSeek(I)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsExifDataOnly:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getStandaloneAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_4

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_5

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    :goto_1
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    :cond_6
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    invoke-direct {p0, v1, v0, v0}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_2

    :cond_7
    const/16 v0, 0xd

    if-ne p1, v0, :cond_8

    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getPngAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    :cond_9
    const/16 v0, 0xe

    if-ne p1, v0, :cond_a

    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getWebpAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_c

    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    goto :goto_5

    :goto_4
    :try_start_1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    :goto_5
    return-void

    :goto_6
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->printAttributes()V

    :cond_d
    throw p1

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "inputstream shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Invalid start code: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-lt v0, v1, :cond_3

    .line 59
    .line 60
    add-int/lit8 v0, v0, -0x8

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipFully(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v1, "Invalid first Ifd offset: "

    .line 71
    .line 72
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method private printAttributes()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    const-string v1, "The size of tag group["

    .line 8
    .line 9
    const-string v2, "]: "

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 16
    .line 17
    aget-object v2, v2, v0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "ExifInterface"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 36
    .line 37
    aget-object v1, v1, v0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 64
    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, "tagName: "

    .line 68
    .line 69
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v3, ", tagType: "

    .line 82
    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, ", tagValue: \'"

    .line 94
    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, "\'"

    .line 108
    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    const-string v1, "ExifInterface"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_1

    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "readExifSegment: Byte Align MM"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "readExifSegment: Byte Align II"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1

    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v5, 0x5

    const/4 v7, 0x0

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    iget v10, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v9

    sget-boolean v10, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    const-string v11, "ExifInterface"

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "numberOfDirectoryEntry: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz v9, :cond_1

    return-void

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v13

    int-to-long v3, v13

    const-wide/16 v18, 0x4

    add-long v3, v3, v18

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    sget-boolean v13, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v13, :cond_3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    if-eqz v6, :cond_2

    iget-object v8, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move/from16 v24, v9

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v20, v9, v7

    const/16 v20, 0x1

    aput-object v21, v9, v20

    const/16 v20, 0x2

    aput-object v8, v9, v20

    const/4 v8, 0x3

    aput-object v22, v9, v8

    const/4 v8, 0x4

    aput-object v23, v9, v8

    const-string v8, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move/from16 v24, v9

    :goto_2
    const/4 v8, 0x7

    if-nez v6, :cond_5

    if-eqz v13, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "Skip the tag entry since tag number is not defined: "

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move/from16 v23, v10

    goto/16 :goto_6

    :cond_5
    if-lez v15, :cond_6

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v9, v5

    if-lt v15, v9, :cond_7

    :cond_6
    move/from16 v23, v10

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v13, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Skip the tag entry since data format ("

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v15

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") is unexpected for tag: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    if-ne v15, v8, :cond_9

    iget v15, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_9
    int-to-long v7, v12

    aget v5, v5, v15

    move/from16 v23, v10

    int-to-long v9, v5

    mul-long v7, v7, v9

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-ltz v5, :cond_b

    const-wide/32 v9, 0x7fffffff

    cmp-long v5, v7, v9

    if-lez v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    :goto_4
    if-eqz v13, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Skip the tag entry since the number of components is invalid: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    :goto_5
    if-eqz v13, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Skip the tag entry since data format is invalid: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    :goto_7
    if-nez v5, :cond_f

    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    move-object v4, v11

    :goto_8
    const/4 v2, 0x3

    :cond_e
    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_16

    :cond_f
    const-string v5, "Compression"

    cmp-long v9, v7, v18

    if-lez v9, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v9

    if-eqz v13, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    move-wide/from16 v25, v3

    const-string v3, "seek to data offset: "

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    move-wide/from16 v25, v3

    :goto_a
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_11

    iget-object v3, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v4, "MakerNote"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iput v9, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    :cond_11
    move-object/from16 v27, v11

    goto :goto_b

    :cond_12
    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    const-string v4, "ThumbnailImage"

    iget-object v10, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iput v9, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    iput v12, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    iget v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move-object/from16 v27, v11

    int-to-long v10, v4

    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    iget v10, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v10, v10

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v11

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v3, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v11

    const-string v4, "JPEGInterchangeFormatLength"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto :goto_c

    :cond_13
    move-wide/from16 v25, v3

    move-object/from16 v27, v11

    :goto_c
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v13, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nextIfdType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v27

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_14
    move-object/from16 v4, v27

    :goto_d
    const/16 v3, 0x8

    if-eqz v2, :cond_1d

    const/4 v9, 0x3

    if-eq v15, v9, :cond_18

    const/4 v5, 0x4

    if-eq v15, v5, :cond_17

    if-eq v15, v3, :cond_16

    const/16 v3, 0x9

    if-eq v15, v3, :cond_15

    const/16 v3, 0xd

    if-eq v15, v3, :cond_15

    const-wide/16 v7, -0x1

    goto :goto_f

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    :goto_e
    int-to-long v7, v3

    goto :goto_f

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    goto :goto_e

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    goto :goto_f

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    goto :goto_e

    :goto_f
    if-eqz v13, :cond_19

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v5, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v6, v9

    const/4 v3, 0x1

    aput-object v5, v6, v3

    const-string v3, "Offset: %d, tagName: %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    const-wide/16 v5, 0x0

    goto :goto_11

    :cond_19
    const/4 v10, 0x2

    goto :goto_10

    :goto_11
    cmp-long v3, v7, v5

    if-lez v3, :cond_1c

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    :cond_1a
    :goto_12
    move-wide/from16 v13, v25

    goto :goto_14

    :cond_1b
    if-eqz v13, :cond_1a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_13
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_1c
    if-eqz v13, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :goto_14
    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_8

    :cond_1d
    move-wide/from16 v13, v25

    const/4 v10, 0x2

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v2

    iget v11, v0, Landroidx/exifinterface/media/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v2, v11

    long-to-int v8, v7

    new-array v7, v8, [B

    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    int-to-long v9, v2

    move-object/from16 v16, v8

    move/from16 v17, v15

    move/from16 v18, v12

    move-wide/from16 v19, v9

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v7, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DNGVersion"

    iget-object v7, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x3

    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    goto :goto_15

    :cond_1e
    const/4 v2, 0x3

    :goto_15
    const-string v7, "Make"

    iget-object v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    const-string v7, "Model"

    iget-object v9, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    :cond_1f
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "PENTAX"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    :cond_20
    iget-object v6, v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    const v6, 0xffff

    if-ne v5, v6, :cond_22

    :cond_21
    iput v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->position()I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v5, v13

    if-eqz v3, :cond_e

    invoke-virtual {v1, v13, v14}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_9

    :goto_16
    add-int/lit8 v10, v23, 0x1

    int-to-short v10, v10

    move/from16 v2, p2

    move-object v11, v4

    move/from16 v9, v24

    const/4 v5, 0x5

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_23
    move-object v4, v11

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    sget-boolean v5, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    const-string v6, "nextIfdOffset: %d"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    int-to-long v6, v2

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_27

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    :goto_17
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    goto :goto_19

    :cond_25
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_26
    if-eqz v5, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_27
    if-eqz v5, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :cond_28
    :goto_19
    return-void
.end method

.method private replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p3, p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 4

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1, v1, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    :cond_2
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static shouldSupportSeek(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 6

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_5

    if-ge v1, v3, :cond_5

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    goto :goto_3

    :cond_3
    :goto_0
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "Second image does not contain valid size information"

    :goto_1
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    :goto_2
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "First image does not contain valid size information"

    goto :goto_1

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "Cannot perform swap since only one image data exists"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 9

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const-string v2, "Invalid crop size values. cropSize="

    const-string v3, "ExifInterface"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eq v0, v8, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p1, v7

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    aget-object p1, p1, v4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eq v0, v8, :cond_3

    goto :goto_3

    :cond_3
    aget v0, p1, v7

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    aget p1, p1, v4

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    :goto_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    :cond_7
    :goto_4
    return-void
.end method

.method private validateImages()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v3, v1

    aput-object v4, v3, v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v1

    :cond_1
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ExifInterface"

    const-string v4, "No image meets the size requirements of a thumbnail image."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "ThumbnailOrientation"

    const-string v4, "Orientation"

    invoke-direct {p0, v0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    const-string v7, "ThumbnailImageLength"

    invoke-direct {p0, v0, v7, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v8, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v7, v5}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v8, v6}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, v7}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6, v8}, Landroidx/exifinterface/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v6, "GPSTimeStamp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v6, 0x5

    const-string v7, "ExifInterface"

    if-eq p1, v6, :cond_1

    const/16 v6, 0xa

    if-eq p1, v6, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GPS Timestamp format is not rational. format="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_3

    array-length v4, p1

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, p1, v2

    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    iget-wide v6, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v6

    div-float/2addr v5, v4

    float-to-int v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v5, p1, v1

    iget-wide v6, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v6, v6

    iget-wide v7, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v7

    div-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object p1, p1, v0

    iget-wide v6, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v6, v6

    iget-wide v7, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v7

    div-float/2addr v6, p1

    float-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    aput-object v5, v3, v1

    aput-object p1, v3, v0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid GPS Timestamp array. array="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v5

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tag shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "tag shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRotationDegrees()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0x10e

    return v0

    :pswitch_2
    const/16 v0, 0xb4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
