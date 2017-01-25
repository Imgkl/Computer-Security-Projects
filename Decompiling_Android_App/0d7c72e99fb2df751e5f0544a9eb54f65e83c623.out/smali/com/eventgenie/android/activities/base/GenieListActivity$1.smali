.class Lcom/eventgenie/android/activities/base/GenieListActivity$1;
.super Ljava/lang/Object;
.source "GenieListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/base/GenieListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieListActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieListActivity;

    # getter for: Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->access$000(Lcom/eventgenie/android/activities/base/GenieListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 56
    return-void
.end method
