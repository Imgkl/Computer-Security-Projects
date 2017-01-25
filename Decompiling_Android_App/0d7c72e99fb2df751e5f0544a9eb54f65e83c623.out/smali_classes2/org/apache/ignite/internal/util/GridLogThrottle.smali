.class public Lorg/apache/ignite/internal/util/GridLogThrottle;
.super Ljava/lang/Object;
.source "GridLogThrottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridLogThrottle$1;,
        Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_THROTTLE_TIMEOUT:I = 0x493e0

.field private static final errors:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static throttleTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/util/GridLogThrottle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    .line 42
    const v0, 0x493e0

    sput v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->throttleTimeout:I

    .line 45
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->errors:Ljava/util/concurrent/ConcurrentMap;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->errors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 123
    return-void
.end method

.method public static error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->ERROR:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/GridLogThrottle;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;)V

    .line 77
    return-void
.end method

.method public static info(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->INFO:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    invoke-static {p0, v1, p1, v1, v0}, Lorg/apache/ignite/internal/util/GridLogThrottle;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;)V

    .line 116
    return-void
.end method

.method private static log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;)V
    .locals 8
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "longMsg"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "level"    # Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    .prologue
    .line 137
    sget-boolean v4, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 139
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    .line 144
    .local v3, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    sget-object v4, Lorg/apache/ignite/internal/util/GridLogThrottle;->errors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 146
    .local v2, "loggedTs":Ljava/lang/Long;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    .local v0, "curTs":J
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget v6, Lorg/apache/ignite/internal/util/GridLogThrottle;->throttleTimeout:I

    int-to-long v6, v6

    sub-long v6, v0, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 149
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lorg/apache/ignite/internal/util/GridLogThrottle;->replace(Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    invoke-virtual {p4, p0, p2, p3, p1}, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->doLog(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    :cond_3
    return-void

    .line 139
    .end local v0    # "curTs":J
    .end local v2    # "loggedTs":Ljava/lang/Long;
    .end local v3    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/String;>;"
    :cond_4
    const/4 v4, 0x0

    invoke-static {v4, p2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    goto :goto_0
.end method

.method private static replace(Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 2
    .param p1, "oldStamp"    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "newStamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/String;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 171
    :cond_0
    if-nez p1, :cond_2

    .line 172
    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle;->errors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 174
    .local v0, "old":Ljava/lang/Long;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 177
    .end local v0    # "old":Ljava/lang/Long;
    :goto_0
    return v1

    .line 174
    .restart local v0    # "old":Ljava/lang/Long;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 177
    .end local v0    # "old":Ljava/lang/Long;
    :cond_2
    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle;->errors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static throttleTimeout()J
    .locals 2

    .prologue
    .line 63
    sget v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->throttleTimeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static throttleTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 54
    sput p0, Lorg/apache/ignite/internal/util/GridLogThrottle;->throttleTimeout:I

    .line 55
    return-void
.end method

.method public static warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->WARN:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/GridLogThrottle;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;)V

    .line 90
    return-void
.end method

.method public static warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Lorg/apache/ignite/IgniteLogger;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "longMsg"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridLogThrottle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;->WARN:Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/GridLogThrottle;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/util/GridLogThrottle$LogLevel;)V

    .line 104
    return-void
.end method
