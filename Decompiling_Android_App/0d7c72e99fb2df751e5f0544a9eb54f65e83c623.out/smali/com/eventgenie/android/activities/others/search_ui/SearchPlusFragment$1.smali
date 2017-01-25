.class Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;
.super Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;
.source "SearchPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 87
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/searchui/CheckboxListItem;>;"
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    invoke-direct {p0, p2, p3}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCheckboxClick(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    .locals 2
    .param p1, "item"    # Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->OnItemClicked(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    # invokes: Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->refreshSelectAllButton()V
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->access$000(Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;)V

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onLayoutClick(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    .locals 2
    .param p1, "item"    # Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->OnItemAccesed(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method
