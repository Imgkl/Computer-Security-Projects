.class public Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;
.super Ljava/lang/Object;
.source "ServiceDescriptorImpl.java"

# interfaces
.implements Lorg/apache/ignite/services/ServiceDescriptor;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private top:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;)V
    .locals 0
    .param p1, "dep"    # Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .line 47
    return-void
.end method


# virtual methods
.method public affinityKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getAffinityKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getCacheName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public maxPerNodeCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getMaxPerNodeCount()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public originNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public serviceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/services/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getService()Lorg/apache/ignite/services/Service;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologySnapshot()Ljava/util/Map;
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
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->top:Ljava/util/Map;

    return-object v0
.end method

.method topologySnapshot(Ljava/util/Map;)V
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
    .line 94
    .local p1, "top":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->top:Ljava/util/Map;

    .line 95
    return-void
.end method

.method public totalCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceDescriptorImpl;->dep:Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/services/ServiceConfiguration;->getTotalCount()I

    move-result v0

    return v0
.end method
