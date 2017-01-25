.class public Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;
.super Lorg/apache/ignite/events/DiscoveryEvent;
.source "DiscoveryCustomEvent.java"


# static fields
.field public static final EVT_DISCOVERY_CUSTOM_EVT:I = 0x12

.field private static final serialVersionUID:J


# instance fields
.field private affTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private data:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/ignite/events/DiscoveryEvent;-><init>()V

    .line 54
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->type(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->affTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public affinityTopologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p1, "affTopVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->affTopVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 83
    return-void
.end method

.method public data()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->data:Ljava/io/Serializable;

    return-object v0
.end method

.method public data(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "data"    # Ljava/io/Serializable;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->data:Ljava/io/Serializable;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-class v0, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;

    invoke-super {p0}, Lorg/apache/ignite/events/DiscoveryEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
