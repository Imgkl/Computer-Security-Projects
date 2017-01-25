.class public Lcom/a_vcard/android/syncml/pim/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Lcom/a_vcard/android/syncml/pim/VBuilder;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCurrentParamType:Ljava/lang/String;

.field private mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

.field private mCurrentVNode:Lcom/a_vcard/android/syncml/pim/VNode;

.field private mNodeListPos:I

.field private mSourceCharset:Ljava/lang/String;

.field private mStrictLineBreakParsing:Z

.field private mTargetCharset:Ljava/lang/String;

.field public vNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a_vcard/android/syncml/pim/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    const-string v0, "UTF-8"

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/a_vcard/android/syncml/pim/VDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sourceCharset"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;
    .param p3, "strictLineBreakParsing"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    .line 84
    :goto_0
    if-eqz p2, :cond_1

    .line 85
    iput-object p2, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 89
    :goto_1
    iput-boolean p3, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    .line 90
    return-void

    .line 82
    :cond_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mTargetCharset:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "strictLineBreakParsing"    # Z

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/a_vcard/android/syncml/pim/VDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method private encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    .end local p1    # "originalString":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 181
    .restart local p1    # "originalString":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 182
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 186
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 188
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .end local p1    # "originalString":Ljava/lang/String;
    invoke-direct {p1, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ Failed to encode: charset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 191
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 196
    if-eqz p3, :cond_a

    .line 197
    const-string v19, "BASE64"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "B"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/apache/commons/codec_1_9/binary/Base64;->decodeBase64([B)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    .line 267
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 202
    .restart local p1    # "value":Ljava/lang/String;
    :cond_1
    const-string v19, "QUOTED-PRINTABLE"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 203
    const-string v19, "= "

    const-string v20, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "=\t"

    const-string v21, "\t"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 206
    .local v18, "quotedPrintable":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mStrictLineBreakParsing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 207
    const-string v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, "lines":[Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_9

    aget-object v14, v3, v11

    .line 238
    .local v14, "line":Ljava/lang/String;
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 239
    const/16 v19, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 241
    :cond_2
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 209
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "lines":[Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 211
    .local v13, "length":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v13, :cond_7

    .line 213
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 214
    .local v6, "ch":C
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 217
    :cond_5
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v6, v0, :cond_6

    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v19, v13, -0x1

    move/from16 v0, v19

    if-ge v10, v0, :cond_4

    .line 221
    add-int/lit8 v19, v10, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 222
    .local v17, "nextCh":C
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 227
    .end local v17    # "nextCh":C
    :cond_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 230
    .end local v6    # "ch":C
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "finalLine":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 232
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .restart local v15    # "lines":[Ljava/lang/String;
    goto/16 :goto_1

    .line 245
    .end local v9    # "finalLine":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "length":I
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_9
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 252
    .local v5, "bytes":[B
    :goto_5
    :try_start_1
    invoke-static {v5}, Lorg/apache/commons/codec_1_9/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lorg/apache/commons/codec_1_9/DecoderException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 259
    :try_start_2
    new-instance p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v7

    .line 261
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ Failed to encode: charset="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 262
    new-instance p1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_0

    .line 246
    .end local v5    # "bytes":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "value":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 247
    .local v8, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ Failed to encode: charset="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mSourceCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5    # "bytes":[B
    goto :goto_5

    .line 253
    .end local v8    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v7

    .line 254
    .local v7, "e":Lorg/apache/commons/codec_1_9/DecoderException;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "^ Failed to decode quoted-printable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 255
    const-string p1, ""

    goto/16 :goto_0

    .line 267
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "bytes":[B
    .end local v7    # "e":Lorg/apache/commons/codec_1_9/DecoderException;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "lines":[Ljava/lang/String;
    .end local v18    # "quotedPrintable":Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p2}, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private static listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 298
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 299
    .local v2, "size":I
    if-le v2, v5, :cond_2

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v4, "typeListB":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 305
    .local v1, "len":I
    if-lez v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_1

    .line 306
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 312
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "len":I
    .end local v4    # "typeListB":Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 308
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "len":I
    .restart local v4    # "typeListB":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 309
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "len":I
    .end local v4    # "typeListB":Ljava/lang/StringBuilder;
    :cond_2
    if-ne v2, v5, :cond_3

    .line 310
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 312
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public endProperty()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentVNode:Lcom/a_vcard/android/syncml/pim/VNode;

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public endRecord()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a_vcard/android/syncml/pim/VNode;

    .line 130
    .local v0, "endNode":Lcom/a_vcard/android/syncml/pim/VNode;
    const/4 v1, 0x0

    iput v1, v0, Lcom/a_vcard/android/syncml/pim/VNode;->parseStatus:I

    .line 131
    :cond_0
    iget v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    if-lez v1, :cond_1

    .line 132
    iget v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    .line 133
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a_vcard/android/syncml/pim/VNode;

    iget v1, v1, Lcom/a_vcard/android/syncml/pim/VNode;->parseStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a_vcard/android/syncml/pim/VNode;

    iput-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentVNode:Lcom/a_vcard/android/syncml/pim/VNode;

    .line 137
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iput-object p1, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    .line 175
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v0, v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap:Lcom/a_vcard/android/content/ContentValues;

    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/a_vcard/android/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 273
    :cond_0
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_bytes:[B

    .line 274
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v5, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 275
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v5, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    const-string v6, ""

    iput-object v6, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 295
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v2, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->paramMap:Lcom/a_vcard/android/content/ContentValues;

    .line 282
    .local v2, "paramMap":Lcom/a_vcard/android/content/ContentValues;
    const-string v3, "UTF-8"

    .line 283
    .local v3, "targetCharset":Ljava/lang/String;
    const-string v5, "ENCODING"

    invoke-virtual {v2, v5}, Lcom/a_vcard/android/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mTargetCharset:Ljava/lang/String;

    .line 289
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v5, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-direct {p0, v4, v3, v0}, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->handleOneValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    iget-object v6, v6, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-static {v6}, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/a_vcard/android/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/a_vcard/android/syncml/pim/PropertyNode;

    invoke-direct {v0}, Lcom/a_vcard/android/syncml/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentPropNode:Lcom/a_vcard/android/syncml/pim/PropertyNode;

    .line 142
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v0, Lcom/a_vcard/android/syncml/pim/VNode;

    invoke-direct {v0}, Lcom/a_vcard/android/syncml/pim/VNode;-><init>()V

    .line 118
    .local v0, "vnode":Lcom/a_vcard/android/syncml/pim/VNode;
    const/4 v1, 0x1

    iput v1, v0, Lcom/a_vcard/android/syncml/pim/VNode;->parseStatus:I

    .line 119
    iput-object p1, v0, Lcom/a_vcard/android/syncml/pim/VNode;->VName:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    .line 124
    iget-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iget v2, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mNodeListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a_vcard/android/syncml/pim/VNode;

    iput-object v1, p0, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->mCurrentVNode:Lcom/a_vcard/android/syncml/pim/VNode;

    .line 125
    return-void
.end method
