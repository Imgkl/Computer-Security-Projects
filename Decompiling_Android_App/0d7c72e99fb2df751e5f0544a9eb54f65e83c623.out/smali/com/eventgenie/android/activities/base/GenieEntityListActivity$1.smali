.class Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;
.super Ljava/lang/Object;
.source "GenieEntityListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/base/GenieEntityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieEntityListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityListActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityListActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieEntityListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityListActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieEntityListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    .line 75
    if-nez p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onFilterTextChanged(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityListActivity;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onFilterTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 86
    return-void
.end method
