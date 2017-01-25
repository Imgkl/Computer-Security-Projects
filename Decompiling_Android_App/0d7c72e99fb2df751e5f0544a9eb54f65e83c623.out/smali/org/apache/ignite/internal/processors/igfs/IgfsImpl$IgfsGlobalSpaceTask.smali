.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;
.super Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;
.source "IgfsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgfsGlobalSpaceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskSplitAdapter",
        "<",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private igfsName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "igfsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1910
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;-><init>()V

    .line 1911
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;->igfsName:Ljava/lang/String;

    .line 1912
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;

    .prologue
    .line 1900
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;

    .prologue
    .line 1900
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;->igfsName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 1899
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;->reduce(Ljava/util/List;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1944
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const-wide/16 v6, 0x0

    .line 1945
    .local v6, "used":J
    const-wide/16 v2, 0x0

    .line 1947
    .local v2, "max":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 1948
    .local v4, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v4}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1950
    .local v0, "data":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 1951
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 1952
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_0

    .line 1956
    .end local v0    # "data":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v4    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    return-object v5
.end method

.method public result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/compute/ComputeJobResultPolicy;"
        }
    .end annotation

    .prologue
    .line 1962
    .local p2, "rcvd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method

.method protected split(ILjava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p1, "gridSize"    # I
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1918
    .local v1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJob;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1919
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$IgfsGlobalSpaceTask;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1939
    :cond_0
    return-object v1
.end method
