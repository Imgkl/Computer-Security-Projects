.class public Lorg/apache/ignite/internal/processors/port/GridPortProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridPortProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final lsnrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/port/GridPortListener;",
            ">;"
        }
    .end annotation
.end field

.field private final recs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/port/GridPortRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 36
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    .line 44
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/ignite/internal/processors/port/GridPortProcessor$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/port/GridPortProcessor;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    .line 52
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 170
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/port/GridPortListener;

    .line 172
    .local v1, "lsnr":Lorg/apache/ignite/internal/processors/port/GridPortListener;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/port/GridPortListener;->onPortChange()V

    goto :goto_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lsnr":Lorg/apache/ignite/internal/processors/port/GridPortListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return-void
.end method


# virtual methods
.method public addPortListener(Lorg/apache/ignite/internal/processors/port/GridPortListener;)V
    .locals 2
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/processors/port/GridPortListener;

    .prologue
    .line 146
    sget-boolean v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 113
    sget-boolean v2, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lez p1, :cond_0

    const v2, 0xffff

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 114
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 115
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 117
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    monitor-enter v3

    .line 118
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/port/GridPortRecord;>;"
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .line 121
    .local v1, "pr":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->port()I

    move-result v2

    if-ne v2, p1, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->protocol()Lorg/apache/ignite/spi/IgnitePortProtocol;

    move-result-object v2

    if-ne v2, p2, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->clazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/port/GridPortRecord;>;"
    .end local v1    # "pr":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/port/GridPortRecord;>;"
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->notifyListeners()V

    .line 127
    return-void
.end method

.method public deregisterPorts(Ljava/lang/Class;)V
    .locals 4
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 91
    sget-boolean v2, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 93
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    monitor-enter v3

    .line 94
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/port/GridPortRecord;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    .line 97
    .local v1, "pr":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;->clazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 100
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/port/GridPortRecord;>;"
    .end local v1    # "pr":Lorg/apache/ignite/internal/processors/port/GridPortRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/port/GridPortRecord;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->notifyListeners()V

    .line 103
    return-void
.end method

.method public printMemoryStats()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    monitor-enter v3

    .line 181
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    .line 182
    .local v1, "recsSize":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    monitor-enter v3

    .line 187
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 188
    .local v0, "lsnrsSize":I
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    const-string v2, ">>>"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Task session processor memory stats [grid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>  recsSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>  lsnrsSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void

    .line 182
    .end local v0    # "lsnrsSize":I
    .end local v1    # "recsSize":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 188
    .restart local v1    # "recsSize":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public records()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/port/GridPortRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    monitor-enter v1

    .line 136
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;
    .param p3, "cls"    # Ljava/lang/Class;

    .prologue
    .line 74
    sget-boolean v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    const v0, 0xffff

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->recs:Ljava/util/Collection;

    new-instance v2, Lorg/apache/ignite/internal/processors/port/GridPortRecord;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/ignite/internal/processors/port/GridPortRecord;-><init>(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->notifyListeners()V

    .line 83
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removePortListener(Lorg/apache/ignite/internal/processors/port/GridPortListener;)V
    .locals 2
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/processors/port/GridPortListener;

    .prologue
    .line 159
    sget-boolean v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->lsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Started port processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Stopped port processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
