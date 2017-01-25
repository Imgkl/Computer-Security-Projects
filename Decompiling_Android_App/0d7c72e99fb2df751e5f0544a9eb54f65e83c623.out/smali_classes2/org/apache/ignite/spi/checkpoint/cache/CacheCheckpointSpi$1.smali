.class Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;
.super Ljava/lang/Object;
.source "CacheCheckpointSpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const-class v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;->this$0:Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 153
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 154
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    move-object v0, p1

    .line 156
    check-cast v0, Lorg/apache/ignite/events/CacheEvent;

    .line 158
    .local v0, "e":Lorg/apache/ignite/events/CacheEvent;
    invoke-virtual {v0}, Lorg/apache/ignite/events/CacheEvent;->cacheName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;->this$0:Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->access$000(Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 167
    :cond_2
    :goto_0
    return-void

    .line 161
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/events/CacheEvent;->oldValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi$1;->this$0:Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;->access$100(Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpi;)Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    move-result-object v1

    .line 164
    .local v1, "tmp":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v0}, Lorg/apache/ignite/events/CacheEvent;->key()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/ignite/spi/checkpoint/CheckpointListener;->onCheckpointRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method
