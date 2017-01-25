.class final Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter$1;
.super Ljava/lang/Object;
.source "GridClientBalancerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lorg/apache/ignite/internal/client/GridClientNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter$1;->apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/GridClientNode;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 34
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->connectable()Z

    move-result v0

    return v0
.end method
