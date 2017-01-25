.class Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;
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
    name = "BlockSetCallable"
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

.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private setId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 566
    const-class v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->cacheName:Ljava/lang/String;

    .line 594
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

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
    .line 566
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 599
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 601
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v1, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->cacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 603
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->cacheName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 605
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$400(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 607
    const/4 v1, 0x0

    return-object v1
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
    .line 618
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 619
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->cacheName:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockSetCallable [setId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

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
    .line 612
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->setId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 613
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 614
    return-void
.end method
