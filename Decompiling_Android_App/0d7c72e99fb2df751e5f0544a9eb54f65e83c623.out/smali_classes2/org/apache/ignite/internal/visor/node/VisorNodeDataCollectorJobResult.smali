.class public Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;
.super Ljava/lang/Object;
.source "VisorNodeDataCollectorJobResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final caches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCache;",
            ">;"
        }
    .end annotation
.end field

.field private cachesEx:Ljava/lang/Throwable;

.field private errCnt:J

.field private final evts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation
.end field

.field private evtsEx:Ljava/lang/Throwable;

.field private gridName:Ljava/lang/String;

.field private final igfsEndpoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final igfss:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;",
            ">;"
        }
    .end annotation
.end field

.field private igfssEx:Ljava/lang/Throwable;

.field private taskMonitoringEnabled:Z

.field private topVer:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->evts:Ljava/util/Collection;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->caches:Ljava/util/Collection;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfss:Ljava/util/Collection;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfsEndpoints:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public caches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->caches:Ljava/util/Collection;

    return-object v0
.end method

.method public cachesEx()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->cachesEx:Ljava/lang/Throwable;

    return-object v0
.end method

.method public cachesEx(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cachesEx"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->cachesEx:Ljava/lang/Throwable;

    .line 149
    return-void
.end method

.method public errorCount()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->errCnt:J

    return-wide v0
.end method

.method public errorCount(J)V
    .locals 1
    .param p1, "errorCount"    # J

    .prologue
    .line 190
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->errCnt:J

    .line 191
    return-void
.end method

.method public events()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/event/VisorGridEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->evts:Ljava/util/Collection;

    return-object v0
.end method

.method public eventsEx()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->evtsEx:Ljava/lang/Throwable;

    return-object v0
.end method

.method public eventsEx(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "evtsEx"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->evtsEx:Ljava/lang/Throwable;

    .line 128
    return-void
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public gridName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->gridName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public igfsEndpoints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfsEndpoints:Ljava/util/Collection;

    return-object v0
.end method

.method public igfss()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfss:Ljava/util/Collection;

    return-object v0
.end method

.method public igfssEx()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfssEx:Ljava/lang/Throwable;

    return-object v0
.end method

.method public igfssEx(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "igfssEx"    # Ljava/lang/Throwable;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->igfssEx:Ljava/lang/Throwable;

    .line 177
    return-void
.end method

.method public taskMonitoringEnabled(Z)V
    .locals 0
    .param p1, "taskMonitoringEnabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->taskMonitoringEnabled:Z

    .line 107
    return-void
.end method

.method public taskMonitoringEnabled()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->taskMonitoringEnabled:Z

    return v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->topVer:J

    return-wide v0
.end method

.method public topologyVersion(J)V
    .locals 1
    .param p1, "topVer"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeDataCollectorJobResult;->topVer:J

    .line 93
    return-void
.end method
