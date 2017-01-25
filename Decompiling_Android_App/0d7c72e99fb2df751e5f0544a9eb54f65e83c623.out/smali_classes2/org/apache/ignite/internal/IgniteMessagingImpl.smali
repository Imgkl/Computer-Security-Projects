.class public Lorg/apache/ignite/internal/IgniteMessagingImpl;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgniteMessagingImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteMessaging;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/AsyncSupportAdapter",
        "<",
        "Lorg/apache/ignite/IgniteMessaging;",
        ">;",
        "Lorg/apache/ignite/IgniteMessaging;",
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
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "prj"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p3, "async"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 62
    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 63
    return-void
.end method

.method private guard()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 212
    return-void
.end method

.method private unguard()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 219
    return-void
.end method


# virtual methods
.method public clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    return-object v0
.end method

.method protected createAsyncInstance()Lorg/apache/ignite/IgniteMessaging;
    .locals 4

    .prologue
    .line 223
    new-instance v0, Lorg/apache/ignite/internal/IgniteMessagingImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/IgniteMessagingImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    return-object v0
.end method

.method protected bridge synthetic createAsyncInstance()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->createAsyncInstance()Lorg/apache/ignite/IgniteMessaging;

    move-result-object v0

    return-object v0
.end method

.method public localListen(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;*>;"
    const-string v0, "p"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addUserMessageListener(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

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
    .line 233
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 234
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
    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->message()Lorg/apache/ignite/IgniteMessaging;

    move-result-object v0

    return-object v0
.end method

.method public remoteListen(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)Ljava/util/UUID;
    .locals 8
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;*>;"
    const-string v1, "p"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 178
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/GridMessageListenHandler;

    invoke-direct {v2, p1, p2}, Lorg/apache/ignite/internal/GridMessageListenHandler;-><init>(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    .line 180
    .local v2, "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->predicate()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startRoutine(Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZLorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    return-object v1

    .line 182
    .end local v2    # "hnd":Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    throw v1
.end method

.method public send(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 72
    const-string v1, "msg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    .line 79
    .local v2, "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v2    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    throw v1

    .line 82
    .restart local v2    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;ZJ)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    .line 90
    return-void
.end method

.method public send(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 9
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 94
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v4, "msgs cannot be null or empty"

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    .line 101
    .local v2, "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v2    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    throw v1

    .line 104
    .restart local v2    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    :try_start_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, "msg":Ljava/lang/Object;
    const-string v1, "msg"

    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;ZJ)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 114
    .end local v3    # "msg":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    .line 116
    return-void
.end method

.method public sendOrdered(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 9
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .prologue
    .line 120
    const-string v1, "msg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->nodes()Ljava/util/Collection;

    move-result-object v2

    .line 127
    .local v2, "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->emptyTopologyException()Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v2    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    throw v1

    .line 130
    .restart local v2    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-nez v1, :cond_1

    .line 131
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide p3

    .line 133
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;ZJ)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    .line 141
    return-void
.end method

.method public stopLocalListen(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/util/UUID;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/util/UUID;*>;"
    const-string v0, "p"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeUserMessageListener(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    throw v0
.end method

.method public stopRemoteListen(Ljava/util/UUID;)V
    .locals 2
    .param p1, "opId"    # Ljava/util/UUID;

    .prologue
    .line 192
    const-string v1, "opId"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->guard()V

    .line 197
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    .line 205
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteMessagingImpl;->unguard()V

    throw v1
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/IgniteMessaging;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;->withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteMessaging;

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
    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteMessagingImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 229
    return-void
.end method
