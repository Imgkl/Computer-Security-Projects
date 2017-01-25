.class public Lorg/apache/ignite/internal/IgnitionMXBeanAdapter;
.super Ljava/lang/Object;
.source "IgnitionMXBeanAdapter.java"

# interfaces
.implements Lorg/apache/ignite/mxbean/IgnitionMXBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/G;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 p1, 0x0

    .line 37
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/G;->state(Ljava/lang/String;)Lorg/apache/ignite/IgniteState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public restart(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 57
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/G;->restart(Z)V

    .line 58
    return-void
.end method

.method public stop(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cancel"    # Z

    .prologue
    .line 47
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/G;->stop(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stop(Z)Z
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 42
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/G;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public stopAll(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 52
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/G;->stopAll(Z)V

    .line 53
    return-void
.end method
