.class public Lorg/apache/ignite/startup/BasicWarmupClosure;
.super Ljava/lang/Object;
.source "BasicWarmupClosure.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/startup/BasicWarmupClosure$1;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$ReplaceCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$PutIfAbsentCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$RemoveCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$PutCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$GetCallable;,
        Lorg/apache/ignite/startup/BasicWarmupClosure$BaseWarmupCallable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/configuration/IgniteConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final DFLT_GRID_CNT:I = 0x2

.field public static final DFLT_ITERATION_CNT:I = 0x7530

.field public static final DFLT_KEY_RANGE:I = 0x2710

.field private static final WARMUP_DATE_FMT:Ljava/text/SimpleDateFormat;

.field private static final serialVersionUID:J = 0x7f5561586cf04c52L


# instance fields
.field private discoveryPort:I

.field private gridCnt:I

.field private iterCnt:I

.field private keyRange:I

.field private threadCnt:I

.field private warmupMethods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/ignite/startup/BasicWarmupClosure;->WARMUP_DATE_FMT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v3, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->gridCnt:I

    .line 59
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->threadCnt:I

    .line 62
    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->iterCnt:I

    .line 65
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->keyRange:I

    .line 68
    const/16 v0, 0x6978

    iput v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->discoveryPort:I

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "put"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "putx"

    aput-object v2, v0, v1

    const-string v1, "get"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "remove"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "removex"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "putIfAbsent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "replace"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->warmupMethods:[Ljava/lang/String;

    .line 543
    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/startup/BasicWarmupClosure;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/startup/BasicWarmupClosure;

    .prologue
    .line 39
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->iterCnt:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/startup/BasicWarmupClosure;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/startup/BasicWarmupClosure;

    .prologue
    .line 39
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->keyRange:I

    return v0
.end method

.method private doWarmup(Ljava/lang/Iterable;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/Ignite;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "grids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/Ignite;>;"
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/Ignite;

    .line 244
    .local v7, "first":Lorg/apache/ignite/Ignite;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/startup/BasicWarmupClosure;->threadCnt:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v17

    .line 247
    .local v17, "svc":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v15, v2

    .local v15, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v13, v11

    .end local v2    # "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v11    # "i$":I
    .end local v15    # "len$":I
    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v6, v2, v13

    .line 248
    .local v6, "cc":Lorg/apache/ignite/configuration/CacheConfiguration;
    move-object v0, v7

    check-cast v0, Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v4

    .line 250
    .local v4, "cache0":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/startup/BasicWarmupClosure;->warmupMethods:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .end local v13    # "i$":I
    .restart local v11    # "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .local v12, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    aget-object v18, v3, v12

    .line 251
    .local v18, "warmupMethod":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/startup/BasicWarmupClosure;->threadCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v9, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/startup/BasicWarmupClosure;->threadCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 256
    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_0
    :goto_3
    packed-switch v19, :pswitch_data_0

    .line 300
    new-instance v19, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unsupported warmup method: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "cache0":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "cc":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v9    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .end local v18    # "warmupMethod":Ljava/lang/String;
    :catchall_0
    move-exception v19

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v19

    .line 256
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "cache0":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v6    # "cc":Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v9    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future;>;"
    .restart local v10    # "i":I
    .restart local v12    # "i$":I
    .restart local v16    # "len$":I
    .restart local v18    # "warmupMethod":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    const-string v20, "get"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x0

    goto :goto_3

    :sswitch_1
    const-string v20, "put"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x1

    goto :goto_3

    :sswitch_2
    const-string v20, "putx"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x2

    goto :goto_3

    :sswitch_3
    const-string v20, "remove"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x3

    goto :goto_3

    :sswitch_4
    const-string v20, "removex"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x4

    goto :goto_3

    :sswitch_5
    const-string v20, "putIfAbsent"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x5

    goto :goto_3

    :sswitch_6
    const-string v20, "replace"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x6

    goto/16 :goto_3

    .line 258
    :pswitch_0
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$GetCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$GetCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 303
    .local v5, "call":Ljava/util/concurrent/Callable;
    :goto_4
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 264
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :pswitch_1
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$PutCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$PutCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 266
    .restart local v5    # "call":Ljava/util/concurrent/Callable;
    goto :goto_4

    .line 270
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :pswitch_2
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$PutxCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 272
    .restart local v5    # "call":Ljava/util/concurrent/Callable;
    goto :goto_4

    .line 276
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :pswitch_3
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$RemoveCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$RemoveCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 278
    .restart local v5    # "call":Ljava/util/concurrent/Callable;
    goto :goto_4

    .line 282
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :pswitch_4
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$RemovexCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 284
    .restart local v5    # "call":Ljava/util/concurrent/Callable;
    goto :goto_4

    .line 288
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :pswitch_5
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$PutIfAbsentCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$PutIfAbsentCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 290
    .restart local v5    # "call":Ljava/util/concurrent/Callable;
    goto :goto_4

    .line 294
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :pswitch_6
    new-instance v5, Lorg/apache/ignite/startup/BasicWarmupClosure$ReplaceCallable;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v4, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure$ReplaceCallable;-><init>(Lorg/apache/ignite/startup/BasicWarmupClosure;Lorg/apache/ignite/internal/processors/cache/GridCache;Lorg/apache/ignite/startup/BasicWarmupClosure$1;)V

    .line 296
    .restart local v5    # "call":Ljava/util/concurrent/Callable;
    goto :goto_4

    .line 306
    .end local v5    # "call":Ljava/util/concurrent/Callable;
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Running warmup [cacheName="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", method="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/startup/BasicWarmupClosure;->out(Ljava/lang/String;)V

    .line 308
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12    # "i$":I
    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 309
    .local v8, "fut":Ljava/util/concurrent/Future;
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_5

    .line 311
    .end local v8    # "fut":Ljava/util/concurrent/Future;
    :cond_2
    const/4 v14, 0x0

    .local v14, "key":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/startup/BasicWarmupClosure;->keyRange:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 312
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 250
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .local v11, "i$":I
    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto/16 :goto_1

    .line 247
    .end local v9    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future;>;"
    .end local v10    # "i":I
    .end local v14    # "key":I
    .end local v18    # "warmupMethod":Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v13, 0x1

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    move v13, v11

    .end local v11    # "i$":I
    .restart local v13    # "i$":I
    goto/16 :goto_0

    .line 317
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "cache0":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "cc":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v16    # "len$":I
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 319
    return-void

    .line 256
    :sswitch_data_0
    .sparse-switch
        -0x37b5077c -> :sswitch_3
        0x18f56 -> :sswitch_0
        0x1b30f -> :sswitch_1
        0x34af49 -> :sswitch_2
        0x20186ae5 -> :sswitch_5
        0x41141874 -> :sswitch_4
        0x413cb2b4 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private matches(Ljava/lang/Iterable;Lorg/apache/ignite/configuration/CacheConfiguration;)Z
    .locals 3
    .param p2, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            ">;",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "reduced":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 382
    .local v0, "ccfg0":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/startup/BasicWarmupClosure;->matches(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const/4 v2, 0x1

    .line 386
    .end local v0    # "ccfg0":Lorg/apache/ignite/configuration/CacheConfiguration;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private matches(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/configuration/CacheConfiguration;)Z
    .locals 2
    .param p1, "ccfg0"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "ccfg1"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 397
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static out(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/startup/BasicWarmupClosure;->WARMUP_DATE_FMT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][WARMUP]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private prepareConfiguration(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 10
    .param p1, "gridCfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    const/4 v8, 0x0

    .line 338
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v3, v8

    .line 370
    :goto_0
    return-object v3

    .line 341
    :cond_0
    new-instance v3, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-direct {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>()V

    .line 343
    .local v3, "cp":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual {v3, v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setConnectorConfiguration(Lorg/apache/ignite/configuration/ConnectorConfiguration;)V

    .line 345
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v6, "reduced":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 348
    .local v1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isSystemCache(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 347
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 351
    :cond_2
    invoke-direct {p0, v6, v1}, Lorg/apache/ignite/startup/BasicWarmupClosure;->matches(Ljava/lang/Iterable;Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 352
    new-instance v2, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-direct {v2, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;-><init>(Ljavax/cache/configuration/CompleteConfiguration;)V

    .line 354
    .local v2, "ccfgCp":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v2, v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->setCacheStoreFactory(Ljavax/cache/configuration/Factory;)V

    .line 355
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lorg/apache/ignite/configuration/CacheConfiguration;->setWriteBehindEnabled(Z)V

    .line 357
    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    .end local v1    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v2    # "ccfgCp":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_3
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v3, v8

    .line 362
    goto :goto_0

    .line 364
    :cond_4
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v7, v8, [Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 366
    .local v7, "res":[Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 368
    invoke-virtual {v3, v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setCacheConfiguration([Lorg/apache/ignite/configuration/CacheConfiguration;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lorg/apache/ignite/configuration/IgniteConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/startup/BasicWarmupClosure;->apply(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 13
    .param p1, "gridCfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    const/4 v12, 0x0

    .line 184
    invoke-direct {p0, p1}, Lorg/apache/ignite/startup/BasicWarmupClosure;->prepareConfiguration(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    .line 187
    .local v0, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting grids to warmup caches [gridCnt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->gridCnt:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", caches="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/ignite/startup/BasicWarmupClosure;->out(Ljava/lang/String;)V

    .line 193
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 195
    .local v7, "ignites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/Ignite;>;"
    const-string v10, "IGNITE_UPDATE_NOTIFIER"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "old":Ljava/lang/String;
    :try_start_0
    const-string v10, "IGNITE_UPDATE_NOTIFIER"

    const-string v11, "false"

    invoke-static {v10, v11}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    new-instance v8, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/vm/TcpDiscoveryVmIpFinder;-><init>(Z)V

    .line 202
    .local v8, "ipFinder":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->gridCnt:I

    if-ge v4, v10, :cond_1

    .line 203
    new-instance v1, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-direct {v1, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>(Lorg/apache/ignite/configuration/IgniteConfiguration;)V

    .line 205
    .local v1, "cfg0":Lorg/apache/ignite/configuration/IgniteConfiguration;
    new-instance v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-direct {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;-><init>()V

    .line 207
    .local v2, "discoSpi":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    invoke-virtual {v2, v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->setIpFinder(Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;)V

    .line 209
    iget v10, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->discoveryPort:I

    invoke-virtual {v2, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->setLocalPort(I)V

    .line 211
    invoke-virtual {v1, v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setDiscoverySpi(Lorg/apache/ignite/spi/discovery/DiscoverySpi;)V

    .line 213
    new-instance v10, Lorg/apache/ignite/logger/NullLogger;

    invoke-direct {v10}, Lorg/apache/ignite/logger/NullLogger;-><init>()V

    invoke-virtual {v1, v10}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setGridLogger(Lorg/apache/ignite/IgniteLogger;)V

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ignite-warmup-grid-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setGridName(Ljava/lang/String;)V

    .line 217
    invoke-static {v1}, Lorg/apache/ignite/Ignition;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/Ignite;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "cfg0":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .end local v2    # "discoSpi":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    :cond_1
    invoke-direct {p0, v7}, Lorg/apache/ignite/startup/BasicWarmupClosure;->doWarmup(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/Ignite;

    .line 227
    .local v6, "ignite":Lorg/apache/ignite/Ignite;
    invoke-interface {v6}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lorg/apache/ignite/Ignition;->stop(Ljava/lang/String;Z)Z

    goto :goto_2

    .line 229
    .end local v6    # "ignite":Lorg/apache/ignite/Ignite;
    :cond_2
    const-string v10, "Stopped warmup grids."

    invoke-static {v10}, Lorg/apache/ignite/startup/BasicWarmupClosure;->out(Ljava/lang/String;)V

    .line 231
    if-nez v9, :cond_3

    .line 232
    const-string v9, "false"

    .line 234
    :cond_3
    const-string v10, "IGNITE_UPDATE_NOTIFIER"

    invoke-static {v10, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 222
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "ipFinder":Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v10, Lorg/apache/ignite/IgniteException;

    invoke-direct {v10, v3}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/Ignite;

    .line 227
    .restart local v6    # "ignite":Lorg/apache/ignite/Ignite;
    invoke-interface {v6}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v12}, Lorg/apache/ignite/Ignition;->stop(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 229
    .end local v6    # "ignite":Lorg/apache/ignite/Ignite;
    :cond_4
    const-string v11, "Stopped warmup grids."

    invoke-static {v11}, Lorg/apache/ignite/startup/BasicWarmupClosure;->out(Ljava/lang/String;)V

    .line 231
    if-nez v9, :cond_5

    .line 232
    const-string v9, "false"

    .line 234
    :cond_5
    const-string v11, "IGNITE_UPDATE_NOTIFIER"

    invoke-static {v11, v9}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    throw v10
.end method

.method public getDiscoveryPort()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->discoveryPort:I

    return v0
.end method

.method public getGridCount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->gridCnt:I

    return v0
.end method

.method public getIterationCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->iterCnt:I

    return v0
.end method

.method public getKeyRange()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->keyRange:I

    return v0
.end method

.method public getThreadCount()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->threadCnt:I

    return v0
.end method

.method public getWarmupMethods()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->warmupMethods:[Ljava/lang/String;

    return-object v0
.end method

.method public setDiscoveryPort(I)V
    .locals 0
    .param p1, "discoveryPort"    # I

    .prologue
    .line 178
    iput p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->discoveryPort:I

    .line 179
    return-void
.end method

.method public setGridCount(I)V
    .locals 0
    .param p1, "gridCnt"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->gridCnt:I

    .line 89
    return-void
.end method

.method public setIterationCount(I)V
    .locals 0
    .param p1, "iterCnt"    # I

    .prologue
    .line 142
    iput p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->iterCnt:I

    .line 143
    return-void
.end method

.method public setKeyRange(I)V
    .locals 0
    .param p1, "keyRange"    # I

    .prologue
    .line 160
    iput p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->keyRange:I

    .line 161
    return-void
.end method

.method public setThreadCount(I)V
    .locals 0
    .param p1, "threadCnt"    # I

    .prologue
    .line 124
    iput p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->threadCnt:I

    .line 125
    return-void
.end method

.method public varargs setWarmupMethods([Ljava/lang/String;)V
    .locals 0
    .param p1, "warmupMethods"    # [Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/apache/ignite/startup/BasicWarmupClosure;->warmupMethods:[Ljava/lang/String;

    .line 107
    return-void
.end method
