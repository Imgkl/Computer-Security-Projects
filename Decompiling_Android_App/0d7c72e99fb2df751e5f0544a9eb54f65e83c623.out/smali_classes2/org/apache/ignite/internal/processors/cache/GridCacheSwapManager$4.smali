.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemove(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiInClosure",
        "<",
        "Lorg/apache/ignite/spi/swapspace/SwapKey;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$err:Lorg/apache/ignite/internal/util/lang/GridTuple;

.field final synthetic val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$res:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/lang/GridTuple;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$res:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$err:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 817
    check-cast p1, Lorg/apache/ignite/spi/swapspace/SwapKey;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->apply(Lorg/apache/ignite/spi/swapspace/SwapKey;[B)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/spi/swapspace/SwapKey;[B)V
    .locals 20
    .param p1, "swapKey"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p2, "rmv"    # [B

    .prologue
    .line 819
    if-eqz p2, :cond_0

    .line 821
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-object/from16 v0, p2

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;[B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v19

    .line 823
    .local v19, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-nez v19, :cond_1

    .line 872
    .end local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_0
    :goto_0
    return-void

    .line 826
    .restart local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->keyBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    .line 828
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->partition()I

    move-result v4

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->type()B

    move-result v6

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v8

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v10

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    invoke-direct/range {v2 .. v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILjava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 838
    .local v2, "unswapped":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$res:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v5, 0x45

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->partition()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v8, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v9, 0x0

    const/16 v10, 0x45

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v3

    invoke-virtual/range {v4 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/swapspace/SwapKey;->partition()I

    move-result v5

    move-object/from16 v0, v19

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    invoke-static {v4, v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    if-eqz v4, :cond_0

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$qryMgr:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onUnswap(Ljava/lang/Object;Ljava/lang/Object;[B)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 868
    .end local v2    # "unswapped":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :catch_0
    move-exception v18

    .line 869
    .local v18, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;->val$err:Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
