.class public Lorg/apache/ignite/internal/processors/igfs/IgfsNoopHelper;
.super Ljava/lang/Object;
.source "IgfsNoopHelper.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIgfsBlockKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public preProcessCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 30
    return-void
.end method

.method public validateCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method
