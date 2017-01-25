.class Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;
.super Ljava/lang/Object;
.source "CacheDataStructuresManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveSetDataCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x46209748e36f120cL


# instance fields
.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private setId:Lorg/apache/ignite/lang/IgniteUuid;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 631
    const-class v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->cacheName:Ljava/lang/String;

    .line 663
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 664
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 665
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;

    .prologue
    .line 632
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 669
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 671
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v2, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->cacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 673
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 675
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    .line 677
    .local v1, "gate":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 680
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$500(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 686
    const/4 v2, 0x0

    return-object v2

    .line 683
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->cacheName:Ljava/lang/String;

    .line 699
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 700
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 701
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveSetCallable [setId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 693
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 694
    return-void
.end method
