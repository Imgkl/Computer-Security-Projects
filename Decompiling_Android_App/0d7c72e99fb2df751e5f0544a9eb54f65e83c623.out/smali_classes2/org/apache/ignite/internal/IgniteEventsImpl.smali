.class public Lorg/apache/ignite/internal/IgniteEventsImpl;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgniteEventsImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteEvents;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/AsyncSupportAdapter",
        "<",
        "Lorg/apache/ignite/IgniteEvents;",
        ">;",
        "Lorg/apache/ignite/IgniteEvents;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "prj"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p3, "async"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 61
    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 62
    return-void
.end method

.method private static varargs compoundPredicate(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p1, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteEventsImpl$1;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/IgniteEventsImpl$1;-><init>([ILorg/apache/ignite/lang/IgnitePredicate;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private guard()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 255
    return-void
.end method

.method private unguard()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 262
    return-void
.end method


# virtual methods
.method public clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    return-object v0
.end method

.method protected createAsyncInstance()Lorg/apache/ignite/IgniteEvents;
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lorg/apache/ignite/internal/IgniteEventsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/IgniteEventsImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    return-object v0
.end method

.method protected bridge synthetic createAsyncInstance()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->createAsyncInstance()Lorg/apache/ignite/IgniteEvents;

    move-result-object v0

    return-object v0
.end method

.method public disableLocal([I)V
    .locals 1
    .param p1, "types"    # [I

    .prologue
    .line 225
    const-string v0, "types"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty([ILjava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->disableEvents([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    .line 235
    return-void

    .line 233
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v0
.end method

.method public enableLocal([I)V
    .locals 1
    .param p1, "types"    # [I

    .prologue
    .line 211
    const-string v0, "types"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty([ILjava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enableEvents([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v0
.end method

.method public enabledEvents()[I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->enabledEvents()[I

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 244
    if-gez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isUserRecordable(I)Z

    move-result v0

    return v0
.end method

.method public localListen(Lorg/apache/ignite/lang/IgnitePredicate;[I)V
    .locals 1
    .param p2, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const-string v0, "types"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notEmpty([ILjava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 188
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/lang/IgnitePredicate;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v0
.end method

.method public varargs localQuery(Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/Collection;
    .locals 2
    .param p2, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    const-string v0, "p"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/IgniteEventsImpl;->compoundPredicate(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->localEvents(Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v0
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
    .line 297
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 298
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->events()Lorg/apache/ignite/IgniteEvents;

    move-result-object v0

    return-object v0
.end method

.method public recordLocal(Lorg/apache/ignite/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 164
    const-string v0, "evt"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All types in range from 1 to 1000 are reserved for internal Ignite events [evtType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", evt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v0
.end method

.method public varargs remoteListen(IJZLorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/UUID;
    .locals 8
    .param p1, "bufSize"    # I
    .param p2, "interval"    # J
    .param p4, "autoUnsubscribe"    # Z
    .param p5    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(IJZ",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "TT;>;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .local p5, "locLsnr":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;TT;>;"
    .local p6, "rmtFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    if-lez p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "bufSize > 0"

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 98
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_1

    :goto_1
    const-string v1, "interval >= 0"

    invoke-static {v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/GridEventConsumeHandler;

    invoke-direct {v2, p5, p6, p7}, Lorg/apache/ignite/internal/GridEventConsumeHandler;-><init>(Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)V

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startRoutine(Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZLorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteEventsImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    return-object v1

    :cond_0
    move v1, v3

    .line 97
    goto :goto_0

    :cond_1
    move v2, v3

    .line 98
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v1
.end method

.method public varargs remoteListen(Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/UUID;
    .locals 8
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "TT;>;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .local p1, "locLsnr":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;TT;>;"
    .local p2, "rmtFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    const/4 v1, 0x1

    .line 90
    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/IgniteEventsImpl;->remoteListen(IJZLorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgnitePredicate;[I)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public varargs remoteQuery(Lorg/apache/ignite/lang/IgnitePredicate;J[I)Ljava/util/List;
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;J[I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "p":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    const-string v1, "p"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-static {p1, p4}, Lorg/apache/ignite/internal/IgniteEventsImpl;->compoundPredicate(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->remoteEventsAsync(Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteEventsImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v1
.end method

.method public varargs stopLocalListen(Lorg/apache/ignite/lang/IgnitePredicate;[I)Z
    .locals 1
    .param p2, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I)Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/lang/IgnitePredicate;[I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 205
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v0
.end method

.method public stopRemoteListen(Ljava/util/UUID;)V
    .locals 2
    .param p1, "opId"    # Ljava/util/UUID;

    .prologue
    .line 117
    const-string v1, "consumeId"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteEventsImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    .line 130
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v1
.end method

.method public varargs waitForLocal(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/events/Event;
    .locals 2
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "types"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;[I)TT;"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->guard()V

    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->waitForEvent(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteEventsImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/events/Event;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteEventsImpl;->unguard()V

    throw v1
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/IgniteEvents;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteEvents;

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
    .line 292
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteEventsImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 293
    return-void
.end method
