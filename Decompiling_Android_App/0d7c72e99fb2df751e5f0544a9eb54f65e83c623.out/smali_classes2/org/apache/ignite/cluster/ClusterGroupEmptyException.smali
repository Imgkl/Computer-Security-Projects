.class public Lorg/apache/ignite/cluster/ClusterGroupEmptyException;
.super Lorg/apache/ignite/cluster/ClusterTopologyException;
.source "ClusterGroupEmptyException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "Cluster group is empty."

    invoke-direct {p0, v0}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/cluster/ClusterTopologyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
