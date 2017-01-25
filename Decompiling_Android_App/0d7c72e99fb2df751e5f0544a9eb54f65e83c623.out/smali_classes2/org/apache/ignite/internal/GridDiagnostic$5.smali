.class final Lorg/apache/ignite/internal/GridDiagnostic$5;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridDiagnostic;->runBackgroundCheck(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method public body()V
    .locals 4

    .prologue
    .line 119
    const-string v1, "com.sun.management.jmxremote"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "com.sun.management.jmxremote.port"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "portStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 124
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "portStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0    # "portStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 132
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridDiagnostic$5;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "JMX remote management is enabled but JMX port is either not set or invalid. Check system property \'com.sun.management.jmxremote.port\' to make sure it specifies valid TCP/IP port."

    const-string v3, "JMX remote port is invalid - JMX management is off."

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
