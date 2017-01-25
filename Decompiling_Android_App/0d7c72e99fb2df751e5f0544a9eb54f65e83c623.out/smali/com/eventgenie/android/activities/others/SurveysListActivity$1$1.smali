.class Lcom/eventgenie/android/activities/others/SurveysListActivity$1$1;
.super Ljava/lang/Object;
.source "SurveysListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/SurveysListActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/others/SurveysListActivity$1;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/SurveysListActivity$1;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity$1$1;->this$1:Lcom/eventgenie/android/activities/others/SurveysListActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity$1$1;->this$1:Lcom/eventgenie/android/activities/others/SurveysListActivity$1;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/SurveysListActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SurveysListActivity;

    # invokes: Lcom/eventgenie/android/activities/others/SurveysListActivity;->refreshLists()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->access$000(Lcom/eventgenie/android/activities/others/SurveysListActivity;)V

    .line 202
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SurveysListActivity$1$1;->this$1:Lcom/eventgenie/android/activities/others/SurveysListActivity$1;

    iget-object v0, v0, Lcom/eventgenie/android/activities/others/SurveysListActivity$1;->this$0:Lcom/eventgenie/android/activities/others/SurveysListActivity;

    const/4 v1, 0x1

    # setter for: Lcom/eventgenie/android/activities/others/SurveysListActivity;->mEnabledItemClick:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/others/SurveysListActivity;->access$102(Lcom/eventgenie/android/activities/others/SurveysListActivity;Z)Z

    .line 203
    return-void
.end method
