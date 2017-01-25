.class public Lcom/eventgenie/android/utils/qrcode/QRCodeUtils;
.super Ljava/lang/Object;
.source "QRCodeUtils.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "payload"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/qrcode/QRCodeUtils;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IIII)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "payload"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bgColor"    # I
    .param p5, "fgColor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v7, 0x0

    .line 92
    :goto_0
    return-object v7

    .line 63
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/utils/qrcode/QRCodeUtils;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 66
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 67
    new-instance v6, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 68
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_1
    :try_start_0
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 79
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 80
    .local v10, "bmWidth":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 81
    .local v14, "bmHeight":I
    mul-int v1, v10, v14

    new-array v8, v1, [I

    .line 83
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v14, :cond_4

    .line 84
    mul-int v17, v20, v10

    .line 85
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v10, :cond_3

    .line 86
    add-int v2, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v1, p5

    :goto_4
    aput v1, v8, v2

    .line 85
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 70
    .end local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v8    # "pixels":[I
    .end local v10    # "bmWidth":I
    .end local v14    # "bmHeight":I
    .end local v17    # "offset":I
    .end local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    goto :goto_1

    .line 75
    :catch_0
    move-exception v16

    .line 76
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_0

    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "pixels":[I
    .restart local v10    # "bmWidth":I
    .restart local v14    # "bmHeight":I
    .restart local v17    # "offset":I
    .restart local v18    # "result":Lcom/google/zxing/common/BitMatrix;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_2
    move/from16 v1, p4

    .line 86
    goto :goto_4

    .line 83
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 90
    .end local v17    # "offset":I
    .end local v19    # "x":I
    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 91
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 53
    const-string v1, "UTF-8"

    .line 56
    :goto_1
    return-object v1

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
