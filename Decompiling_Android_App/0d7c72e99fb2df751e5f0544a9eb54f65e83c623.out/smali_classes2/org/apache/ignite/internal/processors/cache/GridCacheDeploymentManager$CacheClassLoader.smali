.class Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;
.super Ljava/lang/ClassLoader;
.source "GridCacheDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheClassLoader"
.end annotation


# instance fields
.field private final p2pExclude:[Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)V
    .locals 1

    .prologue
    .line 770
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;)V

    .line 771
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p2, "classLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 779
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    .line 780
    if-eqz p2, :cond_0

    .end local p2    # "classLdr":Ljava/lang/ClassLoader;
    :goto_0
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 782
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->p2pExclude:[Ljava/lang/String;

    .line 783
    return-void

    .line 780
    .restart local p2    # "classLdr":Ljava/lang/ClassLoader;
    :cond_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p2

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;

    .prologue
    .line 762
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;

    .prologue
    .line 762
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)V

    return-void
.end method

.method private isLocallyExcluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    const/4 v4, 0x0

    .line 839
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->p2pExclude:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 840
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->p2pExclude:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 842
    .local v3, "path":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 843
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 845
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 846
    const/4 v4, 0x1

    .line 850
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    return v4

    .line 840
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    const/4 v13, 0x0

    .line 795
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->isLocallyExcluded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getLocalDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v10

    .line 798
    .local v10, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v10, :cond_0

    .line 799
    new-array v0, v13, [Ljava/lang/String;

    invoke-virtual {v10, p1, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 801
    .local v9, "cls":Ljava/lang/Class;
    if-eqz v9, :cond_0

    .line 827
    :goto_0
    return-object v9

    .line 806
    .end local v9    # "cls":Ljava/lang/Class;
    .end local v10    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 807
    .local v12, "t":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->senderId()Ljava/util/UUID;

    move-result-object v5

    .line 808
    .local v5, "sndId":Ljava/util/UUID;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->loaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    .line 809
    .local v6, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "userVer":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->mode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    .line 811
    .local v1, "mode":Lorg/apache/ignite/configuration/DeploymentMode;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v7

    .line 813
    .local v7, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->alwaysTrue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    move-object v2, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v10

    .line 823
    .restart local v10    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v10, :cond_1

    .line 824
    new-array v0, v13, [Ljava/lang/String;

    invoke-virtual {v10, p1, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 826
    .restart local v9    # "cls":Ljava/lang/Class;
    if-eqz v9, :cond_1

    goto :goto_0

    .line 831
    .end local v1    # "mode":Lorg/apache/ignite/configuration/DeploymentMode;
    .end local v4    # "userVer":Ljava/lang/String;
    .end local v5    # "sndId":Ljava/util/UUID;
    .end local v6    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v7    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v9    # "cls":Ljava/lang/Class;
    .end local v10    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v12    # "t":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load class [name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>.CacheClassLoader;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
