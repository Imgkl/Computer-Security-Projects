.class public abstract Lorg/apache/ignite/internal/util/snaptree/Epoch;
.super Ljava/lang/Object;
.source "Epoch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/snaptree/Epoch$1;,
        Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;,
        Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    }
.end annotation


# instance fields
.field private final _root:Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;-><init>(Lorg/apache/ignite/internal/util/snaptree/Epoch;Lorg/apache/ignite/internal/util/snaptree/Epoch$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/Epoch;->_root:Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;

    .line 123
    return-void
.end method


# virtual methods
.method public attemptArrive()Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/Epoch;->_root:Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;->attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    return-object v0
.end method

.method public beginClose()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/Epoch;->_root:Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;->beginClose()V

    .line 92
    return-void
.end method

.method computeSpread()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/Epoch;->_root:Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;->computeSpread()I

    move-result v0

    return v0
.end method

.method protected abstract onClosed(I)V
.end method
