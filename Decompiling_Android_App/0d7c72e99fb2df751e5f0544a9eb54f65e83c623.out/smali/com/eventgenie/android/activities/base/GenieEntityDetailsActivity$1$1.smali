.class Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1$1;
.super Ljava/lang/Object;
.source "GenieEntityDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1$1;->this$1:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1$1;->this$1:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;

    iget-object v0, v0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    .line 157
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1$1;->this$1:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;

    iget-object v0, v0, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->doReloadAfterSurveysSynced()V

    .line 158
    return-void
.end method
