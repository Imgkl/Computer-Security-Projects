.class public interface abstract Lorg/apache/ignite/IgniteLogger;
.super Ljava/lang/Object;
.source "IgniteLogger.java"


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# virtual methods
.method public abstract debug(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract fileName()Ljava/lang/String;
.end method

.method public abstract getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract isDebugEnabled()Z
.end method

.method public abstract isInfoEnabled()Z
.end method

.method public abstract isQuiet()Z
.end method

.method public abstract isTraceEnabled()Z
.end method

.method public abstract trace(Ljava/lang/String;)V
.end method

.method public abstract warning(Ljava/lang/String;)V
.end method

.method public abstract warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
