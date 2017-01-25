.class public Lorg/apache/ignite/internal/IgniteServicesImpl;
.super Lorg/apache/ignite/internal/AsyncSupportAdapter;
.source "IgniteServicesImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteServices;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "prj"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
    .param p3, "async"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/AsyncSupportAdapter;-><init>(Z)V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 60
    return-void
.end method

.method private guard()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 248
    return-void
.end method

.method private unguard()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    .line 255
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancel(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 173
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v1
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->cancelAll()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 188
    return-void

    .line 182
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

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v1
.end method

.method public clusterGroup()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    return-object v0
.end method

.method public deploy(Lorg/apache/ignite/services/ServiceConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/services/ServiceConfiguration;

    .prologue
    .line 143
    const-string v1, "cfg"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deploy(Lorg/apache/ignite/services/ServiceConfiguration;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v1
.end method

.method public deployClusterSingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "svc"    # Lorg/apache/ignite/services/Service;

    .prologue
    .line 87
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v1, "svc"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1, v2, p1, p2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deployClusterSingleton(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v1
.end method

.method public deployKeyAffinitySingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "svc"    # Lorg/apache/ignite/services/Service;
    .param p3, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "affKey"    # Ljava/lang/Object;

    .prologue
    .line 124
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string v1, "svc"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    const-string v1, "affKey"

    invoke-static {p4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deployKeyAffinitySingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 139
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v1
.end method

.method public deployMultiple(Ljava/lang/String;Lorg/apache/ignite/services/Service;II)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "svc"    # Lorg/apache/ignite/services/Service;
    .param p3, "totalCnt"    # I
    .param p4, "maxPerNodeCnt"    # I

    .prologue
    .line 105
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-string v0, "svc"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deployMultiple(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;II)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 119
    return-void

    .line 113
    :catch_0
    move-exception v6

    .line 114
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v0
.end method

.method public deployNodeSingleton(Ljava/lang/String;Lorg/apache/ignite/services/Service;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "svc"    # Lorg/apache/ignite/services/Service;

    .prologue
    .line 69
    const-string v1, "name"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v1, "svc"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v1, v2, p1, p2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->deployNodeSingleton(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Lorg/apache/ignite/services/Service;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/IgniteServicesImpl;->saveOrGet(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    .line 83
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v1
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
    .line 272
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    .line 273
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
    .line 282
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;->services()Lorg/apache/ignite/IgniteServices;

    move-result-object v0

    return-object v0
.end method

.method public service(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
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
    .line 204
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->service(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 210
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v0
.end method

.method public serviceDescriptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/services/ServiceDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->serviceDescriptors()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 198
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v0
.end method

.method public serviceProxy(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "sticky"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<-TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 217
    .local p2, "svcItf":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string v0, "svcItf"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service class must be an interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->serviceProxy(Lorg/apache/ignite/cluster/ClusterGroup;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 227
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v0
.end method

.method public services(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->guard()V

    .line 236
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->services(Ljava/lang/String;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->unguard()V

    throw v0
.end method

.method public withAsync()Lorg/apache/ignite/IgniteServices;
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    .end local p0    # "this":Lorg/apache/ignite/internal/IgniteServicesImpl;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/IgniteServicesImpl;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/IgniteServicesImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/IgniteServicesImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgniteServicesImpl;->withAsync()Lorg/apache/ignite/IgniteServices;

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
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteServicesImpl;->prj:Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 268
    return-void
.end method
