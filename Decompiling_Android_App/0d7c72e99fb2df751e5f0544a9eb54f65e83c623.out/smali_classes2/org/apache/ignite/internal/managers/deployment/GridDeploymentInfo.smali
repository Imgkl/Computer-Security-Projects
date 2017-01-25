.class public interface abstract Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
.super Ljava/lang/Object;
.source "GridDeploymentInfo.java"


# virtual methods
.method public abstract classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract deployMode()Lorg/apache/ignite/configuration/DeploymentMode;
.end method

.method public abstract localDeploymentOwner()Z
.end method

.method public abstract participants()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sequenceNumber()J
.end method

.method public abstract userVersion()Ljava/lang/String;
.end method
