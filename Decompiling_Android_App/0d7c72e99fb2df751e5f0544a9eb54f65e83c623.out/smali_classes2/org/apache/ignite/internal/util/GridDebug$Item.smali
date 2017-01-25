.class public Lorg/apache/ignite/internal/util/GridDebug$Item;
.super Ljava/lang/Object;
.source "GridDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final data:[Ljava/lang/Object;

.field public final threadId:J

.field public final threadName:Ljava/lang/String;

.field public final ts:J


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # [Ljava/lang/Object;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->ts:J

    .line 291
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->data:[Ljava/lang/Object;

    .line 292
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 294
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->threadName:Ljava/lang/String;

    .line 295
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->threadId:J

    .line 296
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 300
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->ts:J

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->threadName:Ljava/lang/String;

    iget-wide v3, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->threadId:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/GridDebug$Item;->data:[Ljava/lang/Object;

    # invokes: Lorg/apache/ignite/internal/util/GridDebug;->formatEntry(JLjava/lang/String;J[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridDebug;->access$000(JLjava/lang/String;J[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
