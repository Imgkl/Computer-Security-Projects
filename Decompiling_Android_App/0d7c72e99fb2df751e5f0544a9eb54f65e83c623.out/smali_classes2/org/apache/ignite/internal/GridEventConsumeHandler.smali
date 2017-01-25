.class Lorg/apache/ignite/internal/GridEventConsumeHandler;
.super Ljava/lang/Object;
.source "GridEventConsumeHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_CALLBACK:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private cb:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private clsName:Ljava/lang/String;

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

.field private filter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private filterBytes:[B

.field private lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private types:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    .line 47
    new-instance v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/GridEventConsumeHandler$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->DFLT_CALLBACK:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)V
    .locals 0
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/events/Event;",
            ">;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "cb":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;Lorg/apache/ignite/events/Event;>;"
    .local p2, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/events/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/ignite/internal/GridEventConsumeHandler;->DFLT_CALLBACK:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .end local p1    # "cb":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;Lorg/apache/ignite/events/Event;>;"
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->cb:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 90
    iput-object p2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 91
    iput-object p3, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/GridEventConsumeHandler;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/GridEventConsumeHandler;)Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridEventConsumeHandler;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->cb:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 2

    .prologue
    .line 295
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isForEvents()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public isForMessaging()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isForQuery()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 15
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p3, "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 199
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 200
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 201
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 203
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 204
    .local v13, "obj":Ljava/lang/Object;
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    instance-of v2, v13, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    move-object v14, v13

    .line 206
    check-cast v14, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;

    .line 208
    .local v14, "wrapper":Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->bytes:[B
    invoke-static {v14}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->access$300(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 209
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 211
    :cond_6
    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;
    invoke-static {v14}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->access$200(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    .line 213
    .local v8, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    const/4 v12, 0x0

    .line 215
    .local v12, "ldr":Ljava/lang/ClassLoader;
    if-eqz v8, :cond_a

    .line 216
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    .line 218
    .local v1, "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    invoke-static {v14}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->access$400(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    move-result-object v9

    .line 220
    .local v9, "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    if-eqz v9, :cond_7

    .line 221
    invoke-interface {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v5

    invoke-interface {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->localDeploymentOwner()Z

    move-result v7

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->p2pContext(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Z)V

    .line 225
    :cond_7
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 234
    .end local v1    # "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .end local v9    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-virtual {v14, v2, v12}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->p2pUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v8    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v12    # "ldr":Ljava/lang/ClassLoader;
    :cond_8
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->cb:Lorg/apache/ignite/lang/IgniteBiPredicate;

    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->evt:Lorg/apache/ignite/events/Event;
    invoke-static {v14}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->access$500(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Lorg/apache/ignite/events/Event;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 247
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v14    # "wrapper":Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    :cond_9
    return-void

    .line 228
    .restart local v8    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .restart local v12    # "ldr":Ljava/lang/ClassLoader;
    .restart local v13    # "obj":Ljava/lang/Object;
    .restart local v14    # "wrapper":Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received cache event for cache that is not configured locally when peer class loading is enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->cacheName:Ljava/lang/String;
    invoke-static {v14}, Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;->access$200(Lorg/apache/ignite/internal/GridEventConsumeHandler$EventWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Will try to unmarshal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "with default class loader."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v10

    .line 237
    .local v10, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v3, "Failed to unmarshal event."

    invoke-static {v2, v3, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 182
    return-void
.end method

.method public orderedTopic()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pMarshal(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 5
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 251
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 252
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clsName:Ljava/lang/String;

    .line 259
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v1

    .line 261
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v1, :cond_2

    .line 262
    new-instance v2, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deploy event filter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 266
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filterBytes:[B

    .line 268
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_3
    return-void
.end method

.method public p2pUnmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 10
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 272
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 276
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filterBytes:[B

    if-eqz v0, :cond_4

    .line 277
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clsName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clsName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iget-object v5, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 280
    .local v9, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v9, :cond_3

    .line 281
    new-instance v0, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain deployment for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filterBytes:[B

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 285
    .end local v9    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_4
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 323
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filterBytes:[B

    .line 325
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clsName:Ljava/lang/String;

    .line 326
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 331
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    .line 332
    return-void

    .line 329
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    goto :goto_0
.end method

.method public register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->cb:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v0, :cond_3

    .line 122
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->cb:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 124
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v0, :cond_4

    .line 125
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 127
    :cond_4
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 129
    .local v2, "loc":Z
    new-instance v0, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/GridEventConsumeHandler$2;-><init>(Lorg/apache/ignite/internal/GridEventConsumeHandler;ZLjava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    sget-object v0, Lorg/apache/ignite/events/EventType;->EVTS_ALL:[I

    iput-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    .line 174
    :cond_5
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    iget-object v3, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    invoke-virtual {v0, v1, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 176
    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    return-object v0
.end method

.method public unregister(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 186
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v0, :cond_2

    .line 190
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 191
    :cond_2
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filterBytes:[B

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 306
    .local v0, "b":Z
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 308
    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filterBytes:[B

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 310
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->clsName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 316
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->types:[I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 317
    return-void

    .line 304
    .end local v0    # "b":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    .restart local v0    # "b":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridEventConsumeHandler;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method
