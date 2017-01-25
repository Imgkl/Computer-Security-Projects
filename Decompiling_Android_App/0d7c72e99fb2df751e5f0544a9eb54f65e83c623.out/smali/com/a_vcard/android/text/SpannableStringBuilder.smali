.class public Lcom/a_vcard/android/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Lcom/a_vcard/android/text/Spannable;
.implements Lcom/a_vcard/android/text/Editable;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Lcom/a_vcard/android/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4


# instance fields
.field private mFilters:[Lcom/a_vcard/android/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1145
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a_vcard/android/text/InputFilter;

    sput-object v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->NO_FILTERS:[Lcom/a_vcard/android/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/a_vcard/android/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v10, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    sget-object v9, Lcom/a_vcard/android/text/SpannableStringBuilder;->NO_FILTERS:[Lcom/a_vcard/android/text/InputFilter;

    iput-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mFilters:[Lcom/a_vcard/android/text/InputFilter;

    .line 51
    sub-int v7, p3, p2

    .line 53
    .local v7, "srclen":I
    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Lcom/a_vcard/com/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v4

    .line 54
    .local v4, "len":I
    new-array v9, v4, [C

    iput-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    .line 55
    iput v7, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    .line 56
    sub-int v9, v4, v7

    iput v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    .line 58
    iget-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v9, v10}, Lcom/a_vcard/android/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 60
    iput v10, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 61
    invoke-static {v10}, Lcom/a_vcard/com/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 62
    .local v0, "alloc":I
    new-array v9, v0, [Ljava/lang/Object;

    iput-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 63
    new-array v9, v0, [I

    iput-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 64
    new-array v9, v0, [I

    iput-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 65
    new-array v9, v0, [I

    iput-object v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 67
    instance-of v9, p1, Lcom/a_vcard/android/text/Spanned;

    if-eqz v9, :cond_5

    move-object v5, p1

    .line 68
    check-cast v5, Lcom/a_vcard/android/text/Spanned;

    .line 69
    .local v5, "sp":Lcom/a_vcard/android/text/Spanned;
    const-class v9, Ljava/lang/Object;

    invoke-interface {v5, p2, p3, v9}, Lcom/a_vcard/android/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 71
    .local v6, "spans":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v6

    if-ge v3, v9, :cond_5

    .line 72
    aget-object v9, v6, v3

    instance-of v9, v9, Lcom/a_vcard/android/text/NoCopySpan;

    if-eqz v9, :cond_0

    .line 71
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Lcom/a_vcard/android/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    sub-int v8, v9, p2

    .line 77
    .local v8, "st":I
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Lcom/a_vcard/android/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    sub-int v1, v9, p2

    .line 78
    .local v1, "en":I
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Lcom/a_vcard/android/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 80
    .local v2, "fl":I
    if-gez v8, :cond_1

    .line 81
    const/4 v8, 0x0

    .line 82
    :cond_1
    sub-int v9, p3, p2

    if-le v8, v9, :cond_2

    .line 83
    sub-int v8, p3, p2

    .line 85
    :cond_2
    if-gez v1, :cond_3

    .line 86
    const/4 v1, 0x0

    .line 87
    :cond_3
    sub-int v9, p3, p2

    if-le v1, v9, :cond_4

    .line 88
    sub-int v1, p3, p2

    .line 90
    :cond_4
    aget-object v9, v6, v3

    invoke-virtual {p0, v9, v8, v1, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 93
    .end local v1    # "en":I
    .end local v2    # "fl":I
    .end local v3    # "i":I
    .end local v5    # "sp":Lcom/a_vcard/android/text/Spanned;
    .end local v6    # "spans":[Ljava/lang/Object;
    .end local v8    # "st":I
    :cond_5
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)I
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 278
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/a_vcard/android/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private change(ZIILjava/lang/CharSequence;II)I
    .locals 22
    .param p1, "notify"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "tb"    # Ljava/lang/CharSequence;
    .param p5, "tbstart"    # I
    .param p6, "tbend"    # I

    .prologue
    .line 283
    const-string v4, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 284
    sub-int v18, p6, p5

    .line 285
    .local v18, "ret":I
    const/16 v17, 0x0

    .line 287
    .local v17, "recipients":[Lcom/a_vcard/android/text/TextWatcher;
    if-eqz p1, :cond_0

    .line 288
    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextWillChange(III)[Lcom/a_vcard/android/text/TextWatcher;

    move-result-object v17

    .line 291
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v14, v4, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_6

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v21, v4, v14

    .line 294
    .local v21, "st":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v21

    if-le v0, v4, :cond_1

    .line 295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int v21, v21, v4

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v12, v4, v14

    .line 298
    .local v12, "en":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v12, v4, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v12, v4

    .line 301
    :cond_2
    move/from16 v16, v21

    .line 302
    .local v16, "ost":I
    move v15, v12

    .line 303
    .local v15, "oen":I
    invoke-virtual/range {p0 .. p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 305
    .local v11, "clen":I
    move/from16 v0, v21

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move/from16 v0, v21

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    .line 306
    move/from16 v21, p3

    :goto_1
    move/from16 v0, v21

    if-ge v0, v11, :cond_3

    .line 307
    move/from16 v0, v21

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    add-int/lit8 v4, v21, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    .line 311
    :cond_3
    move/from16 v0, p2

    if-le v12, v0, :cond_4

    move/from16 v0, p3

    if-gt v12, v0, :cond_4

    .line 312
    move/from16 v12, p3

    :goto_2
    if-ge v12, v11, :cond_4

    .line 313
    move/from16 v0, p3

    if-le v12, v0, :cond_8

    add-int/lit8 v4, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    .line 317
    :cond_4
    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    if-eq v12, v15, :cond_6

    .line 318
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v5, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1, v12, v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 291
    .end local v11    # "clen":I
    .end local v12    # "en":I
    .end local v15    # "oen":I
    .end local v16    # "ost":I
    .end local v21    # "st":I
    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 306
    .restart local v11    # "clen":I
    .restart local v12    # "en":I
    .restart local v15    # "oen":I
    .restart local v16    # "ost":I
    .restart local v21    # "st":I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 312
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 322
    .end local v11    # "clen":I
    .end local v12    # "en":I
    .end local v15    # "oen":I
    .end local v16    # "ost":I
    .end local v21    # "st":I
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 324
    sub-int v4, p6, p5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int v6, p3, p2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_a

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    add-int v4, v4, p6

    sub-int v4, v4, p5

    sub-int v5, p3, p2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->resizeFor(I)V

    .line 328
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    sub-int v5, p6, p5

    sub-int v6, p3, p2

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    .line 329
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int v5, p6, p5

    sub-int v6, p3, p2

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    .line 331
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_b

    .line 332
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v4, v3}, Lcom/a_vcard/android/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 336
    move-object/from16 v0, p4

    instance-of v4, v0, Lcom/a_vcard/android/text/Spanned;

    if-eqz v4, :cond_f

    move-object/from16 v19, p4

    .line 337
    check-cast v19, Lcom/a_vcard/android/text/Spanned;

    .line 338
    .local v19, "sp":Lcom/a_vcard/android/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v19

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v0, v1, v2, v4}, Lcom/a_vcard/android/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    .line 340
    .local v20, "spans":[Ljava/lang/Object;
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v14, v4, :cond_f

    .line 341
    aget-object v4, v20, v14

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lcom/a_vcard/android/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v21

    .line 342
    .restart local v21    # "st":I
    aget-object v4, v20, v14

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lcom/a_vcard/android/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 344
    .restart local v12    # "en":I
    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_c

    .line 345
    move/from16 v21, p5

    .line 346
    :cond_c
    move/from16 v0, p6

    if-le v12, v0, :cond_d

    .line 347
    move/from16 v12, p6

    .line 349
    :cond_d
    aget-object v4, v20, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_e

    .line 350
    const/4 v5, 0x0

    aget-object v6, v20, v14

    sub-int v4, v21, p5

    add-int v7, v4, p2

    sub-int v4, v12, p5

    add-int v8, v4, p2

    aget-object v4, v20, v14

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lcom/a_vcard/android/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/a_vcard/android/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 340
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 359
    .end local v12    # "en":I
    .end local v19    # "sp":Lcom/a_vcard/android/text/Spanned;
    .end local v20    # "spans":[Ljava/lang/Object;
    .end local v21    # "st":I
    :cond_f
    move/from16 v0, p6

    move/from16 v1, p5

    if-le v0, v1, :cond_11

    sub-int v4, p3, p2

    if-nez v4, :cond_11

    .line 360
    if-eqz p1, :cond_10

    .line 361
    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextChange([Lcom/a_vcard/android/text/TextWatcher;III)V

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextHasChanged([Lcom/a_vcard/android/text/TextWatcher;)V

    .line 413
    :cond_10
    :goto_4
    return v18

    .line 368
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_17

    const/4 v10, 0x1

    .line 370
    .local v10, "atend":Z
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v14, v4, -0x1

    :goto_6
    if-ltz v14, :cond_1a

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v14

    move/from16 v0, p2

    if-lt v4, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_13

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 375
    .local v13, "flag":I
    const/4 v4, 0x2

    if-eq v13, v4, :cond_12

    const/4 v4, 0x3

    if-ne v13, v4, :cond_18

    if-eqz v10, :cond_18

    .line 376
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    aput v5, v4, v14

    .line 381
    .end local v13    # "flag":I
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move/from16 v0, p2

    if-lt v4, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_15

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit8 v13, v4, 0xf

    .line 385
    .restart local v13    # "flag":I
    const/4 v4, 0x2

    if-eq v13, v4, :cond_14

    const/4 v4, 0x3

    if-ne v13, v4, :cond_19

    if-eqz v10, :cond_19

    .line 386
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    aput v5, v4, v14

    .line 394
    .end local v13    # "flag":I
    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v14

    if-ge v4, v5, :cond_16

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v8, v14, 0x1

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v8, v14, 0x1

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v8, v14, 0x1

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v8, v14, 0x1

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v6, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 370
    :cond_16
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_6

    .line 368
    .end local v10    # "atend":Z
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 378
    .restart local v10    # "atend":Z
    .restart local v13    # "flag":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p2, v4, v14

    goto/16 :goto_7

    .line 388
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p2, v4, v14

    goto :goto_8

    .line 408
    .end local v13    # "flag":I
    :cond_1a
    if-eqz p1, :cond_10

    .line 409
    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextChange([Lcom/a_vcard/android/text/TextWatcher;III)V

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextHasChanged([Lcom/a_vcard/android/text/TextWatcher;)V

    goto/16 :goto_4
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 957
    if-ge p3, p2, :cond_0

    .line 958
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 965
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 966
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 971
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 972
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 976
    :cond_4
    return-void
.end method

.method private isprint(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 979
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    .line 980
    const/4 v0, 0x1

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 156
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_0

    .line 205
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 v0, 0x1

    .line 161
    .local v0, "atend":Z
    :goto_1
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_6

    .line 162
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 164
    .local v4, "overlap":I
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_b

    .line 175
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 176
    .local v5, "start":I
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 178
    .local v1, "end":I
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    .line 179
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 180
    :cond_1
    if-le v5, p1, :cond_7

    .line 181
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 189
    :cond_2
    :goto_4
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_3

    .line 190
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 191
    :cond_3
    if-le v1, p1, :cond_9

    .line 192
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 200
    :cond_4
    :goto_5
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 201
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 159
    .end local v0    # "atend":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 167
    .restart local v0    # "atend":Z
    :cond_6
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 169
    .restart local v4    # "overlap":I
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 182
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_7
    if-ne v5, p1, :cond_2

    .line 183
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 185
    .local v2, "flag":I
    if-eq v2, v10, :cond_8

    if-eqz v0, :cond_2

    if-ne v2, v11, :cond_2

    .line 186
    :cond_8
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_4

    .line 193
    .end local v2    # "flag":I
    :cond_9
    if-ne v1, p1, :cond_4

    .line 194
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 196
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_a

    if-eqz v0, :cond_4

    if-ne v2, v11, :cond_4

    .line 197
    :cond_a
    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_5

    .line 204
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_b
    iput p1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resizeFor(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 131
    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/a_vcard/com/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    .line 132
    .local v2, "newlen":I
    new-array v3, v2, [C

    .line 134
    .local v3, "newtext":[C
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 136
    .local v0, "after":I
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int v7, v2, v0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v5, :cond_2

    .line 141
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v1

    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_0

    .line 142
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v1

    iget-object v7, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v1

    iget v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    .line 144
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v1

    iget-object v7, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v4, v5

    .line 148
    .local v4, "oldlen":I
    iput-object v3, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    .line 149
    iget v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    .line 151
    iget v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    .line 152
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_3
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 925
    const-class v3, Lcom/a_vcard/android/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/a_vcard/android/text/SpanWatcher;

    .line 926
    .local v2, "recip":[Lcom/a_vcard/android/text/SpanWatcher;
    array-length v1, v2

    .line 928
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 929
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/a_vcard/android/text/SpanWatcher;->onSpanAdded(Lcom/a_vcard/android/text/Spannable;Ljava/lang/Object;II)V

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    .prologue
    .line 943
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Lcom/a_vcard/android/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/a_vcard/android/text/SpanWatcher;

    .line 945
    .local v9, "recip":[Lcom/a_vcard/android/text/SpanWatcher;
    array-length v8, v9

    .line 947
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 948
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/a_vcard/android/text/SpanWatcher;->onSpanChanged(Lcom/a_vcard/android/text/Spannable;Ljava/lang/Object;IIII)V

    .line 947
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 934
    const-class v3, Lcom/a_vcard/android/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/a_vcard/android/text/SpanWatcher;

    .line 935
    .local v2, "recip":[Lcom/a_vcard/android/text/SpanWatcher;
    array-length v1, v2

    .line 937
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 938
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/a_vcard/android/text/SpanWatcher;->onSpanRemoved(Lcom/a_vcard/android/text/Spannable;Ljava/lang/Object;II)V

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_0
    return-void
.end method

.method private sendTextChange([Lcom/a_vcard/android/text/TextWatcher;III)V
    .locals 3
    .param p1, "recip"    # [Lcom/a_vcard/android/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 909
    array-length v1, p1

    .line 911
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 912
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Lcom/a_vcard/android/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 914
    :cond_0
    return-void
.end method

.method private sendTextHasChanged([Lcom/a_vcard/android/text/TextWatcher;)V
    .locals 3
    .param p1, "recip"    # [Lcom/a_vcard/android/text/TextWatcher;

    .prologue
    .line 917
    array-length v1, p1

    .line 919
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 920
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Lcom/a_vcard/android/text/TextWatcher;->afterTextChanged(Lcom/a_vcard/android/text/Editable;)V

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 922
    :cond_0
    return-void
.end method

.method private sendTextWillChange(III)[Lcom/a_vcard/android/text/TextWatcher;
    .locals 5
    .param p1, "start"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    .line 897
    add-int v3, p1, p2

    const-class v4, Lcom/a_vcard/android/text/TextWatcher;

    invoke-virtual {p0, p1, v3, v4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/a_vcard/android/text/TextWatcher;

    .line 898
    .local v2, "recip":[Lcom/a_vcard/android/text/TextWatcher;
    array-length v1, v2

    .line 900
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 901
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/a_vcard/android/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    :cond_0
    return-object v2
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 21
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 531
    move/from16 v7, p3

    .line 532
    .local v7, "nstart":I
    move/from16 v8, p4

    .line 534
    .local v8, "nend":I
    const-string v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 536
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 537
    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    .line 538
    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 540
    .local v9, "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_0

    .line 541
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    .end local v9    # "c":C
    :cond_0
    and-int/lit8 v3, p5, 0xf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 547
    if-eqz p4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_1

    .line 548
    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 550
    .restart local v9    # "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_1

    .line 551
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    .end local v9    # "c":C
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v3, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    .line 565
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v3, :cond_9

    .line 566
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    .line 574
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 575
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 577
    .local v18, "spans":[Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v10, :cond_c

    .line 578
    aget-object v3, v18, v12

    move-object/from16 v0, p2

    if-ne v3, v0, :cond_b

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v3, v12

    .line 580
    .local v5, "ostart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v3, v12

    .line 582
    .local v6, "oend":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v3, :cond_4

    .line 583
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v3

    .line 584
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v3, :cond_5

    .line 585
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v6, v3

    .line 587
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v3, v12

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v3, v12

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v3, v12

    .line 591
    if-eqz p1, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 592
    invoke-direct/range {v3 .. v8}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 624
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    :cond_6
    :goto_3
    return-void

    .line 558
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v18    # "spans":[Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 559
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v11, v3, 0x4

    .line 561
    .local v11, "flag":I
    const/4 v3, 0x2

    if-eq v11, v3, :cond_8

    const/4 v3, 0x3

    if-ne v11, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 562
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    goto/16 :goto_0

    .line 567
    .end local v11    # "flag":I
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 568
    and-int/lit8 v11, p5, 0xf

    .line 570
    .restart local v11    # "flag":I
    const/4 v3, 0x2

    if-eq v11, v3, :cond_a

    const/4 v3, 0x3

    if-ne v11, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    .line 571
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    goto/16 :goto_1

    .line 577
    .end local v11    # "flag":I
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v18    # "spans":[Ljava/lang/Object;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 598
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_d

    .line 599
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/a_vcard/com/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v13

    .line 600
    .local v13, "newsize":I
    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 601
    .local v16, "newspans":[Ljava/lang/Object;
    new-array v0, v13, [I

    move-object/from16 v17, v0

    .line 602
    .local v17, "newspanstarts":[I
    new-array v14, v13, [I

    .line 603
    .local v14, "newspanends":[I
    new-array v15, v13, [I

    .line 605
    .local v15, "newspanflags":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v4, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v4, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 611
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 612
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 613
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 616
    .end local v13    # "newsize":I
    .end local v14    # "newspanends":[I
    .end local v15    # "newspanflags":[I
    .end local v16    # "newspans":[Ljava/lang/Object;
    .end local v17    # "newspanstarts":[I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    aput-object p2, v3, v4

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    aput p3, v3, v4

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    aput p4, v3, v4

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    aput p5, v3, v4

    .line 620
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 622
    if-eqz p1, :cond_6

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_3
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    instance-of v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 97
    check-cast p0, Lcom/a_vcard/android/text/SpannableStringBuilder;

    .line 99
    .end local p0    # "source":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Lcom/a_vcard/android/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # C

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(C)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 260
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(C)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 4
    .param p1, "where"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 109
    .local v0, "len":I
    if-gez p1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    if-lt p1, v0, :cond_1

    .line 112
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    iget v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    .line 119
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    .line 234
    return-void
.end method

.method public clearSpans()V
    .locals 6

    .prologue
    .line 239
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 240
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 241
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 242
    .local v2, "ostart":I
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 244
    .local v1, "oend":I
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    .line 245
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 246
    :cond_0
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    .line 247
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 249
    :cond_1
    iput v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 250
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 252
    invoke-direct {p0, v3, v2, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 239
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public bridge synthetic delete(II)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->delete(II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 222
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v6

    .line 224
    .local v6, "ret":Lcom/a_vcard/android/text/SpannableStringBuilder;
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->resizeFor(I)V

    .line 227
    :cond_0
    return-object v6
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 869
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 871
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    :goto_0
    return-void

    .line 873
    :cond_0
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    iget-object v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getFilters()[Lcom/a_vcard/android/text/InputFilter;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mFilters:[Lcom/a_vcard/android/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 686
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 687
    .local v0, "count":I
    iget-object v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 689
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 690
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    .line 691
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    .line 693
    .local v3, "where":I
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    .line 694
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 700
    .end local v3    # "where":I
    :cond_0
    :goto_1
    return v3

    .line 689
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 700
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 709
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 710
    .local v0, "count":I
    iget-object v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 712
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 713
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 714
    iget-object v3, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    .line 718
    :goto_1
    return v3

    .line 712
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 718
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 663
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 664
    .local v0, "count":I
    iget-object v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 666
    .local v2, "spans":[Ljava/lang/Object;
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 667
    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    .line 668
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 670
    .local v3, "where":I
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    .line 671
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 677
    .end local v3    # "where":I
    :cond_0
    :goto_1
    return v3

    .line 666
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 677
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 22
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 729
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget v15, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 730
    .local v15, "spanCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 731
    .local v18, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v19, v0

    .line 732
    .local v19, "starts":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 733
    .local v4, "ends":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 734
    .local v5, "flags":[I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    .line 735
    .local v7, "gapstart":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    .line 737
    .local v6, "gaplen":I
    const/4 v2, 0x0

    .line 738
    .local v2, "count":I
    const/4 v13, 0x0

    .line 739
    .local v13, "ret":[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 741
    .local v14, "ret1":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    move v3, v2

    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;
    .local v3, "count":I
    :goto_0
    if-ge v8, v15, :cond_c

    .line 742
    aget v17, v19, v8

    .line 743
    .local v17, "spanStart":I
    aget v16, v4, v8

    .line 745
    .local v16, "spanEnd":I
    move/from16 v0, v17

    if-le v0, v7, :cond_0

    .line 746
    sub-int v17, v17, v6

    .line 748
    :cond_0
    move/from16 v0, v16

    if-le v0, v7, :cond_1

    .line 749
    sub-int v16, v16, v6

    .line 752
    :cond_1
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move v2, v3

    .line 741
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_0

    .line 755
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    move v2, v3

    .line 756
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 759
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 760
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_4

    move v2, v3

    .line 761
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 762
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_4
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_5

    move v2, v3

    .line 763
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 766
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_5
    if-eqz p3, :cond_6

    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    move v2, v3

    .line 767
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 770
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_6
    if-nez v3, :cond_7

    .line 771
    aget-object v14, v18, v8

    .line 772
    .restart local v14    # "ret1":Ljava/lang/Object;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 774
    .end local v2    # "count":I
    .end local v14    # "ret1":Ljava/lang/Object;
    .restart local v3    # "count":I
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    .line 775
    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 776
    const/16 v20, 0x0

    aput-object v14, v13, v20

    .line 779
    :cond_8
    aget v20, v5, v8

    const/high16 v21, 0xff0000

    and-int v12, v20, v21

    .line 780
    .local v12, "prio":I
    if-eqz v12, :cond_b

    .line 783
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v3, :cond_9

    .line 784
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff0000

    and-int v11, v20, v21

    .line 786
    .local v11, "p":I
    if-le v12, v11, :cond_a

    .line 791
    .end local v11    # "p":I
    :cond_9
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v3, v9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v9, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 793
    add-int/lit8 v2, v3, 0x1

    .line 794
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_1

    .line 783
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v11    # "p":I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 795
    .end local v9    # "j":I
    .end local v11    # "p":I
    :cond_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v20, v18, v8

    aput-object v20, v13, v3

    goto/16 :goto_1

    .line 800
    .end local v2    # "count":I
    .end local v12    # "prio":I
    .end local v16    # "spanEnd":I
    .end local v17    # "spanStart":I
    .restart local v3    # "count":I
    :cond_c
    if-nez v3, :cond_d

    .line 801
    invoke-static/range {p3 .. p3}, Lcom/a_vcard/com/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    .line 814
    :goto_3
    return-object v20

    .line 803
    :cond_d
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_e

    .line 804
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    .line 805
    const/16 v20, 0x0

    aput-object v14, v13, v20

    move-object/from16 v20, v13

    .line 806
    check-cast v20, [Ljava/lang/Object;

    goto :goto_3

    .line 808
    :cond_e
    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v3, v0, :cond_f

    move-object/from16 v20, v13

    .line 809
    check-cast v20, [Ljava/lang/Object;

    goto :goto_3

    .line 812
    :cond_f
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v10, v20

    check-cast v10, [Ljava/lang/Object;

    .line 813
    .local v10, "nret":[Ljava/lang/Object;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    check-cast v10, [Ljava/lang/Object;

    .end local v10    # "nret":[Ljava/lang/Object;
    move-object/from16 v20, v10

    goto :goto_3
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 10
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 825
    iget v0, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 826
    .local v0, "count":I
    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 827
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 828
    .local v8, "starts":[I
    iget-object v2, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 829
    .local v2, "ends":[I
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    .line 830
    .local v4, "gapstart":I
    iget v3, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    .line 832
    .local v3, "gaplen":I
    if-nez p3, :cond_0

    .line 833
    const-class p3, Ljava/lang/Object;

    .line 836
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 837
    aget v7, v8, v5

    .line 838
    .local v7, "st":I
    aget v1, v2, v5

    .line 840
    .local v1, "en":I
    if-le v7, v4, :cond_1

    .line 841
    sub-int/2addr v7, v3

    .line 842
    :cond_1
    if-le v1, v4, :cond_2

    .line 843
    sub-int/2addr v1, v3

    .line 845
    :cond_2
    if-le v7, p1, :cond_3

    if-ge v7, p2, :cond_3

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 846
    move p2, v7

    .line 847
    :cond_3
    if-le v1, p1, :cond_4

    if-ge v1, p2, :cond_4

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 848
    move p2, v1

    .line 836
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "en":I
    .end local v7    # "st":I
    :cond_5
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 7
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 631
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 632
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_3

    .line 633
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    .line 634
    .local v3, "ostart":I
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v4, v1

    .line 636
    .local v2, "oend":I
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    .line 637
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 638
    :cond_0
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_1

    .line 639
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 641
    :cond_1
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, v1, 0x1

    sub-int v0, v4, v5

    .line 643
    .local v0, "count":I
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    iget v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    .line 649
    iget-object v4, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 651
    invoke-direct {p0, p1, v3, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 655
    .end local v0    # "count":I
    .end local v2    # "oend":I
    .end local v3    # "ostart":I
    :cond_2
    return-void

    .line 631
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/Editable;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/CharSequence;
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 26
    invoke-virtual/range {p0 .. p5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 419
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/SpannableStringBuilder;
    .locals 26
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mFilters:[Lcom/a_vcard/android/text/InputFilter;

    array-length v0, v6

    move/from16 v16, v0

    .line 427
    .local v16, "filtercount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mFilters:[Lcom/a_vcard/android/text/InputFilter;

    aget-object v6, v6, v17

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-interface/range {v6 .. v12}, Lcom/a_vcard/android/text/InputFilter;->filter(Ljava/lang/CharSequence;IILcom/a_vcard/android/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v24

    .line 431
    .local v24, "repl":Ljava/lang/CharSequence;
    if-eqz v24, :cond_0

    .line 432
    move-object/from16 p3, v24

    .line 433
    const/16 p4, 0x0

    .line 434
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 427
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 438
    .end local v24    # "repl":Ljava/lang/CharSequence;
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 516
    :goto_1
    return-object p0

    .line 442
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4

    .line 443
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)I

    goto :goto_1

    .line 445
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/a_vcard/android/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v25

    .line 446
    .local v25, "selstart":I
    invoke-static/range {p0 .. p0}, Lcom/a_vcard/android/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 451
    .local v13, "selend":I
    const-string v6, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 452
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 455
    sub-int v6, p2, p1

    sub-int v7, p5, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextWillChange(III)[Lcom/a_vcard/android/text/TextWatcher;

    move-result-object v23

    .line 458
    .local v23, "recipients":[Lcom/a_vcard/android/text/TextWatcher;
    sub-int v22, p2, p1

    .line 460
    .local v22, "origlen":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_5

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/a_vcard/android/text/SpannableStringBuilder;->resizeFor(I)V

    .line 463
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v17, v6, -0x1

    :goto_2
    if-ltz v17, :cond_8

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-ne v6, v7, :cond_6

    .line 465
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v17

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v17

    .line 467
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    if-ne v6, v7, :cond_7

    .line 468
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v17

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v17

    .line 463
    :cond_7
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 471
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    const/16 v8, 0x20

    aput-char v8, v6, v7

    .line 472
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapStart:I

    .line 473
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    .line 475
    move-object/from16 v0, p0

    iget v6, v0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_9

    .line 476
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    :cond_9
    add-int/lit8 v6, p2, 0x1

    sub-int v19, v6, p1

    .line 480
    .local v19, "oldlen":I
    const/4 v7, 0x0

    add-int/lit8 v8, p1, 0x1

    add-int/lit8 v9, p1, 0x1

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/a_vcard/android/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v18

    .line 482
    .local v18, "inserted":I
    const/4 v7, 0x0

    add-int/lit8 v9, p1, 0x1

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move/from16 v8, p1

    invoke-direct/range {v6 .. v12}, Lcom/a_vcard/android/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    .line 483
    const/4 v7, 0x0

    add-int v8, p1, v18

    add-int v6, p1, v18

    add-int v6, v6, v19

    add-int/lit8 v9, v6, -0x1

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/a_vcard/android/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    .line 494
    move/from16 v0, v25

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    move/from16 v0, v25

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    .line 495
    sub-int v6, v25, p1

    int-to-long v0, v6

    move-wide/from16 v20, v0

    .line 497
    .local v20, "off":J
    move/from16 v0, v18

    int-to-long v6, v0

    mul-long v6, v6, v20

    sub-int v8, p2, p1

    int-to-long v10, v8

    div-long v20, v6, v10

    .line 498
    move-wide/from16 v0, v20

    long-to-int v6, v0

    add-int v9, v6, p1

    .line 500
    .end local v25    # "selstart":I
    .local v9, "selstart":I
    const/4 v7, 0x0

    sget-object v8, Lcom/a_vcard/android/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v11, 0x22

    move-object/from16 v6, p0

    move v10, v9

    invoke-direct/range {v6 .. v11}, Lcom/a_vcard/android/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 503
    .end local v20    # "off":J
    :goto_3
    move/from16 v0, p1

    if-le v13, v0, :cond_a

    move/from16 v0, p2

    if-ge v13, v0, :cond_a

    .line 504
    sub-int v6, v13, p1

    int-to-long v0, v6

    move-wide/from16 v20, v0

    .line 506
    .restart local v20    # "off":J
    move/from16 v0, v18

    int-to-long v6, v0

    mul-long v6, v6, v20

    sub-int v8, p2, p1

    int-to-long v10, v8

    div-long v20, v6, v10

    .line 507
    move-wide/from16 v0, v20

    long-to-int v6, v0

    add-int v13, v6, p1

    .line 509
    const/4 v11, 0x0

    sget-object v12, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v15, 0x22

    move-object/from16 v10, p0

    move v14, v13

    invoke-direct/range {v10 .. v15}, Lcom/a_vcard/android/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 513
    .end local v20    # "off":J
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextChange([Lcom/a_vcard/android/text/TextWatcher;III)V

    .line 514
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/SpannableStringBuilder;->sendTextHasChanged([Lcom/a_vcard/android/text/TextWatcher;)V

    goto/16 :goto_1

    .end local v9    # "selstart":I
    .restart local v25    # "selstart":I
    :cond_b
    move/from16 v9, v25

    .end local v25    # "selstart":I
    .restart local v9    # "selstart":I
    goto :goto_3
.end method

.method public setFilters([Lcom/a_vcard/android/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Lcom/a_vcard/android/text/InputFilter;

    .prologue
    .line 1132
    if-nez p1, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1136
    :cond_0
    iput-object p1, p0, Lcom/a_vcard/android/text/SpannableStringBuilder;->mFilters:[Lcom/a_vcard/android/text/InputFilter;

    .line 1137
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 526
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/a_vcard/android/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 527
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 860
    new-instance v0, Lcom/a_vcard/android/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/a_vcard/android/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/a_vcard/android/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 890
    .local v1, "len":I
    new-array v0, v1, [C

    .line 892
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Lcom/a_vcard/android/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 893
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
