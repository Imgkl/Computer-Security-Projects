.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemoveSwap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$err:Lorg/apache/ignite/internal/util/lang/GridTuple;

.field final synthetic val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field final synthetic val$part:I

.field final synthetic val$t:Lorg/apache/ignite/internal/util/lang/GridTuple;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridTuple;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/util/lang/GridTuple;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$t:Lorg/apache/ignite/internal/util/lang/GridTuple;

    iput p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$part:I

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$err:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 586
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->apply([B)V

    return-void
.end method

.method public apply([B)V
    .locals 20
    .param p1, "rmv"    # [B

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 590
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-object/from16 v0, p1

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;[B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v17

    .line 592
    .local v17, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-nez v17, :cond_1

    .line 632
    .end local v17    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_0
    :goto_0
    return-void

    .line 595
    .restart local v17    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$t:Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    .line 597
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v11

    .line 598
    .local v11, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v19

    .line 601
    .local v19, "valBytes":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x45

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$part:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    check-cast v6, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v7, 0x0

    const/16 v8, 0x45

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v2 .. v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$part:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v17

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    invoke-static {v2, v3, v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v18

    .line 622
    .local v18, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    if-eqz v18, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onUnswap(Ljava/lang/Object;Ljava/lang/Object;[B)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 628
    .end local v11    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v18    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .end local v19    # "valBytes":[B
    :catch_0
    move-exception v16

    .line 629
    .local v16, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;->val$err:Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
