.class Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;
.super Landroid/os/AsyncTask;
.source "DashboardGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Luk/co/alt236/easycursor/EasyCursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->doInBackground([Ljava/lang/Void;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->messagesGetForDashboard()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p1, Luk/co/alt236/easycursor/EasyCursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->onPostExecute(Luk/co/alt236/easycursor/EasyCursor;)V

    return-void
.end method

.method protected onPostExecute(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 7
    .param p1, "result"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 361
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgSubject:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$200(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "subject"

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->SQLITE:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    const-string/jumbo v5, "timestamp"

    invoke-interface {p1, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->formatDateTimeWithMediumFormat(Landroid/content/Context;Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "time":Ljava/lang/String;
    const-string/jumbo v3, "timestamp"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    .line 374
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgTime:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$300(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_0
    const-string v3, "body"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "mBody":Ljava/lang/String;
    const-string v3, "bodyHtml"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "mBodyHtml":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgBody:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$400(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "<br>"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v6}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgAuthor:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$500(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgAuthor:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$500(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "author"

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    const-string v4, "id"

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v4

    # setter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mLatestMessageId:J
    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$602(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;J)J

    .line 400
    .end local v0    # "mBody":Ljava/lang/String;
    .end local v1    # "mBodyHtml":Ljava/lang/String;
    .end local v2    # "time":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->showIndicator(Z)V

    .line 401
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v3, p1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->close(Landroid/database/Cursor;)V

    .line 402
    return-void

    .line 388
    .restart local v0    # "mBody":Ljava/lang/String;
    .restart local v1    # "mBodyHtml":Ljava/lang/String;
    .restart local v2    # "time":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->msgBody:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$400(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
