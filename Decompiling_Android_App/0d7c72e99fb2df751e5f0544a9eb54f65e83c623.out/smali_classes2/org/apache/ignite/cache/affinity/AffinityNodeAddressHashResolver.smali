.class public Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;
.super Ljava/lang/Object;
.source "AffinityNodeAddressHashResolver.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/AffinityNodeHashResolver;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/Object;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 32
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->consistentId()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/cache/affinity/AffinityNodeAddressHashResolver;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
