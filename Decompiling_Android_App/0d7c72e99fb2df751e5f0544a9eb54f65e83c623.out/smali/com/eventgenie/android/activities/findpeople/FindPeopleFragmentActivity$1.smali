.class Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FindPeopleFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$1;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$1;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    # invokes: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->populateView()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$000(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity$1;->this$0:Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;

    # invokes: Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->notifyViewAdaptorChanged()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;->access$100(Lcom/eventgenie/android/activities/findpeople/FindPeopleFragmentActivity;)V

    .line 120
    return-void
.end method
