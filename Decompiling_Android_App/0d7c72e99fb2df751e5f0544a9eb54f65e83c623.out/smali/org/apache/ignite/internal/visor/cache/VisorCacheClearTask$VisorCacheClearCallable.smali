.class Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;
.super Ljava/lang/Object;
.source "VisorCacheClearTask.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCacheClearCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cache:Lorg/apache/ignite/IgniteCache;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/IgniteCache;)V
    .locals 0
    .param p1, "cache"    # Lorg/apache/ignite/IgniteCache;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;->cache:Lorg/apache/ignite/IgniteCache;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/IgniteCache;
    .param p2, "x1"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;-><init>(Lorg/apache/ignite/IgniteCache;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;->cache:Lorg/apache/ignite/IgniteCache;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteCache;->clear()V

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheClearTask$VisorCacheClearCallable;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
