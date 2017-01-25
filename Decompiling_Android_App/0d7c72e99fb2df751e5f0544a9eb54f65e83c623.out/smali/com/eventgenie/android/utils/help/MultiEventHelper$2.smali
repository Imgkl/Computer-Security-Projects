.class Lcom/eventgenie/android/utils/help/MultiEventHelper$2;
.super Ljava/lang/Object;
.source "MultiEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/MultiEventHelper;->loadEvent(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$2;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$2;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$100(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$2;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 116
    new-instance v0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$2;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 118
    return-void
.end method
