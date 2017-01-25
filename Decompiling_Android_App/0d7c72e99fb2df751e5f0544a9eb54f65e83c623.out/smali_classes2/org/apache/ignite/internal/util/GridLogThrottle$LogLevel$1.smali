.class final enum Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel$1;
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
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;-><init>(Ljava/lang/String;ILorg/apache/ignite/internal/util/GridLogThrottle$1;)V

    return-void
.end method


# virtual methods
.method public doLog(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "longMsg"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    if-eqz p4, :cond_0

    .line 190
    invoke-static {p1, p2, p4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method
