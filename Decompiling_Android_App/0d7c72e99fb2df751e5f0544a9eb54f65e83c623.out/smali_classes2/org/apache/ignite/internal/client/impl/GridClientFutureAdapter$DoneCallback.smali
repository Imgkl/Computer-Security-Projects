.class Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;
.super Ljava/lang/Object;
.source "GridClientFutureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoneCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cb:Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback",
            "<TR;TT;>;"
        }
    .end annotation
.end field

.field private final chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final lsnr:Lorg/apache/ignite/internal/client/GridClientFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/client/GridClientFutureListener",
            "<TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;Lorg/apache/ignite/internal/client/GridClientFutureListener;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback",
            "<TR;TT;>;",
            "Lorg/apache/ignite/internal/client/GridClientFutureListener",
            "<TR;>;",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>.DoneCallback<TT;>;"
    .local p2, "cb":Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback<TR;TT;>;"
    .local p3, "lsnr":Lorg/apache/ignite/internal/client/GridClientFutureListener;, "Lorg/apache/ignite/internal/client/GridClientFutureListener<TR;>;"
    .local p4, "chainedFut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->cb:Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;

    .line 280
    iput-object p3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->lsnr:Lorg/apache/ignite/internal/client/GridClientFutureListener;

    .line 281
    iput-object p4, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 282
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;Lorg/apache/ignite/internal/client/GridClientFutureListener;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;
    .param p3, "x2"    # Lorg/apache/ignite/internal/client/GridClientFutureListener;
    .param p4, "x3"    # Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .param p5, "x4"    # Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$1;

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>.DoneCallback<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;Lorg/apache/ignite/internal/client/GridClientFutureListener;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;)V

    return-void
.end method


# virtual methods
.method public proceed()V
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>.DoneCallback<TT;>;"
    const/16 v7, 0x5d

    .line 288
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    .line 290
    .local v1, "fut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 293
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->lsnr:Lorg/apache/ignite/internal/client/GridClientFutureListener;

    if-eqz v3, :cond_1

    .line 294
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->lsnr:Lorg/apache/ignite/internal/client/GridClientFutureListener;

    invoke-interface {v3, v1}, Lorg/apache/ignite/internal/client/GridClientFutureListener;->onDone(Lorg/apache/ignite/internal/client/GridClientFuture;)V

    .line 296
    :cond_1
    const/4 v2, 0x0

    .line 298
    .local v2, "res":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->cb:Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;

    if-eqz v3, :cond_2

    .line 299
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->cb:Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;

    invoke-interface {v3, v1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;->onComplete(Lorg/apache/ignite/internal/client/GridClientFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 301
    .end local v2    # "res":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    if-eqz v3, :cond_3

    .line 302
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 326
    :cond_3
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Lorg/apache/ignite/internal/client/GridClientException;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    if-eqz v3, :cond_4

    .line 306
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    .line 308
    :cond_4
    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notify chained callback due to unhandled client exception [fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->cb:Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", chainedFut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 313
    .end local v0    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_1
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    if-eqz v3, :cond_5

    .line 315
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    .line 317
    :cond_5
    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to notify chained callback due to unhandled runtime exception [fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->cb:Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", chainedFut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 320
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Error;
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    if-eqz v3, :cond_6

    .line 322
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->chainedFut:Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Throwable;)V

    .line 324
    :cond_6
    throw v0
.end method
