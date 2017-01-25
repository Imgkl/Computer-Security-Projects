.class public Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
.super Landroid/os/AsyncTask;
.source "EndlessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/endless/EndlessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

.field tempKeep:Z


# direct methods
.method protected constructor <init>(Lcom/commonsware/cwac/endless/EndlessAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/commonsware/cwac/endless/EndlessAdapter;

    .prologue
    .line 320
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    .line 321
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    .line 322
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 329
    .local v1, "result":Ljava/lang/Exception;
    :try_start_0
    iget-object v2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->cacheInBackground()Z

    move-result v2

    iput-boolean v2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->tempKeep:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    iget-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->tempKeep:Z

    # invokes: Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V
    invoke-static {v0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$000(Lcom/commonsware/cwac/endless/EndlessAdapter;Z)V

    .line 342
    if-nez p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->appendCachedData()V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onDataReady()V

    .line 351
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    iget-object v2, p0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->adapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    # getter for: Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;
    invoke-static {v2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$100(Lcom/commonsware/cwac/endless/EndlessAdapter;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onException(Landroid/view/View;Ljava/lang/Exception;)Z

    move-result v1

    # invokes: Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V
    invoke-static {v0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->access$000(Lcom/commonsware/cwac/endless/EndlessAdapter;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
