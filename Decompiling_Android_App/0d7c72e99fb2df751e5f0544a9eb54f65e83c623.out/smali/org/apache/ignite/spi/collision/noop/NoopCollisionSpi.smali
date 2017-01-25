.class public Lorg/apache/ignite/spi/collision/noop/NoopCollisionSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "NoopCollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionSpi;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiNoop;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollision(Lorg/apache/ignite/spi/collision/CollisionContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/spi/collision/CollisionContext;

    .prologue
    .line 49
    return-void
.end method

.method public setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/collision/CollisionExternalListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public spiStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/apache/ignite/spi/collision/noop/NoopCollisionSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
