.class Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity$1;
.super Ljava/lang/Object;
.source "SearchPlusActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshBottomSearchButtons()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity$1;->this$0:Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->onSearchClick(Landroid/view/View;)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method
