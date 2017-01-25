.class public Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;
.super Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.source "GridRestTopologyRequest.java"


# instance fields
.field private includeAttrs:Z

.field private includeMetrics:Z

.field private nodeId:Ljava/util/UUID;

.field private nodeIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public includeAttributes(Z)V
    .locals 0
    .param p1, "includeAttrs"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeAttrs:Z

    .line 66
    return-void
.end method

.method public includeAttributes()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeAttrs:Z

    return v0
.end method

.method public includeMetrics(Z)V
    .locals 0
    .param p1, "includeMetrics"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeMetrics:Z

    .line 52
    return-void
.end method

.method public includeMetrics()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->includeMetrics:Z

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeId:Ljava/util/UUID;

    .line 80
    return-void
.end method

.method public nodeIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeIp:Ljava/lang/String;

    return-object v0
.end method

.method public nodeIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeIp"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;->nodeIp:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const-class v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTopologyRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
