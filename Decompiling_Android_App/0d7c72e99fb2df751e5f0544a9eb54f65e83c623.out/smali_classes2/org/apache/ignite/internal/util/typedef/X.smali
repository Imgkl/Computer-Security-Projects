.class public final Lorg/apache/ignite/internal/util/typedef/X;
.super Ljava/lang/Object;
.source "X.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CAUSE_MTD_NAMES:[Ljava/lang/String;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field private static final SPAN_DIVS:[J

.field private static final THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    const-class v2, Lorg/apache/ignite/internal/util/typedef/X;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lorg/apache/ignite/internal/util/typedef/X;->$assertionsDisabled:Z

    .line 43
    new-array v2, v4, [Ljava/lang/Object;

    sput-object v2, Lorg/apache/ignite/internal/util/typedef/X;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 46
    new-array v2, v6, [J

    fill-array-data v2, :array_0

    sput-object v2, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    .line 49
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "getCause"

    aput-object v5, v2, v4

    const-string v4, "getNextException"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "getTargetException"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "getException"

    aput-object v4, v2, v3

    const-string v3, "getSourceException"

    aput-object v3, v2, v6

    const/4 v3, 0x5

    const-string v4, "getRootCause"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "getCausedByException"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "getNested"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "getLinkedException"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "getNestedException"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "getLinkedCause"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "getThrowable"

    aput-object v4, v2, v3

    sput-object v2, Lorg/apache/ignite/internal/util/typedef/X;->CAUSE_MTD_NAMES:[Ljava/lang/String;

    .line 74
    :try_start_0
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "getCause"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    .local v0, "causeMtd":Ljava/lang/reflect/Method;
    :goto_1
    sput-object v0, Lorg/apache/ignite/internal/util/typedef/X;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 81
    return-void

    .end local v0    # "causeMtd":Ljava/lang/reflect/Method;
    :cond_0
    move v2, v4

    .line 41
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "ignored":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "causeMtd":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 46
    nop

    :array_0
    .array-data 8
        0x3e8
        0x3c
        0x3c
        0x3c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 8
    .param p0, "t"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 485
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v5, v6

    .line 503
    :cond_1
    :goto_0
    return-object v5

    .line 488
    :cond_2
    move-object v5, p0

    .local v5, "th":Ljava/lang/Throwable;
    :goto_1
    if-eqz v5, :cond_5

    .line 489
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 492
    invoke-virtual {v5}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 493
    .local v4, "n":Ljava/lang/Throwable;
    invoke-static {v4, p1}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v1

    .line 495
    .local v1, "found":Ljava/lang/Throwable;, "TT;"
    if-eqz v1, :cond_3

    move-object v5, v1

    .line 496
    goto :goto_0

    .line 492
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 499
    .end local v1    # "found":Ljava/lang/Throwable;, "TT;"
    .end local v4    # "n":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-ne v7, v5, :cond_6

    .end local v0    # "arr$":[Ljava/lang/Throwable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_5
    move-object v5, v6

    .line 503
    goto :goto_0

    .line 488
    .restart local v0    # "arr$":[Ljava/lang/Throwable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1
.end method

.method public static checkMinMemory(J)V
    .locals 10
    .param p0, "min"    # J

    .prologue
    const-wide/32 v8, 0x100000

    .line 816
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 818
    .local v0, "maxMem":J
    long-to-double v2, v0

    const-wide v4, 0x3feb333333333333L    # 0.85

    long-to-double v6, p0

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heap limit is too low ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v4, v0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB), please increase heap size at least up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v4, p0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->printerrln(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 824
    :cond_0
    return-void
.end method

.method private static cloneField(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V
    .locals 4
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "clone"    # Ljava/lang/Object;
    .param p4, "f"    # Ljava/lang/reflect/Field;
    .param p5, "honorCloneable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "identityIdxs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p1, "clones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 386
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 389
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/4 v1, 0x0

    .line 394
    .local v1, "set":Z
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 395
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 397
    const/4 v1, 0x1

    .line 401
    :cond_2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    invoke-virtual {p4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :goto_1
    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 404
    :cond_3
    :try_start_1
    invoke-virtual {p4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1, v2, p5}, Lorg/apache/ignite/internal/util/typedef/X;->deepClone(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 407
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 408
    invoke-virtual {p4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_4
    throw v2
.end method

.method public static cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "deep"    # Z
    .param p2, "honorCloneable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 251
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 252
    const/4 v1, 0x0

    .line 255
    :goto_0
    return-object v1

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/X;->shallowClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, p0, p2}, Lorg/apache/ignite/internal/util/typedef/X;->deepClone(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to clone instance of class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    new-array v0, p2, [B

    .line 838
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 840
    .local v1, "cnt":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    if-lez v2, :cond_0

    .line 841
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 843
    add-int/2addr v1, v2

    goto :goto_0

    .line 846
    :cond_0
    return v1
.end method

.method private static deepClone(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 18
    .param p2, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "honorCloneable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 320
    .local p0, "identityIdxs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p1, "clones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p2, :cond_1

    .line 321
    const/4 v6, 0x0

    .line 372
    :cond_0
    :goto_0
    return-object v6

    .line 323
    :cond_1
    if-eqz p3, :cond_2

    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/lang/Cloneable;

    if-eqz v3, :cond_2

    .line 324
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/X;->shallowClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 326
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 328
    .local v15, "idx":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 330
    .local v6, "clone":Ljava/lang/Object;
    if-eqz v15, :cond_3

    .line 331
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 333
    .end local v6    # "clone":Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_0

    .line 336
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_4

    move-object/from16 v6, p2

    .line 338
    goto :goto_0

    .line 340
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 342
    .local v12, "cls":Ljava/lang/Class;
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 343
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 345
    .local v10, "arrType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    .line 347
    .local v16, "len":I
    move/from16 v0, v16

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 349
    .restart local v6    # "clone":Ljava/lang/Object;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 350
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v3, v2}, Lorg/apache/ignite/internal/util/typedef/X;->deepClone(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v13, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 349
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 352
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 359
    .end local v6    # "clone":Ljava/lang/Object;
    .end local v10    # "arrType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "i":I
    .end local v16    # "len":I
    :cond_6
    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->forceNewInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 361
    .restart local v6    # "clone":Ljava/lang/Object;
    if-nez v6, :cond_7

    .line 362
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clone object (empty constructor could not be assigned): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_7
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-object v11, v12

    .local v11, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v3, Ljava/lang/Object;

    if-eq v11, v3, :cond_0

    .line 369
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    aget-object v7, v9, v14

    .local v7, "f":Ljava/lang/reflect/Field;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    .line 370
    invoke-static/range {v3 .. v8}, Lorg/apache/ignite/internal/util/typedef/X;->cloneField(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 369
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 368
    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    goto :goto_2
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "s1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "rest"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 138
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 139
    .local v3, "obj":Ljava/lang/Object;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static formatMins(J)Ljava/lang/String;
    .locals 10
    .param p0, "mins"    # J

    .prologue
    .line 783
    sget-boolean v5, Lorg/apache/ignite/internal/util/typedef/X;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 785
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-nez v5, :cond_1

    .line 786
    const-string v5, "< 1 min"

    .line 807
    :goto_0
    return-object v5

    .line 788
    :cond_1
    new-instance v4, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 790
    .local v4, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const-wide/16 v6, 0x5a0

    div-long v0, p0, v6

    .line 792
    .local v0, "dd":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 793
    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    cmp-long v5, v0, v8

    if-nez v5, :cond_5

    const-string v5, " day "

    :goto_1
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 795
    :cond_2
    const-wide/16 v6, 0x5a0

    rem-long/2addr p0, v6

    .line 797
    const-wide/16 v6, 0x3c

    div-long v2, p0, v6

    .line 799
    .local v2, "hh":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 800
    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    cmp-long v5, v2, v8

    if-nez v5, :cond_6

    const-string v5, " hour "

    :goto_2
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 802
    :cond_3
    const-wide/16 v6, 0x3c

    rem-long/2addr p0, v6

    .line 804
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_4

    .line 805
    invoke-virtual {v4, p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x1

    cmp-long v5, p0, v8

    if-nez v5, :cond_7

    const-string v5, " min "

    :goto_3
    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 807
    :cond_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 793
    .end local v2    # "hh":J
    :cond_5
    const-string v5, " days "

    goto :goto_1

    .line 800
    .restart local v2    # "hh":J
    :cond_6
    const-string v5, " hours "

    goto :goto_2

    .line 805
    :cond_7
    const-string v5, " mins "

    goto :goto_3
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 655
    sget-object v0, Lorg/apache/ignite/internal/util/typedef/X;->CAUSE_MTD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/X;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "mtdNames"    # [Ljava/lang/String;

    .prologue
    .line 673
    if-nez p0, :cond_1

    .line 674
    const/4 v1, 0x0

    .line 695
    :cond_0
    :goto_0
    return-object v1

    .line 676
    :cond_1
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/X;->getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 678
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 679
    if-nez p1, :cond_2

    .line 680
    sget-object p1, Lorg/apache/ignite/internal/util/typedef/X;->CAUSE_MTD_NAMES:[Ljava/lang/String;

    .line 682
    :cond_2
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 683
    .local v4, "mtdName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 684
    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/X;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_4

    .line 691
    .end local v4    # "mtdName":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_0

    .line 692
    const-string v5, "detail"

    invoke-static {p0, v5}, Lorg/apache/ignite/internal/util/typedef/X;->getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 682
    .restart local v4    # "mtdName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 560
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 566
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :goto_1
    return-object v1

    .line 570
    :catch_0
    move-exception v1

    .line 575
    :cond_0
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 570
    :catch_1
    move-exception v1

    goto :goto_2

    .line 562
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "mtdName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 528
    const/4 v0, 0x0

    .line 531
    .local v0, "mtd":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 537
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    :try_start_1
    sget-object v1, Lorg/apache/ignite/internal/util/typedef/X;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 546
    :goto_1
    return-object v1

    .line 541
    :catch_0
    move-exception v1

    :cond_0
    :goto_2
    move-object v1, v2

    .line 546
    goto :goto_1

    .line 541
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    .line 533
    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 511
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    .line 512
    check-cast p0, Ljava/sql/SQLException;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 514
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    .line 515
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 517
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 749
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 750
    .local v4, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    const/4 v7, 0x1

    invoke-direct {v3, v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 751
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/X;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v6

    .line 753
    .local v6, "ts":[Ljava/lang/Throwable;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 754
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 756
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/X;->isNestedThrowable(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 760
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 753
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSystemOrEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 178
    sget-boolean v1, Lorg/apache/ignite/internal/util/typedef/X;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 183
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_1
    return-object v0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/X;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 720
    :cond_0
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 734
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/X;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 736
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method public static varargs hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 9
    .param p0, "t"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cls":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 425
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v6, v7

    .line 445
    :cond_1
    :goto_0
    return v6

    .line 428
    :cond_2
    sget-boolean v8, Lorg/apache/ignite/internal/util/typedef/X;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    if-nez p1, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 430
    :cond_3
    move-object v5, p0

    .local v5, "th":Ljava/lang/Throwable;
    :goto_1
    if-eqz v5, :cond_6

    .line 431
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 432
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 436
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 437
    .local v4, "n":Ljava/lang/Throwable;
    invoke-static {v4, p1}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 441
    .end local v4    # "n":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-ne v8, v5, :cond_7

    .end local v0    # "arr$":[Ljava/lang/Throwable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_6
    move v6, v7

    .line 445
    goto :goto_0

    .line 430
    .restart local v0    # "arr$":[Ljava/lang/Throwable;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1
.end method

.method public static hasSuppressed(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 7
    .param p0, "t"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 457
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v4, v5

    .line 470
    :cond_1
    :goto_0
    return v4

    .line 460
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 461
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Throwable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 462
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 465
    invoke-static {v3, p1}, Lorg/apache/ignite/internal/util/typedef/X;->hasSuppressed(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/Throwable;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_3
    move v4, v5

    .line 470
    goto :goto_0
.end method

.method public static isNestedThrowable(Ljava/lang/Throwable;)Z
    .locals 11
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 598
    if-nez p0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v7

    .line 601
    :cond_1
    instance-of v9, p0, Ljava/sql/SQLException;

    if-nez v9, :cond_2

    instance-of v9, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v9, :cond_3

    :cond_2
    move v7, v8

    .line 602
    goto :goto_0

    .line 604
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/X;->isThrowableNested()Z

    move-result v9

    if-eqz v9, :cond_4

    move v7, v8

    .line 605
    goto :goto_0

    .line 607
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 608
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lorg/apache/ignite/internal/util/typedef/X;->CAUSE_MTD_NAMES:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v0, v1, v4

    .line 610
    .local v0, "CAUSE_MTD_NAME":Ljava/lang/String;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 612
    .local v6, "mtd":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_5

    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    .line 613
    goto :goto_0

    .line 615
    .end local v6    # "mtd":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v9

    .line 608
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 621
    .end local v0    # "CAUSE_MTD_NAME":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v9, "detail"

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 623
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    move v7, v8

    .line 624
    goto :goto_0

    .line 626
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v8

    goto :goto_0

    :catch_2
    move-exception v8

    goto :goto_0

    .line 615
    .restart local v0    # "CAUSE_MTD_NAME":Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_2
.end method

.method public static isThrowableNested()Z
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lorg/apache/ignite/internal/util/typedef/X;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "dflt"    # D

    .prologue
    .line 874
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 877
    .end local p1    # "dflt":D
    :cond_0
    :goto_0
    return-wide p1

    .line 876
    .restart local p1    # "dflt":D
    :catch_0
    move-exception v0

    .line 877
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static varargs print(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "s1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "rest"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 152
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 153
    .local v3, "obj":Ljava/lang/Object;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static varargs printerr(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "s1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "rest"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 163
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 166
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 167
    .local v3, "obj":Ljava/lang/Object;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static printerrln()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 102
    return-void
.end method

.method public static varargs printerrln(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "rest"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public static println()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 95
    return-void
.end method

.method public static varargs println(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "s1"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "rest"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_0

    array-length v4, p1

    if-lez v4, :cond_0

    .line 114
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 115
    .local v3, "obj":Ljava/lang/Object;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static resolveIgniteHome()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 856
    const-string v1, "IGNITE_HOME"

    invoke-static {v1}, Lorg/apache/ignite/IgniteSystemProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "var":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 859
    return-object v0

    .line 861
    :cond_0
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Failed to resolve Ignite home folder (please set \'IGNITE_HOME\' environment or system variable)"

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static shallowClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 270
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_1

    .line 271
    const/4 p0, 0x0

    .line 301
    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    .local v0, "clone":Ljava/lang/Object;, "TT;"
    .local v2, "mtd":Ljava/lang/reflect/Method;
    .local v3, "set":Z
    :cond_0
    :goto_0
    return-object p0

    .line 273
    .end local v0    # "clone":Ljava/lang/Object;, "TT;"
    .end local v2    # "mtd":Ljava/lang/reflect/Method;
    .end local v3    # "set":Z
    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v4, p0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 277
    instance-of v4, p0, [B

    if-eqz v4, :cond_2

    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    move-object p0, v4

    goto :goto_0

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v4, p0, [S

    if-eqz v4, :cond_3

    check-cast p0, [S

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_3
    instance-of v4, p0, [C

    if-eqz v4, :cond_4

    check-cast p0, [C

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_4
    instance-of v4, p0, [I

    if-eqz v4, :cond_5

    check-cast p0, [I

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_5
    instance-of v4, p0, [J

    if-eqz v4, :cond_6

    check-cast p0, [J

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_6
    instance-of v4, p0, [F

    if-eqz v4, :cond_7

    check-cast p0, [F

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_7
    instance-of v4, p0, [D

    if-eqz v4, :cond_8

    check-cast p0, [D

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_8
    instance-of v4, p0, [Z

    if-eqz v4, :cond_9

    check-cast p0, [Z

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_9
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 289
    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clone"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 291
    .restart local v2    # "mtd":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 293
    .restart local v3    # "set":Z
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_b

    .line 294
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 296
    :cond_b
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .restart local v0    # "clone":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_c

    .line 299
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    move-object p0, v0

    .line 301
    goto/16 :goto_0

    .line 303
    .end local v0    # "clone":Ljava/lang/Object;, "TT;"
    .end local v2    # "mtd":Ljava/lang/reflect/Method;
    .end local v3    # "set":Z
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to clone instance of class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static timeSpan2HMS(J)Ljava/lang/String;
    .locals 12
    .param p0, "span"    # J

    .prologue
    .line 215
    const/4 v5, 0x4

    new-array v4, v5, [J

    .line 217
    .local v4, "t":[J
    move-wide v2, p0

    .line 219
    .local v2, "sp":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    array-length v5, v5

    if-ge v0, v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 220
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    aget-wide v6, v5, v0

    rem-long v6, v2, v6

    aput-wide v6, v4, v0

    .line 219
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-wide v6, v5, v0

    div-long/2addr v2, v6

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 222
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x3

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x2

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x2

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    const/4 v5, 0x3

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static timeSpan2HMSM(J)Ljava/lang/String;
    .locals 12
    .param p0, "span"    # J

    .prologue
    .line 195
    const/4 v5, 0x4

    new-array v4, v5, [J

    .line 197
    .local v4, "t":[J
    move-wide v2, p0

    .line 199
    .local v2, "sp":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    array-length v5, v5

    if-ge v0, v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 200
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    aget-wide v6, v5, v0

    rem-long v6, v2, v6

    aput-wide v6, v4, v0

    .line 199
    sget-object v5, Lorg/apache/ignite/internal/util/typedef/X;->SPAN_DIVS:[J

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-wide v6, v5, v0

    div-long/2addr v2, v6

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 202
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x3

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x2

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x2

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    const-wide/16 v10, 0xa

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-wide v8, v4, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    const/4 v5, 0x3

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x2

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    aget-wide v8, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public static waitAll(Ljava/lang/Iterable;)V
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, "futs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/lang/IgniteFuture<*>;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    :cond_0
    return-void

    .line 772
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteFuture;

    .line 773
    .local v0, "fut":Lorg/apache/ignite/lang/IgniteFuture;
    invoke-interface {v0}, Lorg/apache/ignite/lang/IgniteFuture;->get()Ljava/lang/Object;

    goto :goto_0
.end method
