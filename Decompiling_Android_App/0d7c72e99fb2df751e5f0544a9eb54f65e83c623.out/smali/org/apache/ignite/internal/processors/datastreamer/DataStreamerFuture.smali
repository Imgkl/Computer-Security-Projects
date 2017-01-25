.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "DataStreamerFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private dataLdr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V
    .locals 1
    .param p1, "dataLdr"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 40
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;->dataLdr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    .line 43
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;->onCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;->dataLdr:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->closeEx(Z)V

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
