.class public Lcom/genie_connect/android/utils/string/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static escapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 442
    if-nez p0, :cond_0

    .line 453
    :goto_0
    return-object v2

    .line 446
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 447
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 449
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static escapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    if-nez p0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    if-nez p1, :cond_1

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_1
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML40:Lcom/genie_connect/android/utils/string/Entities;

    invoke-virtual {v0, p0, p1}, Lcom/genie_connect/android/utils/string/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public static escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method private static escapeJavaStyleString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "escapeSingleQuotes"    # Z

    .prologue
    const/4 v2, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 158
    :goto_0
    return-object v2

    .line 152
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 153
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0, p1}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 155
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static escapeJavaStyleString(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "escapeSingleQuote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 171
    if-nez p0, :cond_0

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Writer must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    if-nez p1, :cond_2

    .line 241
    :cond_1
    return-void

    .line 178
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 179
    .local v2, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, "ch":C
    const/16 v3, 0xfff

    if-le v0, v3, :cond_3

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 179
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_3
    const/16 v3, 0xff

    if-le v0, v3, :cond_4

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_4
    const/16 v3, 0x7f

    if-le v0, v3, :cond_5

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_5
    const/16 v3, 0x20

    if-ge v0, v3, :cond_7

    .line 190
    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    const/16 v3, 0xf

    if-le v0, v3, :cond_6

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 193
    const/16 v3, 0x62

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 197
    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 200
    :pswitch_3
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 201
    const/16 v3, 0x74

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 204
    :pswitch_4
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 205
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 208
    :pswitch_5
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 209
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 215
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\u000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->hex(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :cond_7
    sparse-switch v0, :sswitch_data_0

    .line 236
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 222
    :sswitch_0
    if-eqz p2, :cond_8

    .line 223
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 225
    :cond_8
    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 228
    :sswitch_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 229
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 232
    :sswitch_2
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    .line 233
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_0
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static escapeSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 681
    if-nez p0, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 684
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 605
    if-nez p0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 608
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/utils/string/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static escapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    if-nez p0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    if-nez p1, :cond_1

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_1
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    invoke-virtual {v0, p0, p1}, Lcom/genie_connect/android/utils/string/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static hex(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 251
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 514
    if-nez p0, :cond_0

    .line 525
    :goto_0
    return-object v2

    .line 518
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 519
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 521
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    if-nez p0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    if-nez p1, :cond_1

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_1
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->HTML40:Lcom/genie_connect/android/utils/string/Entities;

    invoke-virtual {v0, p0, p1}, Lcom/genie_connect/android/utils/string/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 264
    if-nez p0, :cond_0

    .line 274
    :goto_0
    return-object v2

    .line 268
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 269
    .local v1, "writer":Ljava/io/StringWriter;
    invoke-static {v1, p0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 271
    .end local v1    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 12
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x5c

    .line 294
    if-nez p0, :cond_0

    .line 295
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The Writer must not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 297
    :cond_0
    if-nez p1, :cond_2

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 301
    .local v5, "sz":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v6, "unicode":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 303
    .local v1, "hadSlash":Z
    const/4 v3, 0x0

    .line 304
    .local v3, "inUnicode":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 305
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, "ch":C
    if-eqz v3, :cond_4

    .line 309
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 314
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 315
    .local v7, "value":I
    int-to-char v8, v7

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    .line 316
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const/4 v3, 0x0

    .line 318
    const/4 v1, 0x0

    .line 304
    .end local v7    # "value":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    :catch_0
    move-exception v4

    .line 320
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to parse unicode value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 326
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    if-eqz v1, :cond_5

    .line 328
    const/4 v1, 0x0

    .line 329
    sparse-switch v0, :sswitch_data_0

    .line 361
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 331
    :sswitch_0
    invoke-virtual {p0, v10}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 334
    :sswitch_1
    const/16 v8, 0x27

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 337
    :sswitch_2
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 340
    :sswitch_3
    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 343
    :sswitch_4
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 346
    :sswitch_5
    const/16 v8, 0x9

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 349
    :sswitch_6
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 352
    :sswitch_7
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 357
    :sswitch_8
    const/4 v3, 0x1

    .line 358
    goto :goto_2

    .line 365
    :cond_5
    if-ne v0, v10, :cond_6

    .line 366
    const/4 v1, 0x1

    .line 367
    goto :goto_2

    .line 369
    :cond_6
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 371
    .end local v0    # "ch":C
    :cond_7
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0, v10}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_0

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
        0x62 -> :sswitch_7
        0x66 -> :sswitch_4
        0x6e -> :sswitch_6
        0x72 -> :sswitch_3
        0x74 -> :sswitch_5
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public static unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJavaScript(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {p0, p1}, Lcom/genie_connect/android/utils/string/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public static unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/utils/string/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeXml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    if-nez p0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_0
    if-nez p1, :cond_1

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_1
    sget-object v0, Lcom/genie_connect/android/utils/string/Entities;->XML:Lcom/genie_connect/android/utils/string/Entities;

    invoke-virtual {v0, p0, p1}, Lcom/genie_connect/android/utils/string/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method
