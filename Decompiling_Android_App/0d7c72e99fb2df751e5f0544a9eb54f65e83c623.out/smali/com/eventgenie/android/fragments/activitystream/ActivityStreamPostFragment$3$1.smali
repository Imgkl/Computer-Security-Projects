.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3$1;
.super Ljava/lang/Object;
.source "ActivityStreamPostFragment.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/GenieAbcActivity$IActionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3$1;->this$1:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3$1;->this$1:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;

    iget-object v0, v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamPostFragment;->startTakePicture()V

    .line 430
    return-void
.end method
