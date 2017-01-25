.class public abstract Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "GridPeerDeployAwareTaskAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<TT;TR;>;",
        "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)V
    .locals 0
    .param p1, "pda"    # Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;, "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter<TT;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 43
    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;, "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;, "Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v0, :cond_0

    .line 48
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridPeerDeployAwareTaskAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
