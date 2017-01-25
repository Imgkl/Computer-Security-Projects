.class public Lorg/apache/ignite/internal/util/io/GridFilenameUtils;
.super Ljava/lang/Object;
.source "GridFilenameUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;
    }
.end annotation


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 108
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->SYSTEM_SEPARATOR:C

    .line 115
    invoke-static {}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->OTHER_SEPARATOR:C

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "fullFilenameToAdd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 471
    invoke-static {p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 472
    .local v2, "prefix":I
    if-gez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-object v3

    .line 474
    :cond_1
    if-lez v2, :cond_2

    .line 475
    invoke-static {p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 476
    :cond_2
    if-eqz p0, :cond_0

    .line 478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 479
    .local v1, "len":I
    if-nez v1, :cond_3

    .line 480
    invoke-static {p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 481
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 482
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 485
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "canonicalParent"    # Ljava/lang/String;
    .param p1, "canonicalChild"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 514
    if-nez p0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    if-nez p1, :cond_2

    .line 523
    :cond_1
    :goto_0
    return v0

    .line 520
    :cond_2
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 523
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-virtual {v0, p1, p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "includeSeparator"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 866
    if-nez p0, :cond_1

    move-object p0, v3

    .line 883
    .end local p0    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 868
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 869
    .local v2, "prefix":I
    if-gez v2, :cond_2

    move-object p0, v3

    .line 870
    goto :goto_0

    .line 871
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 872
    if-eqz p1, :cond_0

    .line 873
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 877
    :cond_3
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 878
    .local v1, "index":I
    if-gez v1, :cond_4

    .line 879
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 880
    :cond_4
    if-eqz p1, :cond_6

    const/4 v3, 0x1

    :goto_1
    add-int v0, v1, v3

    .line 881
    .local v0, "end":I
    if-nez v0, :cond_5

    .line 882
    add-int/lit8 v0, v0, 0x1

    .line 883
    :cond_5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0    # "end":I
    :cond_6
    move v3, v4

    .line 880
    goto :goto_1
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separatorAdd"    # I

    .prologue
    const/4 v3, 0x0

    .line 787
    if-nez p0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-object v3

    .line 789
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 790
    .local v2, "prefix":I
    if-ltz v2, :cond_0

    .line 792
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 793
    .local v1, "index":I
    add-int v0, v1, p1

    .line 794
    .local v0, "endIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ltz v1, :cond_2

    if-lt v2, v0, :cond_3

    .line 795
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 796
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "separator"    # C
    .param p2, "keepSeparator"    # Z

    .prologue
    .line 345
    if-nez p0, :cond_1

    .line 346
    const/4 p0, 0x0

    .line 426
    .end local p0    # "filename":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 347
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 348
    .local v6, "size":I
    if-eqz v6, :cond_0

    .line 350
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v5

    .line 351
    .local v5, "prefix":I
    if-gez v5, :cond_2

    .line 352
    const/4 p0, 0x0

    goto :goto_0

    .line 354
    :cond_2
    add-int/lit8 v8, v6, 0x2

    new-array v0, v8, [C

    .line 355
    .local v0, "array":[C
    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v0, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 358
    sget-char v8, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne p1, v8, :cond_4

    sget-char v4, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->OTHER_SEPARATOR:C

    .line 359
    .local v4, "otherSeparator":C
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v8, v0

    if-ge v1, v8, :cond_5

    .line 360
    aget-char v8, v0, v1

    if-ne v8, v4, :cond_3

    .line 361
    aput-char p1, v0, v1

    .line 359
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    .end local v1    # "i":I
    .end local v4    # "otherSeparator":C
    :cond_4
    sget-char v4, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->SYSTEM_SEPARATOR:C

    goto :goto_1

    .line 365
    .restart local v1    # "i":I
    .restart local v4    # "otherSeparator":C
    :cond_5
    const/4 v3, 0x1

    .line 366
    .local v3, "lastIsDirectory":Z
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v0, v8

    if-eq v8, p1, :cond_6

    .line 367
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "size":I
    .local v7, "size":I
    aput-char p1, v0, v6

    .line 368
    const/4 v3, 0x0

    move v6, v7

    .line 372
    .end local v7    # "size":I
    .restart local v6    # "size":I
    :cond_6
    add-int/lit8 v1, v5, 0x1

    :goto_3
    if-ge v1, v6, :cond_8

    .line 373
    aget-char v8, v0, v1

    if-ne v8, p1, :cond_7

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    if-ne v8, p1, :cond_7

    .line 374
    add-int/lit8 v8, v1, -0x1

    sub-int v9, v6, v1

    invoke-static {v0, v1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    add-int/lit8 v6, v6, -0x1

    .line 376
    add-int/lit8 v1, v1, -0x1

    .line 372
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 381
    :cond_8
    add-int/lit8 v1, v5, 0x1

    :goto_4
    if-ge v1, v6, :cond_c

    .line 382
    aget-char v8, v0, v1

    if-ne v8, p1, :cond_b

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_b

    add-int/lit8 v8, v5, 0x1

    if-eq v1, v8, :cond_9

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    if-ne v8, p1, :cond_b

    .line 384
    :cond_9
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_a

    .line 385
    const/4 v3, 0x1

    .line 386
    :cond_a
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v1, -0x1

    sub-int v10, v6, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    add-int/lit8 v6, v6, -0x2

    .line 388
    add-int/lit8 v1, v1, -0x1

    .line 381
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 394
    :cond_c
    add-int/lit8 v1, v5, 0x2

    :goto_5
    if-ge v1, v6, :cond_13

    .line 395
    aget-char v8, v0, v1

    if-ne v8, p1, :cond_10

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    add-int/lit8 v8, v5, 0x2

    if-eq v1, v8, :cond_d

    add-int/lit8 v8, v1, -0x3

    aget-char v8, v0, v8

    if-ne v8, p1, :cond_10

    .line 397
    :cond_d
    add-int/lit8 v8, v5, 0x2

    if-ne v1, v8, :cond_e

    .line 398
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 399
    :cond_e
    add-int/lit8 v8, v6, -0x1

    if-ne v1, v8, :cond_f

    .line 400
    const/4 v3, 0x1

    .line 402
    :cond_f
    add-int/lit8 v2, v1, -0x4

    .local v2, "j":I
    :goto_6
    if-lt v2, v5, :cond_12

    .line 403
    aget-char v8, v0, v2

    if-ne v8, p1, :cond_11

    .line 405
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v2, 0x1

    sub-int v10, v6, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    sub-int v8, v1, v2

    sub-int/2addr v6, v8

    .line 407
    add-int/lit8 v1, v2, 0x1

    .line 394
    .end local v2    # "j":I
    :cond_10
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 402
    .restart local v2    # "j":I
    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 412
    :cond_12
    add-int/lit8 v8, v1, 0x1

    sub-int v9, v6, v1

    invoke-static {v0, v8, v0, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v8, v5

    sub-int/2addr v6, v8

    .line 414
    add-int/lit8 v1, v5, 0x1

    goto :goto_7

    .line 418
    .end local v2    # "j":I
    :cond_13
    if-gtz v6, :cond_14

    .line 419
    const-string p0, ""

    goto/16 :goto_0

    .line 421
    :cond_14
    if-gt v6, v5, :cond_15

    .line 422
    new-instance p0, Ljava/lang/String;

    .end local p0    # "filename":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 424
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_15
    if-eqz v3, :cond_16

    if-eqz p2, :cond_16

    .line 425
    new-instance p0, Ljava/lang/String;

    .end local p0    # "filename":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 426
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_16
    new-instance p0, Ljava/lang/String;

    .end local p0    # "filename":Ljava/lang/String;
    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    invoke-direct {p0, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1000
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;
    .param p2, "normalized"    # Z
    .param p3, "caseSensitivity"    # Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .prologue
    .line 1066
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1067
    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1078
    :goto_0
    return v0

    .line 1067
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1068
    :cond_2
    if-eqz p2, :cond_4

    .line 1069
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1070
    invoke-static {p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1071
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 1072
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error normalizing one or both of the file names"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_4
    if-nez p3, :cond_5

    .line 1077
    sget-object p3, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .line 1078
    :cond_5
    invoke-virtual {p3, p0, p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1031
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1048
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename1"    # Ljava/lang/String;
    .param p1, "filename2"    # Ljava/lang/String;

    .prologue
    .line 1015
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 950
    if-nez p0, :cond_0

    .line 951
    const/4 v1, 0x0

    .line 956
    :goto_0
    return-object v1

    .line 952
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 953
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 954
    const-string v1, ""

    goto :goto_0

    .line 956
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 825
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 904
    if-nez p0, :cond_0

    .line 905
    const/4 v1, 0x0

    .line 907
    :goto_0
    return-object v1

    .line 906
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 907
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 749
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 716
    if-nez p0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-object v1

    .line 718
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 719
    .local v0, "len":I
    if-ltz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 723
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 599
    if-nez p0, :cond_1

    move v5, v7

    .line 640
    :cond_0
    :goto_0
    return v5

    .line 601
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 602
    .local v2, "len":I
    if-nez v2, :cond_2

    move v5, v6

    .line 603
    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 605
    .local v0, "ch0":C
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_3

    move v5, v7

    .line 606
    goto :goto_0

    .line 607
    :cond_3
    if-ne v2, v5, :cond_5

    .line 608
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_4

    move v5, v8

    .line 609
    goto :goto_0

    .line 610
    :cond_4
    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 612
    :cond_5
    const/16 v9, 0x7e

    if-ne v0, v9, :cond_9

    .line 613
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 614
    .local v3, "posUnix":I
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 615
    .local v4, "posWin":I
    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    .line 616
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 617
    :cond_6
    if-ne v3, v7, :cond_7

    move v3, v4

    .line 618
    :cond_7
    if-ne v4, v7, :cond_8

    move v4, v3

    .line 619
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 621
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 622
    .local v1, "ch1":C
    const/16 v9, 0x3a

    if-ne v1, v9, :cond_d

    .line 623
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 624
    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    .line 625
    if-eq v2, v8, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v5, v8

    .line 626
    goto :goto_0

    .line 627
    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :cond_c
    move v5, v7

    .line 629
    goto :goto_0

    .line 631
    :cond_d
    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 632
    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 633
    .restart local v3    # "posUnix":I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 634
    .restart local v4    # "posWin":I
    if-ne v3, v7, :cond_e

    if-eq v4, v7, :cond_f

    :cond_e
    if-eq v3, v8, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    move v5, v7

    .line 635
    goto/16 :goto_0

    .line 636
    :cond_10
    if-ne v3, v7, :cond_11

    move v3, v4

    .line 637
    :cond_11
    if-ne v4, v7, :cond_12

    move v4, v3

    .line 638
    :cond_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 640
    .end local v3    # "posUnix":I
    .end local v4    # "posWin":I
    :cond_13
    invoke-static {v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 678
    if-nez p0, :cond_0

    .line 682
    :goto_0
    return v2

    .line 680
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 681
    .local v0, "extensionPos":I
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 682
    .local v1, "lastSeparator":I
    if-le v1, v0, :cond_1

    move v0, v2

    .end local v0    # "extensionPos":I
    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 657
    if-nez p0, :cond_0

    .line 658
    const/4 v2, -0x1

    .line 661
    :goto_0
    return v2

    .line 659
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 660
    .local v0, "lastUnixPos":I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 661
    .local v1, "lastWindowsPos":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1094
    if-nez p0, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return v1

    .line 1096
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1097
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1098
    :cond_3
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "fileExt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1138
    if-nez p0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return v4

    .line 1140
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1141
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 1142
    :cond_4
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "fileExt":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1144
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v3

    .line 1145
    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extensions"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1114
    if-nez p0, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return v6

    .line 1116
    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-nez v7, :cond_4

    .line 1117
    :cond_2
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 1118
    :cond_4
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "fileExt":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1120
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v5

    .line 1121
    goto :goto_0

    .line 1119
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 146
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    .prologue
    .line 135
    sget-char v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-char v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .prologue
    .line 238
    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    .line 239
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    .end local v0    # "separator":C
    :cond_0
    const/16 v0, 0x5c

    goto :goto_0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-char v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "unixSeparator"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    const/16 v0, 0x2f

    .line 333
    .local v0, "separator":C
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 332
    .end local v0    # "separator":C
    :cond_0
    const/16 v0, 0x5c

    goto :goto_0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 978
    if-nez p0, :cond_1

    .line 979
    const/4 p0, 0x0

    .line 984
    .end local p0    # "filename":Ljava/lang/String;
    .local v0, "index":I
    :cond_0
    :goto_0
    return-object p0

    .line 980
    .end local v0    # "index":I
    .restart local p0    # "filename":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 981
    .restart local v0    # "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 984
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 558
    if-nez p0, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 563
    :goto_0
    return-object v0

    .line 560
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 563
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x5c

    .line 534
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 536
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 546
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 548
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2a

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x3f

    .line 1304
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1305
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v7

    .line 1327
    :goto_0
    return-object v4

    .line 1307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1308
    .local v0, "array":[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1310
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 1311
    aget-char v4, v0, v2

    if-eq v4, v6, :cond_1

    aget-char v4, v0, v2

    if-ne v4, v8, :cond_6

    .line 1312
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1316
    :cond_2
    aget-char v4, v0, v2

    if-ne v4, v6, :cond_4

    .line 1317
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1318
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1320
    :cond_5
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1322
    :cond_6
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1324
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1174
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1218
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return v7

    .line 1220
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v7, v8

    .line 1221
    goto :goto_0

    .line 1222
    :cond_3
    if-nez p2, :cond_4

    .line 1223
    sget-object p2, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SENSITIVE:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    .line 1224
    :cond_4
    invoke-static {p1}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1225
    .local v5, "wcs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1226
    .local v0, "anyChars":Z
    const/4 v4, 0x0

    .line 1227
    .local v4, "textIdx":I
    const/4 v6, 0x0

    .line 1228
    .local v6, "wcsIdx":I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1232
    .local v2, "backtrack":Ljava/util/Stack;, "Ljava/util/Stack<[I>;"
    :cond_5
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 1233
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1234
    .local v1, "array":[I
    aget v6, v1, v8

    .line 1235
    aget v4, v1, v7

    .line 1236
    const/4 v0, 0x1

    .line 1240
    .end local v1    # "array":[I
    :cond_6
    :goto_1
    array-length v9, v5

    if-ge v6, v9, :cond_7

    .line 1242
    aget-object v9, v5, v6

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1244
    add-int/lit8 v4, v4, 0x1

    .line 1245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v4, v9, :cond_9

    .line 1284
    :cond_7
    :goto_2
    array-length v9, v5

    if-ne v6, v9, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v4, v9, :cond_0

    .line 1287
    :cond_8
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v9

    if-gtz v9, :cond_5

    move v7, v8

    .line 1289
    goto :goto_0

    .line 1247
    :cond_9
    const/4 v0, 0x0

    .line 1280
    :cond_a
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1249
    :cond_b
    aget-object v9, v5, v6

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1251
    const/4 v0, 0x1

    .line 1252
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_a

    .line 1253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3

    .line 1257
    :cond_c
    if-eqz v0, :cond_e

    .line 1259
    aget-object v9, v5, v6

    invoke-virtual {p2, p0, v4, v9}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 1260
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    .line 1264
    add-int/lit8 v9, v4, 0x1

    aget-object v10, v5, v6

    invoke-virtual {p2, p0, v9, v10}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1265
    .local v3, "repeat":I
    if-ltz v3, :cond_d

    .line 1266
    const/4 v9, 0x2

    new-array v9, v9, [I

    aput v6, v9, v8

    aput v3, v9, v7

    invoke-virtual {v2, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    .end local v3    # "repeat":I
    :cond_d
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    .line 1277
    const/4 v0, 0x0

    goto :goto_3

    .line 1269
    :cond_e
    aget-object v9, v5, v6

    invoke-virtual {p2, p0, v4, v9}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_2
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "wildcardMatcher"    # Ljava/lang/String;

    .prologue
    .line 1200
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;->SYSTEM:Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/io/GridFilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/io/GridFilenameUtils$IOCase;)Z

    move-result v0

    return v0
.end method
