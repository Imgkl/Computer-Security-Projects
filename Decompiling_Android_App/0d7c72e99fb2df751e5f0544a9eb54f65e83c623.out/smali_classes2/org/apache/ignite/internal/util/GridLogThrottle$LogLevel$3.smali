.class final enum Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$3;
.super Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;
.source "GridLogThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;-><init>(Ljava/lang/String;ILorg/apache/ignite/internal/util/GridLogThrottle$1;)V

    return-void
.end method


# virtual methods
.method public doLog(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "longMsg"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 206
    invoke-interface {p1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {p1, p2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method
