.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorCacheMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$1;,
        Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask;->job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;-><init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$1;)V

    return-object v0
.end method
