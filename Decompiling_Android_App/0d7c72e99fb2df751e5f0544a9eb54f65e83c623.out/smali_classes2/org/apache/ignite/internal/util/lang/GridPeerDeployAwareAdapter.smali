.class public Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;
.super Ljava/lang/Object;
.source "GridPeerDeployAwareAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field protected transient pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v0, :cond_0

    .line 65
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

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
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public peerDeployLike(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 49
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAwareAdapter;->pda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 52
    return-void
.end method
