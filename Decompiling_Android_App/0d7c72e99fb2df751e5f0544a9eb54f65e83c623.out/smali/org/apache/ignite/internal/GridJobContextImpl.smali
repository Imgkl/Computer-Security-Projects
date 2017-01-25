.class public Lorg/apache/ignite/internal/GridJobContextImpl;
.super Ljava/lang/Object;
.source "GridJobContextImpl.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobContext;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


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

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

.field private jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final mux:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobContextImpl;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/GridJobContextImpl;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    .line 76
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 79
    iput-object p2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<+",
            "Ljava/io/Serializable;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "attrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/GridJobContextImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 92
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridJobContextImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridJobContextImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridJobContextImpl;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/internal/GridJobContextImpl;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method private log()Lorg/apache/ignite/IgniteLogger;
    .locals 3

    .prologue
    .line 247
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 249
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/GridJobContextImpl;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    sget-object v1, Lorg/apache/ignite/internal/GridJobContextImpl;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/GridJobContextImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 252
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/GridJobContextImpl;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method


# virtual methods
.method public callcc()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJob(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->execute()V

    .line 227
    :cond_1
    return-void
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
    .line 132
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 136
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
    .line 141
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public heldcc()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-nez v1, :cond_2

    .line 152
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJob(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 154
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public holdcc()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 160
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/GridJobContextImpl;->holdcc(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public holdcc(J)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J)TT;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 165
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-nez v2, :cond_0

    .line 167
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJob(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->hold()V

    .line 173
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 177
    .local v0, "endTime":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 178
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/GridJobContextImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/apache/ignite/internal/GridJobContextImpl$1;-><init>(Lorg/apache/ignite/internal/GridJobContextImpl;J)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 214
    .end local v0    # "endTime":J
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public job(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 1
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 101
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->job:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 104
    return-void
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
    .line 238
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridKernalContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 239
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 240
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    .line 241
    return-void
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "attrs"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-class v0, Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 231
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobContextImpl;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 234
    return-void
.end method
