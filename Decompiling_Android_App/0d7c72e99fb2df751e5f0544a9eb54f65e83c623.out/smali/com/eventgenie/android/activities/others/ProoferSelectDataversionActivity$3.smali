.class Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;
.super Ljava/lang/Object;
.source "ProoferSelectDataversionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

.field final synthetic val$ver:Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->val$ver:Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iget-object v1, v0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mUpdatesManager:Lcom/genie_connect/android/services/UpdatesManager;

    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mIsApplyDeltasTil:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$100(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->val$ver:Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/genie_connect/android/services/UpdatesManager;->setApplyDeltasTil(Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mNamespace:J
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$200(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)J

    move-result-wide v2

    sget-object v4, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;->LOAD_SPECIFIC_DATAVERSION:Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$3;->val$ver:Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/entities/DataversionGsonModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/asynctasks/LoadDataversionTask;-><init>(Landroid/app/Activity;JLcom/eventgenie/android/utils/asynctasks/LoadDataversionTask$Action;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 232
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
