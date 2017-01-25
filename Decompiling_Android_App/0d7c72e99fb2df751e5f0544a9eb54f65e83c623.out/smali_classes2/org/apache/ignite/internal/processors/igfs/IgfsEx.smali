.class public interface abstract Lorg/apache/ignite/internal/processors/igfs/IgfsEx;
.super Ljava/lang/Object;
.source "IgfsEx.java"

# interfaces
.implements Lorg/apache/ignite/IgniteFileSystem;


# static fields
.field public static final PROP_GROUP_NAME:Ljava/lang/String; = "grpName"

.field public static final PROP_PERMISSION:Ljava/lang/String; = "permission"

.field public static final PROP_PREFER_LOCAL_WRITES:Ljava/lang/String; = "locWrite"

.field public static final PROP_USER_NAME:Ljava/lang/String; = "usrName"

.field public static final SECONDARY_FS_CONFIG_PATH:Ljava/lang/String; = "SECONDARY_FS_CONFIG_PATH"

.field public static final SECONDARY_FS_URI:Ljava/lang/String; = "SECONDARY_FS_URI"

.field public static final SECONDARY_FS_USER_NAME:Ljava/lang/String; = "SECONDARY_FS_USER_NAME"


# virtual methods
.method public abstract asSecondary()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
.end method

.method public abstract awaitDeletesAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract clientLogDirectory()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract clientLogDirectory(Ljava/lang/String;)V
.end method

.method public abstract context()Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
.end method

.method public abstract evictExclude(Lorg/apache/ignite/igfs/IgfsPath;Z)Z
.end method

.method public abstract globalSampling()Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract globalSampling(Ljava/lang/Boolean;)V
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract globalSpace()Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract groupBlockSize()J
.end method

.method public abstract isProxy(Ljava/net/URI;)Z
.end method

.method public abstract localMetrics()Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
.end method

.method public abstract nextAffinityKey()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method public abstract open(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/apache/ignite/igfs/IgfsPath;I)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/apache/ignite/igfs/IgfsPath;II)Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract proxyPaths()Lorg/apache/ignite/internal/processors/igfs/IgfsPaths;
.end method

.method public abstract stop()V
.end method
