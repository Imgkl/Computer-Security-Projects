.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;
.super Ljava/lang/Object;
.source "CacheContinuousQueryHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field final synthetic val$loc:Z

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$routineId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;ZLjava/util/UUID;)V
    .locals 0

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$nodeId:Ljava/util/UUID;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$loc:Z

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$routineId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private taskName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->taskHash:I
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$1000(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public notifyExisting()Z
    .locals 1

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->notifyExisting:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$900(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z

    move-result v0

    return v0
.end method

.method public oldValueRequired()Z
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->oldValRequired:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$800(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z

    move-result v0

    return v0
.end method

.method public onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;ZZ)V
    .locals 27
    .param p2, "primary"    # Z
    .param p3, "recordIgniteEvt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent",
            "<TK;TV;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    .local p1, "evt":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->ignoreExpired:Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$200(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getEventType()Ljavax/cache/event/EventType;

    move-result-object v2

    sget-object v3, Ljavax/cache/event/EventType;->EXPIRED:Ljavax/cache/event/EventType;

    if-ne v2, v3, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    # invokes: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$300(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v19

    .line 195
    .local v19, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->skipPrimaryCheck:Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$400(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    .line 198
    :cond_2
    const/16 v25, 0x1

    .line 200
    .local v25, "notify":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceLocalRead()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v23

    .line 204
    .local v23, "f":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;->evaluate(Ljavax/cache/event/CacheEntryEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    .line 210
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 214
    .end local v23    # "f":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :cond_3
    :goto_1
    if-eqz v25, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$loc:Z

    if-eqz v2, :cond_4

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$500(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljavax/cache/event/CacheEntryUpdatedListener;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/cache/event/CacheEntryUpdatedListener;->onUpdated(Ljava/lang/Iterable;)V

    .line 239
    :goto_2
    if-eqz p3, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v26

    new-instance v2, Lorg/apache/ignite/events/CacheQueryReadEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    const-string v4, "Continuous query executed."

    const/16 v5, 0x61

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->CONTINUOUS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$000(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$nodeId:Ljava/util/UUID;

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->taskName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getValue()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/events/CacheQueryReadEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_0

    .line 206
    .restart local v23    # "f":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :catch_0
    move-exception v21

    .line 207
    .local v21, "e":Ljava/lang/Exception;
    :try_start_1
    const-class v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheEntryEventFilter failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    goto/16 :goto_1

    .end local v21    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    throw v2

    .line 219
    .end local v23    # "f":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v24

    .line 221
    .local v24, "node":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v24, :cond_5

    .line 222
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->entry()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$000(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v20

    .line 227
    .local v20, "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->entry()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->prepare(Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;)V

    .line 232
    .end local v20    # "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$nodeId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$routineId:Ljava/util/UUID;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->entry()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->topic:Ljava/lang/Object;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$600(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->sync:Z
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$700(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->addNotification(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 234
    .end local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_1
    move-exception v22

    .line 235
    .local v22, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send event notification to node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 230
    .end local v22    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->entry()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public onExecution()V
    .locals 14

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    const/16 v3, 0x60

    const/4 v6, 0x0

    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v13

    new-instance v0, Lorg/apache/ignite/events/CacheQueryExecutedEvent;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    const-string v2, "Continuous query executed."

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;->CONTINUOUS:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryType;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$000(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v9

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->val$nodeId:Ljava/util/UUID;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->taskName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    move-object v8, v6

    move-object v10, v6

    invoke-direct/range {v0 .. v12}, Lorg/apache/ignite/events/CacheQueryExecutedEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/internal/processors/cache/query/CacheQueryType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;[Ljava/lang/Object;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onUnregister()V
    .locals 1

    .prologue
    .line 263
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryFilterEx;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryFilterEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryFilterEx;->onQueryUnregister()V

    .line 265
    :cond_0
    return-void
.end method
