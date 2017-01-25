.class public Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "LocalDeploymentSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/deployment/DeploymentSpi;
.implements Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    optional = false
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedHashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private volatile lsnr:Lorg/apache/ignite/spi/deployment/DeploymentListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 64
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    return-void
.end method

.method private addResource(Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 216
    .local p2, "ldrRsrcs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v7, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 217
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 218
    :cond_1
    sget-boolean v7, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_2

    if-nez p3, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 222
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8}, Ljava/util/HashMap;-><init>(IF)V

    .line 225
    .local v6, "regRsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 227
    .local v0, "alias":Ljava/lang/String;
    const-class v7, Lorg/apache/ignite/compute/ComputeTask;

    invoke-virtual {v7, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 228
    const-class v7, Lorg/apache/ignite/compute/ComputeTaskName;

    invoke-static {p3, v7}, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/compute/ComputeTaskName;

    .line 230
    .local v3, "nameAnn":Lorg/apache/ignite/compute/ComputeTaskName;
    if-eqz v3, :cond_3

    .line 231
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeTaskName;->value()Ljava/lang/String;

    move-result-object v0

    .line 234
    .end local v3    # "nameAnn":Lorg/apache/ignite/compute/ComputeTaskName;
    :cond_3
    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v7, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 240
    iget-object v7, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resources to register: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 242
    :cond_5
    const/4 v4, 0x0

    .line 245
    .local v4, "newRsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 248
    .local v5, "oldCls":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 250
    new-instance v8, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to register resources with given task name (found another class with same task name in the same class loader) [taskName="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", existingCls="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", newCls="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", ldr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x5d

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 257
    :cond_7
    if-nez v4, :cond_8

    .line 258
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 260
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 265
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "oldCls":Ljava/lang/String;
    :cond_9
    if-eqz v4, :cond_a

    .line 266
    invoke-interface {p2, v4}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 268
    :cond_a
    iget-object v7, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 269
    iget-object v7, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New resources: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 271
    :cond_b
    return-object v4
.end method

.method private getResourceName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "rsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p1

    .line 138
    .local v2, "rsrcName":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rsrcName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 146
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "rsrcName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private isResourceExist(Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 5
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .param p2, "clsName"    # Ljava/lang/String;

    .prologue
    .line 351
    sget-boolean v2, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 352
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 354
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\."

    const-string v4, "/"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "rsrcName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 359
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 361
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 364
    :goto_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    return v2

    .line 361
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private onClassLoaderReleased(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->lsnr:Lorg/apache/ignite/spi/deployment/DeploymentListener;

    .line 376
    .local v0, "tmp":Lorg/apache/ignite/spi/deployment/DeploymentListener;
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p1}, Lorg/apache/ignite/spi/deployment/DeploymentListener;->onUnregistered(Ljava/lang/ClassLoader;)V

    .line 378
    :cond_0
    return-void
.end method

.method private removeResources(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 12
    .param p1, "clsLdrToIgnore"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "rsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "rmvClsLdrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    sget-boolean v9, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p2, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 286
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 287
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing resources [clsLdrToIgnore="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rsrcs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 289
    :cond_1
    const/4 v7, 0x0

    .line 291
    .local v7, "res":Z
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v9}, Lorg/jsr166/ConcurrentLinkedHashMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ClassLoader;

    .line 294
    .local v6, "ldr":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_3

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 295
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 297
    .local v0, "clsLdrRsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 300
    .local v5, "isRmv":Z
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 302
    .local v8, "rsrcName":Ljava/lang/String;
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v9, v6, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 304
    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 306
    const/4 v5, 0x1

    .line 307
    const/4 v7, 0x1

    .line 309
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 310
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed resources [ldr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rsrcs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 316
    .end local v8    # "rsrcName":Ljava/lang/String;
    :cond_5
    if-nez v5, :cond_2

    .line 320
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 323
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v6, v9}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->isResourceExist(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasParent(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v9, v6, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 326
    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 329
    iget-object v9, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed resources after checking existence [ldr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", clsLdrRsrcs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rsrcs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 332
    :cond_7
    const/4 v7, 0x1

    .line 334
    goto/16 :goto_0

    .line 340
    .end local v0    # "clsLdrRsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isRmv":Z
    .end local v6    # "ldr":Ljava/lang/ClassLoader;
    :cond_8
    return v7
.end method


# virtual methods
.method public findResource(Ljava/lang/String;)Lorg/apache/ignite/spi/deployment/DeploymentResource;
    .locals 7
    .param p1, "rsrcName"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 94
    sget-boolean v6, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 97
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v6}, Lorg/jsr166/ConcurrentLinkedHashMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 98
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 99
    .local v4, "ldr":Ljava/lang/ClassLoader;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentMap;

    .line 101
    .local v5, "rsrcs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 107
    invoke-direct {p0, v1, v5}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->getResourceName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 109
    sget-boolean v6, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v1, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 112
    :cond_2
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v1, v6, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v6, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez v0, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 119
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    goto :goto_0

    .line 117
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v6, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;

    invoke-direct {v6, p1, v0, v4}, Lorg/apache/ignite/spi/deployment/DeploymentResourceAdapter;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "ldr":Ljava/lang/ClassLoader;
    .end local v5    # "rsrcs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public register(Ljava/lang/ClassLoader;Ljava/lang/Class;)Z
    .locals 9
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "rsrc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v6, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 152
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 154
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    iget-object v6, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering [ldrRsrcs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ldr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rsrc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 157
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v6, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->getSafe(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 159
    .local v1, "clsLdrRsrcs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 160
    iget-object v6, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    .end local v1    # "clsLdrRsrcs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    .restart local v1    # "clsLdrRsrcs":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, p1, v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentMap;

    .line 163
    .local v4, "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 164
    move-object v1, v4

    .line 167
    .end local v4    # "old":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-direct {p0, p1, v1, p2}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->addResource(Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    .line 169
    .local v3, "newRsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 171
    .local v5, "rmvClsLdrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 172
    new-instance v5, Ljava/util/LinkedList;

    .end local v5    # "rmvClsLdrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 174
    .restart local v5    # "rmvClsLdrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    invoke-direct {p0, p1, v3, v5}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->removeResources(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/util/Collection;)Z

    .line 177
    :cond_4
    if-eqz v5, :cond_5

    .line 178
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 179
    .local v0, "cldLdr":Ljava/lang/ClassLoader;
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->onClassLoaderReleased(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 182
    .end local v0    # "cldLdr":Ljava/lang/ClassLoader;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_6
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setListener(Lorg/apache/ignite/spi/deployment/DeploymentListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/deployment/DeploymentListener;

    .prologue
    .line 382
    iput-object p1, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->lsnr:Lorg/apache/ignite/spi/deployment/DeploymentListener;

    .line 383
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->startStopwatch()V

    .line 75
    const-class v0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 77
    iget-object v0, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public spiStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->unregisterMBean()V

    .line 85
    iget-object v2, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->ldrRsrcs:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->descendingKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 86
    .local v1, "ldr":Ljava/lang/ClassLoader;
    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->onClassLoaderReleased(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 88
    .end local v1    # "ldr":Ljava/lang/ClassLoader;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->stopInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 90
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-class v0, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/String;)Z
    .locals 6
    .param p1, "rsrcName"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 189
    .local v3, "rmvClsLdrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ClassLoader;>;"
    const/4 v5, 0x1

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v4

    .line 191
    .local v4, "rsrcs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4, v3}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->removeResources(Ljava/lang/ClassLoader;Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v2

    .line 195
    .local v2, "rmv":Z
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 196
    .local v0, "cldLdr":Ljava/lang/ClassLoader;
    invoke-direct {p0, v0}, Lorg/apache/ignite/spi/deployment/local/LocalDeploymentSpi;->onClassLoaderReleased(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 198
    .end local v0    # "cldLdr":Ljava/lang/ClassLoader;
    :cond_0
    return v2
.end method
