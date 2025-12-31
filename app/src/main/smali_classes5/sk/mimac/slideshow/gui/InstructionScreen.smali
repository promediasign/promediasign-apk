.class public abstract Lsk/mimac/slideshow/gui/InstructionScreen;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static buildHtml(II)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/apache/velocity/VelocityContext;

    invoke-direct {v2}, Lorg/apache/velocity/VelocityContext;-><init>()V

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->WEB_SERVICES_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "webServiceEnabled"

    invoke-virtual {v2, v5, v4}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "webConnected"

    invoke-virtual {v2, v5, v4}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "httpUrl"

    invoke-virtual {v2, v5, v3}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "ftp://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/WebService;->getActualFtpPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ftpUrl"

    invoke-virtual {v2, v5, v3}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/gui/InstructionScreen;->getQrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "webQR"

    invoke-virtual {v2, v3, p1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "https://slideshow.digital/doc"

    invoke-static {p1}, Lsk/mimac/slideshow/gui/InstructionScreen;->getQrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "docQR"

    invoke-virtual {v2, v3, p1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v3, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {p1, v3}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p1

    sget-object v3, Lsk/mimac/slideshow/enums/UsbMountAction;->DO_NOTHING:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-eq p1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "usbEnabled"

    invoke-virtual {v2, v0, p1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->USB_COPY_FOLDER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "usbCopyFolder"

    invoke-virtual {v2, v0, p1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getVelocity()Lorg/apache/velocity/app/VelocityEngine;

    move-result-object p1

    if-eqz p0, :cond_4

    const-string p0, "/templates/intro/intro-landscape.vm"

    goto :goto_2

    :cond_4
    const-string p0, "/templates/intro/intro-portrait.vm"

    :goto_2
    invoke-virtual {p1, p0}, Lorg/apache/velocity/app/VelocityEngine;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object p0

    new-instance p1, Ljava/io/StringWriter;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/io/StringWriter;-><init>(I)V

    invoke-virtual {p0, v2, p1}, Lorg/apache/velocity/Template;->merge(Lorg/apache/velocity/context/Context;Ljava/io/Writer;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v5, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v5, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0x12c

    const/16 v4, 0x12c

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    new-array v1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    mul-int v4, v2, v6

    add-int/2addr v4, v3

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v5, -0x1

    :goto_2
    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:image/png;base64,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
