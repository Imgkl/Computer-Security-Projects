.class public Lorg/apache/ignite/internal/processors/cache/jta/CacheNoopJtaManager;
.super Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
.source "CacheNoopJtaManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public checkJta()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public createTmLookup(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 0
    .param p1, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public tmLookup()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
