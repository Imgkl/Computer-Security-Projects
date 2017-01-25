.class final Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$JavaScriptInterface;
.super Ljava/lang/Object;
.source "SessionFeedbackOfflineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$JavaScriptInterface;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processFormData(Ljava/lang/String;)V
    .locals 1
    .param p1, "formData"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity$JavaScriptInterface;->this$0:Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    # setter for: Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->mPostBody:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;->access$002(Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    return-void
.end method
