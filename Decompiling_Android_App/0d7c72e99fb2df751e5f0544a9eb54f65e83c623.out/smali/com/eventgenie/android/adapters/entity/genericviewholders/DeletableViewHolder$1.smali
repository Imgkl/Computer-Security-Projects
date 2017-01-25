.class Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$1;
.super Ljava/lang/Object;
.source "DeletableViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->getDeleteButton()Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$1;->this$0:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$1;->this$0:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    # getter for: Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->access$000(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;

    .line 34
    .local v1, "listener":Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;
    iget-object v2, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$1;->this$0:Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    # getter for: Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mItem:Lcom/eventgenie/android/container/EntityWrapper;
    invoke-static {v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->access$100(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)Lcom/eventgenie/android/container/EntityWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;->deleteRequested(Lcom/eventgenie/android/container/EntityWrapper;)V

    goto :goto_0

    .line 37
    .end local v1    # "listener":Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;
    :cond_0
    return-void
.end method
