.class public Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;
.super Ljava/lang/Object;
.source "GridServiceAssignments.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private assigns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final cfg:Lorg/apache/ignite/services/ServiceConfiguration;

.field private final nodeId:Ljava/util/UUID;

.field private final topVer:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/services/ServiceConfiguration;Ljava/util/UUID;J)V
    .locals 1
    .param p1, "cfg"    # Lorg/apache/ignite/services/ServiceConfiguration;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "topVer"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    .line 57
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->nodeId:Ljava/util/UUID;

    .line 58
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->topVer:J

    .line 59
    return-void
.end method


# virtual methods
.method public affinityKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getAffinityKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public assigns()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns:Ljava/util/Map;

    return-object v0
.end method

.method public assigns(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "assigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->assigns:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configuration()Lorg/apache/ignite/services/ServiceConfiguration;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getNodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public service()Lorg/apache/ignite/services/Service;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getService()Lorg/apache/ignite/services/Service;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceAssignments;->topVer:J

    return-wide v0
.end method
