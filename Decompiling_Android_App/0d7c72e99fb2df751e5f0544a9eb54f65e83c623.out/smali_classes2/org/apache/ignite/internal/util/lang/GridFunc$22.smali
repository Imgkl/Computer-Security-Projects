.class final Lorg/apache/ignite/internal/util/lang/GridFunc$22;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Lorg/apache/ignite/internal/util/GridConcurrentHashSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$22;->call()Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "Concurrent hash set factory."

    return-object v0
.end method
