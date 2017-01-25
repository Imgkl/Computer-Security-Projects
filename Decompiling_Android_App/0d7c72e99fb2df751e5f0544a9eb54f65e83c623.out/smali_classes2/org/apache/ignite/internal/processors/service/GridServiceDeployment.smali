.class public Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
.super Ljava/lang/Object;
.source "GridServiceDeployment.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cfg:Lorg/apache/ignite/services/ServiceConfiguration;

.field private nodeId:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/services/ServiceConfiguration;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "cfg"    # Lorg/apache/ignite/services/ServiceConfiguration;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    .line 46
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    .line 47
    return-void
.end method


# virtual methods
.method public configuration()Lorg/apache/ignite/services/ServiceConfiguration;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 69
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    .line 73
    .local v0, "that":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/services/ServiceConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 74
    goto :goto_0

    .line 73
    :cond_5
    iget-object v3, v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    if-nez v3, :cond_4

    .line 76
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 77
    goto :goto_0

    .line 76
    :cond_7
    iget-object v3, v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 86
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    invoke-virtual {v1}, Lorg/apache/ignite/services/ServiceConfiguration;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 88
    return v0

    .end local v0    # "res":I
    :cond_1
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
