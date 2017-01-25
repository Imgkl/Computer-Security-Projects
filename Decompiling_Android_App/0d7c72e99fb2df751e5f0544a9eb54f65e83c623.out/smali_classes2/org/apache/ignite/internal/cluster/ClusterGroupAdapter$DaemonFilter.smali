.class Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$DaemonFilter;
.super Ljava/lang/Object;
.source "ClusterGroupAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaemonFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$1;

    .prologue
    .line 749
    invoke-direct {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$DaemonFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 749
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter$DaemonFilter;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 755
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v0

    return v0
.end method
