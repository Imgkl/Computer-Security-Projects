.class public Lorg/apache/ignite/internal/util/GridExecutionStatistics;
.super Ljava/lang/Object;
.source "GridExecutionStatistics.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cntMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private durationMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private startTime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->cntMap:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->durationMap:Ljava/util/concurrent/ConcurrentMap;

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/util/GridExecutionStatistics$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridExecutionStatistics$1;-><init>(Lorg/apache/ignite/internal/util/GridExecutionStatistics;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->startTime:Ljava/lang/ThreadLocal;

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->name:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public print()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** Execution statistics: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->cntMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 93
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 95
    .local v2, "cnt":I
    sget-boolean v5, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-gtz v2, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 97
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->durationMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 99
    .local v6, "totalDuration":J
    int-to-long v8, v2

    div-long v0, v6, v8

    .line 101
    .local v0, "avgDuration":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "->[executions="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", average duration="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", total duration="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v8}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v0    # "avgDuration":J
    .end local v2    # "cnt":I
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    .end local v6    # "totalDuration":J
    :cond_1
    return-void
.end method

.method public stopWatching()V
    .locals 8

    .prologue
    .line 69
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 73
    .local v4, "time":J
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->cntMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newAtomicInt()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v6

    invoke-static {v3, v2, v6}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    .local v0, "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 79
    iget-object v3, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->durationMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newAtomicLong()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v6

    invoke-static {v3, v2, v6}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 81
    .local v1, "d":Ljava/util/concurrent/atomic/AtomicLong;
    sget-boolean v3, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 83
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 84
    return-void
.end method

.method public watchExecution(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics;->startTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
