.class public Lorg/apache/ignite/internal/GridTaskSessionImpl;
.super Ljava/lang/Object;
.source "GridTaskSessionImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/GridTaskSessionInternal;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile closed:Z

.field private clsLdr:Ljava/lang/ClassLoader;

.field private volatile cpSpi:Ljava/lang/String;

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

.field private final endTime:J

.field private volatile failSpi:Ljava/lang/String;

.field private final fullSup:Z

.field private volatile loadSpi:Ljava/lang/String;

.field private lsnrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mapFut:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

.field private final mux:Ljava/lang/Object;

.field private final sesId:Lorg/apache/ignite/lang/IgniteUuid;

.field private siblings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:J

.field private final subjId:Ljava/util/UUID;

.field private final taskClsName:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;

.field private final taskNodeId:Ljava/util/UUID;

.field private final top:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final usage:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;JJLjava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/GridKernalContext;ZLjava/util/UUID;)V
    .locals 5
    .param p1, "taskNodeId"    # Ljava/util/UUID;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "taskClsName"    # Ljava/lang/String;
    .param p5, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p6    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "startTime"    # J
    .param p9, "endTime"    # J
    .param p12    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p14, "fullSup"    # Z
    .param p15, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;JJ",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Z",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    .local p6, "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p11, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .local p12, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    .line 88
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 132
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 133
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p5, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 134
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez p13, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 136
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskNodeId:Ljava/util/UUID;

    .line 137
    iput-object p2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskName:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 139
    iput-object p6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->top:Ljava/util/Collection;

    .line 143
    iput-object p4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskClsName:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 145
    iput-wide p7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->startTime:J

    .line 146
    iput-wide p9, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    .line 147
    if-eqz p11, :cond_5

    invoke-static/range {p11 .. p11}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->siblings:Ljava/util/Collection;

    .line 148
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 150
    if-eqz p12, :cond_4

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-interface/range {p12 .. p12}, Ljava/util/Map;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    .line 153
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    :cond_4
    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->fullSup:Z

    .line 157
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->subjId:Ljava/util/UUID;

    .line 159
    new-instance v1, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mapFut:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    .line 160
    return-void

    .line 147
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAttributeSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 762
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 763
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->fullSup:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 765
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 766
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 768
    .local v0, "stored":Ljava/lang/Object;
    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 769
    const/4 v1, 0x1

    .line 775
    .end local v0    # "stored":Ljava/lang/Object;
    :goto_0
    return v1

    .line 771
    .restart local v0    # "stored":Ljava/lang/Object;
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 772
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 775
    .end local v0    # "stored":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acquire()Z
    .locals 3

    .prologue
    .line 187
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 189
    .local v0, "cur":I
    if-nez v0, :cond_1

    .line 190
    const/4 v1, 0x0

    .line 193
    :goto_0
    return v1

    .line 192
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;Z)V
    .locals 9
    .param p1, "lsnr"    # Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    .param p2, "rewind"    # Z

    .prologue
    .line 602
    const-string v7, "lsnr"

    invoke-static {p1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 606
    const/4 v0, 0x0

    .line 610
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v8

    .line 611
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    if-eqz v7, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 615
    .local v6, "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    :goto_0
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 616
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 618
    :cond_0
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iput-object v6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    .line 622
    if-eqz p2, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 623
    new-instance v1, Ljava/util/HashMap;

    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .end local v0    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v0, v1

    .line 624
    .end local v1    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v0    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    if-eqz v0, :cond_4

    .line 627
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 628
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;

    .line 629
    .local v5, "l":Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;->onAttributeSet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 611
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "l":Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    .end local v6    # "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    :cond_3
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 630
    .restart local v6    # "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    :cond_4
    return-void
.end method

.method public addJobSiblings(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isTaskNode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 487
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->siblings:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    .local v0, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->siblings:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 491
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 493
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->siblings:Ljava/util/Collection;

    .line 494
    monitor-exit v2

    .line 495
    return-void

    .line 494
    .end local v0    # "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkFullSupport()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->fullSup:Z

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sessions attributes and checkpoints are disabled by default for better performance (to enable, annotate task class with @GridComputeTaskSessionFullSupport annotation)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    return-void
.end method

.method public deployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 526
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 565
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCheckpointSpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->cpSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->clsLdr:Ljava/lang/ClassLoader;

    monitor-exit v1

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 427
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    return-wide v0
.end method

.method public getFailoverSpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->failSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobSibling(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/compute/ComputeJobSibling;
    .locals 4
    .param p1, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 499
    const-string v3, "jobId"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v2

    .line 503
    .local v2, "tmp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeJobSibling;

    .line 504
    .local v1, "sibling":Lorg/apache/ignite/compute/ComputeJobSibling;
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobSibling;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    .end local v1    # "sibling":Lorg/apache/ignite/compute/ComputeJobSibling;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJobSiblings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->siblings:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLoadBalancingSpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->loadSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->sequenceNumber()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->startTime:J

    return-wide v0
.end method

.method public getTaskClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public getTopology()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->top:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->top:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    return v0
.end method

.method public isFullSupport()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->fullSup:Z

    return v0
.end method

.method public isTaskNode()Z
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->taskNodeId:Ljava/util/UUID;

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadCheckpoint(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0, p0, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->loadCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected loadCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridTaskSessionInternal;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 710
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 712
    :cond_0
    const-string v1, "key"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 714
    iget-boolean v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v1, :cond_1

    .line 715
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load checkpoint (session closed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 720
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->loadCheckpoint(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Ljava/io/Serializable;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public mapFuture()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mapFut:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    return-object v0
.end method

.method public onClosed()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v0, :cond_1

    .line 229
    monitor-exit v1

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    .line 233
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->fullSup:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 235
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mapFut:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->internalFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 844
    return-void
.end method

.method public onMapped()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mapFut:Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;->internalFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 837
    return-void
.end method

.method public refreshJobSiblings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public release()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 204
    .local v0, "cur":I
    sget-boolean v2, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-gtz v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 206
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    if-ne v0, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;)Z
    .locals 4
    .param p1, "lsnr"    # Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;

    .prologue
    .line 634
    const-string v2, "lsnr"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 638
    iget-object v3, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v3

    .line 639
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    if-nez v2, :cond_0

    .line 640
    const/4 v1, 0x0

    monitor-exit v3

    .line 648
    :goto_0
    return v1

    .line 642
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 644
    .local v0, "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 646
    .local v1, "rmv":Z
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .end local v0    # "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    :cond_1
    iput-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    .line 648
    monitor-exit v3

    goto :goto_0

    .line 649
    .end local v1    # "rmv":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-virtual {p0, p0, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->removeCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected removeCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 739
    sget-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 741
    :cond_0
    const-string v0, "key"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v0, :cond_1

    .line 744
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove checkpoint (session closed): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 748
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->removeCheckpoint(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 654
    sget-object v3, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->SESSION_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;J)V

    .line 655
    return-void
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;J)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p4, "timeout"    # J

    .prologue
    .line 659
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V

    .line 660
    return-void
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p4, "timeout"    # J
    .param p6, "overwrite"    # Z

    .prologue
    .line 665
    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->saveCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V

    .line 666
    return-void
.end method

.method protected saveCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V
    .locals 9
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;
    .param p4, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p5, "timeout"    # J
    .param p7, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 679
    sget-boolean v1, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 681
    :cond_0
    const-string v1, "key"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "timeout >= 0"

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 684
    iget-boolean v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v1, :cond_2

    .line 685
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save checkpoint (session closed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 687
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 690
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->storeCheckpoint(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public session()Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .locals 0

    .prologue
    .line 214
    return-object p0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 512
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 516
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setAttributes(Ljava/util/Map;)V

    .line 517
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v1, "attrs"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 537
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 545
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 546
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    .line 548
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 549
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isTaskNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setAttributes(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1

    .line 549
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setCheckpointSpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpSpi"    # Ljava/lang/String;

    .prologue
    .line 787
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->cpSpi:Ljava/lang/String;

    .line 788
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 448
    sget-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->clsLdr:Ljava/lang/ClassLoader;

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFailoverSpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "failSpi"    # Ljava/lang/String;

    .prologue
    .line 801
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->failSpi:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public setInternal(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v5, "attrs"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 578
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 598
    :cond_0
    return-void

    .line 583
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 584
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 585
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v8}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v5, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    .line 587
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 589
    iget-object v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->lsnrs:Ljava/util/List;

    .line 591
    .local v4, "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 592
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    if-eqz v4, :cond_0

    .line 595
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 596
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;

    .line 597
    .local v3, "lsnr":Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;->onAttributeSet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 592
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "lsnr":Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    .end local v4    # "lsnrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setJobSiblings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->siblings:Ljava/util/Collection;

    .line 478
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadBalancingSpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadSpi"    # Ljava/lang/String;

    .prologue
    .line 815
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->loadSpi:Ljava/lang/String;

    .line 816
    return-void
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    const-class v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForAttribute(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-wide/16 v6, 0x0

    .line 258
    const-string v4, "key"

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 262
    cmp-long v4, p2, v6

    if-nez v4, :cond_0

    .line 263
    const-wide p2, 0x7fffffffffffffffL

    .line 265
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 268
    .local v2, "now":J
    add-long v4, v2, p2

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    .line 271
    .local v0, "end":J
    :goto_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 272
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    .line 274
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 275
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 276
    iget-object v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    sub-long v6, v0, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 278
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    .line 268
    .end local v0    # "end":J
    :cond_3
    add-long v0, v2, p2

    goto :goto_0

    .line 281
    .restart local v0    # "end":J
    :cond_4
    iget-boolean v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v4, :cond_5

    .line 282
    new-instance v4, Ljava/lang/InterruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session was closed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 284
    :cond_5
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public waitForAttribute(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 290
    const-string v3, "key"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 294
    cmp-long v3, p3, v8

    if-nez v3, :cond_0

    .line 295
    const-wide p3, 0x7fffffffffffffffL

    .line 297
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 300
    .local v4, "now":J
    add-long v6, v4, p3

    cmp-long v3, v6, v8

    if-gez v3, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    .line 303
    .local v0, "end":J
    :goto_0
    iget-wide v6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 304
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    .line 306
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, "isFound":Z
    :goto_1
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isAttributeSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    cmp-long v3, v4, v0

    if-gez v3, :cond_3

    .line 310
    iget-object v3, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    sub-long v8, v0, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 312
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    .line 300
    .end local v0    # "end":J
    .end local v2    # "isFound":Z
    :cond_2
    add-long v0, v4, p3

    goto :goto_0

    .line 315
    .restart local v0    # "end":J
    .restart local v2    # "isFound":Z
    :cond_3
    iget-boolean v3, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v3, :cond_4

    .line 316
    new-instance v3, Ljava/lang/InterruptedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session was closed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 318
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public waitForAttributes(Ljava/util/Collection;J)Ljava/util/Map;
    .locals 12
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;J)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const-wide/16 v10, 0x0

    .line 325
    const-string v7, "keys"

    invoke-static {p1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 329
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 360
    :goto_0
    return-object v6

    .line 332
    :cond_0
    cmp-long v7, p2, v10

    if-nez v7, :cond_1

    .line 333
    const-wide p2, 0x7fffffffffffffffL

    .line 335
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 338
    .local v4, "now":J
    add-long v8, v4, p2

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    .line 341
    .local v0, "end":J
    :goto_1
    iget-wide v8, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    cmp-long v7, v0, v8

    if-lez v7, :cond_2

    .line 342
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    .line 344
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v8

    .line 345
    :goto_2
    :try_start_0
    iget-boolean v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    cmp-long v7, v4, v0

    if-gez v7, :cond_5

    .line 346
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    sub-long v10, v0, v4

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 348
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_2

    .line 338
    .end local v0    # "end":J
    :cond_4
    add-long v0, v4, p2

    goto :goto_1

    .line 351
    .restart local v0    # "end":J
    :cond_5
    iget-boolean v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v7, :cond_6

    .line 352
    new-instance v7, Ljava/lang/InterruptedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Session was closed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 361
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 354
    :cond_6
    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v9}, Ljava/util/HashMap;-><init>(IF)V

    .line 356
    .local v6, "retVal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v7, :cond_7

    .line 357
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 358
    .local v3, "key":Ljava/lang/Object;
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 360
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Object;
    :cond_7
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public waitForAttributes(Ljava/util/Map;J)Z
    .locals 10
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    .line 366
    const-string v6, "attrs"

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->checkFullSupport()V

    .line 370
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    .line 402
    :goto_0
    return v2

    .line 373
    :cond_0
    cmp-long v6, p2, v8

    if-nez v6, :cond_1

    .line 374
    const-wide p2, 0x7fffffffffffffffL

    .line 376
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 379
    .local v4, "now":J
    add-long v6, v4, p2

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    .line 382
    .local v0, "end":J
    :goto_1
    iget-wide v6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 383
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->endTime:J

    .line 385
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 386
    const/4 v2, 0x0

    .line 388
    .local v2, "isFound":Z
    :goto_2
    :try_start_0
    iget-boolean v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-nez v7, :cond_3

    cmp-long v7, v4, v0

    if-gez v7, :cond_3

    .line 389
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->attrs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v3

    .line 391
    :goto_3
    if-eqz v2, :cond_6

    .line 399
    :cond_3
    iget-boolean v3, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->closed:Z

    if-eqz v3, :cond_7

    .line 400
    new-instance v3, Ljava/lang/InterruptedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session was closed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 379
    .end local v0    # "end":J
    .end local v2    # "isFound":Z
    :cond_4
    add-long v0, v4, p2

    goto :goto_1

    .line 389
    .restart local v0    # "end":J
    .restart local v2    # "isFound":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 394
    :cond_6
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/GridTaskSessionImpl;->mux:Ljava/lang/Object;

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 396
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_2

    .line 402
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
