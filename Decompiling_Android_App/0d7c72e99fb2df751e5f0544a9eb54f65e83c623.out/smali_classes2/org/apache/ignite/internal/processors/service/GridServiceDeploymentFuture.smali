.class public Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridServiceDeploymentFuture.java"


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
.field private static final serialVersionUID:J


# instance fields
.field private final cfg:Lorg/apache/ignite/services/ServiceConfiguration;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/services/ServiceConfiguration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/apache/ignite/services/ServiceConfiguration;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    .line 39
    return-void
.end method


# virtual methods
.method configuration()Lorg/apache/ignite/services/ServiceConfiguration;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;->cfg:Lorg/apache/ignite/services/ServiceConfiguration;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeploymentFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
