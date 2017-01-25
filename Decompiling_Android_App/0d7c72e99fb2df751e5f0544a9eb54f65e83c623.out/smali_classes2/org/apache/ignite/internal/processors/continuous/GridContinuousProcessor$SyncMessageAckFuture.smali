.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessageAckFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private nodeId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1839
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1840
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;->nodeId:Ljava/util/UUID;

    .line 1841
    return-void
.end method


# virtual methods
.method nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
