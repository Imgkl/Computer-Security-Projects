.class public Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;
.super Ljava/lang/Object;
.source "VisorNodeDataCollectorTaskResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cachesEx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final errCnts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final evts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final evtsEx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final gridNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final igfsEndpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private final igfss:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;",
            ">;>;"
        }
    .end annotation
.end field

.field private final igfssEx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final taskMonitoringEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final topVersions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final unhandledEx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->unhandledEx:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->gridNames:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->topVersions:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->taskMonitoringEnabled:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->errCnts:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->evts:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->evtsEx:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->caches:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->cachesEx:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfss:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfsEndpoints:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfssEx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public caches()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCache;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->caches:Ljava/util/Map;

    return-object v0
.end method

.method public cachesEx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->cachesEx:Ljava/util/Map;

    return-object v0
.end method

.method public errorCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->errCnts:Ljava/util/Map;

    return-object v0
.end method

.method public events()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->evts:Ljava/util/List;

    return-object v0
.end method

.method public eventsEx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->evtsEx:Ljava/util/Map;

    return-object v0
.end method

.method public gridNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->gridNames:Ljava/util/Map;

    return-object v0
.end method

.method public igfsEndpoints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfsEndpoints:Ljava/util/Map;

    return-object v0
.end method

.method public igfss()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfss:Ljava/util/Map;

    return-object v0
.end method

.method public igfssEx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfssEx:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->gridNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->topVersions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->unhandledEx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->taskMonitoringEnabled:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->evts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->evtsEx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->caches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->cachesEx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfss:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfsEndpoints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->igfssEx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public taskMonitoringEnabled()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->taskMonitoringEnabled:Ljava/util/Map;

    return-object v0
.end method

.method public topologyVersions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->topVersions:Ljava/util/Map;

    return-object v0
.end method

.method public unhandledEx()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorTaskResult;->unhandledEx:Ljava/util/Map;

    return-object v0
.end method
