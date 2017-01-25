.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;
.super Ljava/lang/Object;
.source "GridAffinityUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AffinityJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;",
        "Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;",
        "Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;",
        ">;>;",
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

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->cacheName:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$1;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

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
    .line 120
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->call()Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    sget-boolean v3, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 160
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 162
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v2, Lorg/apache/ignite/internal/IgniteKernal;

    .line 164
    .local v2, "kernal":Lorg/apache/ignite/internal/IgniteKernal;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->cacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/IgniteKernal;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 166
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 168
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    .line 170
    .local v1, "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 172
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;->access$100(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;->access$100(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->assignments(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridTuple3;

    move-result-object v3

    return-object v3
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
    .line 186
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->cacheName:Ljava/lang/String;

    .line 187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 188
    return-void
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
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 182
    return-void
.end method
