.class public Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;
.super Ljava/lang/Exception;
.source "GridCacheLockTimeoutException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lock acquisition timed out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
