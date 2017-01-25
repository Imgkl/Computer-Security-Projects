.class public interface abstract Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
.super Ljava/lang/Object;
.source "IpcServerEndpoint.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract accept()Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract getHost()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract isManagement()Z
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
